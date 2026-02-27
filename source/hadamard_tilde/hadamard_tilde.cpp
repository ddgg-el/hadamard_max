/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"
#include "c74_min_doc.h"
#include <cstddef>
#include <string>
#include <vector>


class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
private:
	// all these members are used in attribute<> normalized setter, hence they need to be initialized first
	bool m_initialized = false;  
	double m_norm = 1.0; 
	int m_order = 1;
	int m_channels = static_cast<int>(pow(2, m_order)) ; // could be fix

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
		"normalized", false,
		c74::min::description { "Normalize the output by 1 / sqrt(num_channels)" },
		c74::min::setter { MIN_FUNCTION {
			if(initialized()){
				int a = args[0];
				setNorm((bool)CLAMP(a, 0, 1));
			}
        	return args;
		 }}
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

		for (auto i = 0; i < m_channels; ++i) {
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) input channel " + std::to_string(i + 1), "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) output channel " + std::to_string(i+1), "signal");
				m_inlets.push_back(std::move(an_inlet));
				m_outlets.push_back(std::move(an_outlet));
		}

		m_initialized = true;
	}

	/**
	 * @brief Deconstructor UNUSED
	 */ 
	~hadamard() {}

	/**
	 * @brief callback for message | normalize $1 | from Max
	 * (an alternative to set the normalized attribute)
	 */
	c74::min::message<> normalize { this, "normalize", "Normalize the matrix output values. The message value should be wither 1 or 0.", c74::min::message_type::int_argument, 
		MIN_FUNCTION {
			if(args.empty()) return {};
			int a = args[0];
			setNorm((bool)CLAMP(a, 0, 1));
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
				m_frame[ch] = input.samples(ch)[sample] * 0.5;
			}

			fwht(m_frame.data(), output.channel_count());

			for (auto ch = 0; ch < output.channel_count(); ++ch) {
				output.samples(ch)[sample] = m_frame[ch] * m_norm;
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

};

MIN_EXTERNAL(hadamard);
