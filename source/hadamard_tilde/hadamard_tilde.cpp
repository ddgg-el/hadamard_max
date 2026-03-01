/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"
#include "c74_min_logger.h"
#include "ext_common.h"

class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
private:
	// all these members are used in attribute<> normalized setter, hence they need to be initialized first
	bool m_initialized = false;
	double m_norm = 1.0; 
	int m_order = 1;
	int m_channels = static_cast<int>(pow(2, m_order)) ; // could be fix
	std::unique_ptr<c74::min::outlet<>> m_status_outlet;

	void setNorm(bool normalized) {
		m_norm = normalized ? 1.0 / std::sqrt(static_cast<double>(m_channels)) : 1.0;
	}

public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform Object"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi - Davide Bardi"};
	/**
	 * @brief first object's argument -> order (int) | range (0 - 7) see constructor
	 */
	c74::min::argument<c74::min::number> order_arg { this, "order", "Order of the matrix.", true};

	/**
	 * @brief @normalized 0|1 default 0 (no normalization)
	 */
	c74::min::attribute<bool> normalized { this, 
		"normalized", true,
		c74::min::description { "Normalize the output by 1 / sqrt(num_channels)" },
		c74::min::setter { MIN_FUNCTION {
			if(initialized()){
				int a = args[0];
				setNorm((bool)CLAMP(a, 0, 1));
			}
        	return args;
		 }}
	};

	c74::min::attribute<bool> clip_output { this, "clip_output", false,
		c74::min::description { "Clip the output values between -1 and 1" },
	};

	/**
	 * @brief Construct a new hadamard object
	 * 
	 * @param args (only one int (order) expected)
	 */
	hadamard(const c74::min::atoms& args = {}) {
		if(args.size() > 0) {
			m_order = static_cast<int>(args[0]);	
		} else {
			if(!c74::min::dummy()) {
				cwarn << "Argument `order` not specified. Keeping it default to " << m_order << c74::min::endl; 
			}
		}

		if(m_order > 7) {
			cwarn << "Order too high! clamping at 7" << c74::min::endl;
			m_order = 7;
		} else if(m_order < 1) {
			cwarn << "Order lower than 1! Setting it back to default ( " << m_order << " )" << c74::min::endl;
			m_order = 1;
		}
	
		m_channels = static_cast<int>(pow(2, m_order));
		m_frame.assign(m_channels, 0.0);
		m_coeffs.assign(m_channels, 1.0);

		for (auto i = 0; i < m_channels; ++i) {
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) input channel " + std::to_string(i + 1), "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) output channel " + std::to_string(i + 1), "signal");
				m_inlets.push_back(std::move(an_inlet));
				m_outlets.push_back(std::move(an_outlet));
		}

		m_status_outlet = std::make_unique<c74::min::outlet<>>( this, "(anything) dump outlet"); 
		setNorm(normalized);
		m_initialized = true;
	}

	/**
	 * @brief Deconstructor UNUSED
	 */ 
	~hadamard() {}

	c74::min::message<> input_coeffs { this, "input_coeffs", "Scale the input signals by a scalar. Sending this message will cause the dump outlet to output the value of the coefficients", 
		MIN_FUNCTION {
			if(args.empty() || !m_initialized) return {};
			if(args.size() > m_channels) {
				int additional_coeffs = args.size() - m_channels;
				cwarn << "List too long. Ignoring last ";
				cwarn << (additional_coeffs == 1 ? "coefficient" : std::to_string(additional_coeffs) + " coefficients") << c74::min::endl;
			}
			for (int ch = 0; ch < m_coeffs.size(); ++ch) {
				if(ch < args.size()) {
					m_coeffs[ch] = args[ch];
				} else {
					cwarn << "Missing coefficient for input channel " << ch+1 << ". Setting it to 0" << c74::min::endl;
					m_coeffs[ch] = 0.0;
				}
			}
			dump_coeffs();
			return {};
		}
	};

	c74::min::message<> reset_coeffs { this, "reset_coeffs", "Set all the input coefficients to 1. Sending this message will cause the dump outlet to output the value of the coefficients", 
		MIN_FUNCTION {
			for (int ch = 0; ch < m_coeffs.size(); ++ch) {
				m_coeffs[ch] = 1.0;
			}
			dump_coeffs();
			return {};
		}
	};

	c74::min::message<> dump { this, "dump", "output the state of the object from the dump outlet", 
		MIN_FUNCTION{
			dump_coeffs();
			return {};
		}
	};

	/**
	* @brief (called when when Max compiles the signal chain)
	* UNUSED
	 */
	c74::min::message<> dspsetup { this, "dspsetup", 
    MIN_FUNCTION {
			samplerate(args[0]);
			vector_size(args[1]);
			return {};
		}
	};	

	/**
	 * @brief Audio loop
	 * 
	 * @param input 
	 * @param output
	 */
	void operator()(c74::min::audio_bundle input, c74::min::audio_bundle output) {
		for(auto sample = 0; sample < output.frame_count(); ++sample) {
			for (auto ch = 0; ch < output.channel_count(); ++ch) {
				m_frame[ch] = input.samples(ch)[sample] * m_coeffs[ch];
			}

			fwht(m_frame.data(), output.channel_count());

			for (auto ch = 0; ch < output.channel_count(); ++ch) {
				double sample_out = m_frame[ch] * m_norm;
				if(clip_output) {
					output.samples(ch)[sample] = CLAMP(sample_out, -1.0, 1.0);
				} else {
					output.samples(ch)[sample] = sample_out;
				}
			}
		}
	}
private: 
	/**
	 * @brief Fast Walsh-Hadamard Transform
	 * 
	 * @param a matrix audio input vector 
	 * @param n the size of the vector (n_channels)
	 */
	void fwht(double *a, size_t n) {
		for (size_t h=1; h < n; h *= 2){
			for (size_t i = 0; i < n; i += h*2) {
				for (size_t j = i; j < i+h; j++) {
					double x = a[j];
					double y = a[j+h];
					a[j] = x + y;
					a[j+h] = x - y;
				}
			}
		}
	}

	void dump_coeffs() {
		c74::min::atoms coeff_list;
			coeff_list.push_back("input_coeffs");
			for (auto coeff : m_coeffs) {
				coeff_list.push_back(coeff);
			}
			
			m_status_outlet->send(coeff_list);
	}
	/**
	 * @brief inlets and outlets
	 */
	std::vector<std::unique_ptr<c74::min::inlet<>>> m_inlets;
	std::vector<std::unique_ptr<c74::min::outlet<>>> m_outlets;
	/**
	 * @brief an `audio_bundle.samples()` (see #`operator()`) has the shape:
	 
	 `[ch1[s1,s2,s3....], ch2[s1,s2,s3...], ch3[s1,s2,s3...]...]`
	 
	 but the matrix need one sample from each channel at a time:
	 ```[ch1[s1], ch2[s1], ch3[s1]...]
	 [ch1[s2], ch2[s2], ch3[s3]...]```
	 
	 * `m_frame` holds these arrays
	 * 
	 */
	std::vector<double> m_frame;
	std::vector<double> m_coeffs;

};

MIN_EXTERNAL(hadamard);
