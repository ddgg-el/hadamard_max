/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"

// callback for Max's call to 'multichanneloutputs' (max-sdk style)
long hadamard_multichanneloutputs(c74::max::t_object* x);

class mc_hadamard : public c74::min::object<mc_hadamard>, public c74::min::mc_operator<> {
private:
	// all these members are used in attribute<> normalized setter, hence they need to be initialized first
	bool m_initialized = false;  
	double m_norm = 1.0; 
	int m_order = 1;

	void setNorm(bool normalized) {
		m_norm = normalized ? 1.0 / std::sqrt(static_cast<double>(m_channels)) : 1.0;
	}

public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform Object"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi - Davide Bardi"};

	
	int m_channels = static_cast<int>(pow(2, m_order)) ; // could be fix

	/**
	 * @brief multichannel IO
	 */
	c74::min::inlet<> m_inlet { this, "(multichannelsignal) input"};
	c74::min::outlet<> m_outlet { this, "(multichannelsignal) output", "multichannelsignal"};

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
	mc_hadamard(const c74::min::atoms& args = {}) {
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

		m_initialized = true;
	}

	/**
	 * @brief Deconstructor UNUSED
	 */ 
	~mc_hadamard() {}

	/**
	 * @brief callback for message | normalize $1 | from Max
	 * (an alternative to set the normalized attribute)
	 */
	c74::min::message<> normalize { this, "normalize", "Normalize the matrix output values. The message value should be wither 1 or 0.", 
		MIN_FUNCTION {
			if(args.empty()) return {};
			int a = args[0];
			setNorm((bool)CLAMP(a, 0, 1));
			return {};
		}
	};

	/**
	 * @brief max-sdk style 'class_setup' implementation to add the 'multichanneloutputs' method
	 */
	c74::min::message<> maxclass_setup { this, "maxclass_setup", 
		MIN_FUNCTION {
			UNUSED(this);   // silences compiler warning since we don't access class members
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(hadamard_multichanneloutputs),
                "multichanneloutputs", c74::max::A_CANT, 0);
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
				if(ch < input.channel_count()) {
					m_frame[ch] = input.samples(ch)[sample];
				} else {
					m_frame[ch] = 0;
				}
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

/**
 * @brief Notify the number of output channel 
 * 
 * @param x a t_class* to the mc.hadamard~ instance
 * @param index the outlet index

 * @return long 
 */
long hadamard_multichanneloutputs(c74::max::t_object* x) {
	auto* wrapper = reinterpret_cast<c74::min::minwrap<mc_hadamard>*>(x);
	return wrapper->m_min_object.m_channels;
};

MIN_EXTERNAL(mc_hadamard);

