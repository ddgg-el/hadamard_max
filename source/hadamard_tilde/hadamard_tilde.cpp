/// @file
///	@ingroup 	processing
///	@copyright	Copyright 2026 The Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"


class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform Object"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi - Davide Bardi"};

	c74::min::argument<c74::min::number> order_arg { this, " matrix order", "Order of the matrix", true};

	hadamard(const c74::min::atoms& args = {}) {
		c74::min::error(args.size() < 1 && !c74::min::dummy(), "hadamard~: Missing argument `order`");
	
		m_order = static_cast<int>(args[0]);	
		if(m_order > 7) {
			cwarn << "Order too high! clamping at 7" << c74::min::endl;
			m_order = 7;
		} else if(m_order < 0) {
			cwarn << "Order cannot be negative! Setting it to 0" << c74::min::endl;
			m_order = 1;
		}
	

		int n_channels = static_cast<int>(pow(2, m_order));

		for (auto i = 0; i < n_channels; ++i) {
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) an input channel", "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) an outputchannel", "signal");
				m_inlets.push_back(std::move(an_inlet));
				m_outlets.push_back(std::move(an_outlet));
		}	
	}

	~hadamard() {}

	c74::min::message<> dspsetup { this, "dspsetup", 
    MIN_FUNCTION {
			this->samplerate(args[0]);
			this->vector_size(args[1]);
			return {};
		}
	};	


	void operator()(c74::min::audio_bundle input, c74::min::audio_bundle output) {
		for(auto ch = 0; ch < output.channel_count(); ++ch) {
			auto in = input.samples(ch);
			auto out = output.samples(ch);
			for (auto sample = 0; sample < output.frame_count(); ++sample) {
				out[sample] = in[sample];
			}
		}
	}
private: 
	std::vector<std::unique_ptr<c74::min::inlet<>>> m_inlets;
	std::vector<std::unique_ptr<c74::min::outlet<>>> m_outlets;
	int m_order = 0;
};

MIN_EXTERNAL(hadamard);
