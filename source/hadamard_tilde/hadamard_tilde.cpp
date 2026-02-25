/// @file
///	@ingroup 	ddgg
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "c74_min_api.h"
#include <cstddef>
// #include "../shared/signal_routing_objects.h"
// #include "c74_min_atom.h"
// #include <memory>


class hadamard : public c74::min::object<hadamard>, public c74::min::vector_operator<> {
private: 
	std::vector<std::unique_ptr<c74::min::inlet<>>> m_inlets;
	std::vector<std::unique_ptr<c74::min::outlet<>>> m_outlets;
public:
	MIN_DESCRIPTION {"Walsh-Hadamard Transform"};
	MIN_TAGS {"audio, processing"};
	MIN_AUTHOR {"Davide Gagliardi, Davide Bardi"};

	int m_channels = 0;

	hadamard(const c74::min::atoms& args = {}) {
		if(args.size() > 0) {
			m_channels = args[0];	
		} else {
			m_channels = 4;
		}
		auto inlet_count = m_channels;
		auto outlet_count = m_channels;

		for (auto i = 0; i < int(inlet_count); ++i) {
			    auto an_inlet = std::make_unique<c74::min::inlet<>>(this, "(signal) an input channel", "signal");
				auto an_outlet = std::make_unique<c74::min::outlet<>>(this, "(signal) an outputchannel", "signal");
				m_inlets.push_back(std::move(an_inlet));
				m_outlets.push_back(std::move(an_outlet));
		}	
	}

	~hadamard() {}

	c74::min::message<> dspsetup { this, "dspsetup", 
    MIN_FUNCTION {
			c74::min::number samplerate = args[0];
			int vectorsize = args[1];
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
};

MIN_EXTERNAL(hadamard);
