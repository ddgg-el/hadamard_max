/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"
#include "c74_min_logger.h"
#include <cstddef>
#include <vector>


class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform Object"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi - Davide Bardi"};

	c74::min::argument<c74::min::number> order_arg { this, " matrix order", "Order of the matrix", true};

	hadamard(const c74::min::atoms& args = {}) {
		
		if(args.size() > 0) {
			m_order = static_cast<int>(args[0]);	
		} else {
			cwarn << "Argument `order` not specified. Keeping it default to " << m_order << c74::min::endl; 
		}
		if(m_order > 7) {
			cwarn << "Order too high! clamping at 7" << c74::min::endl;
			m_order = 7;
		} else if(m_order < 1) {
			cwarn << "Order lower than 1! Setting it back to default ( " << m_order << " )" << c74::min::endl;
			m_order = 1;
		}
	

		m_channels = static_cast<int>(pow(2, m_order));

		for (auto i = 0; i < m_channels; ++i) {
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) an input channel", "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) an outputchannel", "signal");
				m_inlets.push_back(std::move(an_inlet));
				m_outlets.push_back(std::move(an_outlet));
		}

		m_frame.assign(m_channels, 0.0);
		m_norm = 1.0 / std::sqrt(m_channels);
	}

	~hadamard() {}

	c74::min::message<> dspsetup { this, "dspsetup", 
    MIN_FUNCTION {
			samplerate(args[0]);
			vector_size(args[1]);
			return {};
		}
	};	


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
		for (int i = 0; i < n; i++){
			a[i] = a[i]*(1/pow(2,log2f(n)-1));
		}
	}

	std::vector<std::unique_ptr<c74::min::inlet<>>> m_inlets;
	std::vector<std::unique_ptr<c74::min::outlet<>>> m_outlets;
	int m_order { 1 };
	int m_channels { 2 };
	std::vector<double> m_frame;
	double m_norm { 0.0 };

};

MIN_EXTERNAL(hadamard);
