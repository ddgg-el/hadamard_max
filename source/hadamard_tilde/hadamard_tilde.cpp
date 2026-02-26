/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"
#include <cstddef>
#include <vector>


class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
private:
	// all these members are used in attribute<> normalized setter, hence they need to be initialized first
	bool m_initialized = false; // used in  
	double m_norm = 1.0 ; // used in attribute<> normalized setter 
	int m_order = 1; // used to calculate m_channels
	int m_channels = static_cast<int>(pow(2, m_order)) ; //used in attribute<bool> normalized setter

	void setNorm(bool normalized) {
		m_norm = normalized ? 1.0 / std::sqrt(static_cast<double>(m_channels)) : 1.0;
	}

public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform Object"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi - Davide Bardi"};

	/**
	 * @brief first object's argument -> order (int) | range (0 - 7) see constructor for the logic
	 */
	c74::min::argument<c74::min::number> order_arg { this, "order", "Order of the matrix", true};

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
		cout << "CONSTRUCTOR!" << c74::min::endl;
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
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) an input channel", "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) an outputchannel", "signal");
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
	c74::min::message<> normalize { this, "normalize", "Normalize the output values", 
		MIN_FUNCTION {
			cout << "normalize message!" << c74::min::endl;
			if(args.empty()) return {};
			int a = args[0];
			setNorm((bool)CLAMP(a, 0, 1));
			return {};
		}
	};

	/**
	* @brief // UNUSED
	* (called when when Max compiles the signal chain)
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
				m_frame[ch] = input.samples(ch)[sample];
			}

			fwht(m_frame.data(), output.channel_count());

			for (auto ch = 0; ch < output.channel_count(); ++ch) {
				output.samples(ch)[sample] = m_frame[ch] * m_norm;
			}
		}
	}
private: 

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

	std::vector<std::unique_ptr<c74::min::inlet<>>> m_inlets;
	std::vector<std::unique_ptr<c74::min::outlet<>>> m_outlets;
	std::vector<double> m_frame;

};

MIN_EXTERNAL(hadamard);
