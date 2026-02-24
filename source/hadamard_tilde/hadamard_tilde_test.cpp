/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min_unittest.h"   // required unit test header
#include "hadamard_tilde.cpp"        // need the source of our object so that we can access it

using namespace c74::min;

// Unit tests are written using the Catch framework as described at
// https://github.com/philsquared/Catch/blob/master/docs/tutorial.md

SCENARIO("object produces correct output") {
	ext_main(nullptr);    // every unit test must call ext_main() once to configure the class

	GIVEN("An instance of hadamard~") {

		c74::min::test_wrapper<hadamard> an_instance;
		hadamard&              my_object = an_instance;

		// check that default attr values are correct

		REQUIRE((my_object.m_channels == number(4)));    // note: symbols can be compared with strings

		// now proceed to testing various sequences of events

		WHEN("the defaults are used") {
			THEN("the output is equal-power") {

				// args are the audio inputs: source-1, source-2, and position (optional)

				// auto result = my_object(1.0);

				// the default mode is 'fast', which means a 512-point lookup table is used
				// thus we have 9-bits of resolution and the quantization error for that is -56 dB
				// which calculates out to approx 0.00195 -- so we use that as epsilon
				// to determine the amount of acceptable deviation in our check below

				// REQUIRE(result[0] == Approx(std::sqrt(2.0) / 2.0).epsilon(0.00195));
				// REQUIRE(result[1] == Approx(std::sqrt(2.0) / 2.0).epsilon(0.00195));
			}
		}

		AND_WHEN("The mode is set to 'precision'") {
			THEN("the results are more accurate") {

				// set attributes, including symbol attributes, by simply assigning them

				// my_object.mode = "precision";

				// auto result = my_object(1.0);

				// // and now we don't need to define a custom epsilon because there is no quantization error

				// REQUIRE(result[0] == Approx(std::sqrt(2.0) / 2.0));
				// REQUIRE(result[1] == Approx(std::sqrt(2.0) / 2.0));
			}
			AND_THEN("due to quantization of the lookup table 'precision' won't be the same as 'fast'") {

				// this is a way we can check that the object is actually doing something different
				// internally when we change the attribute value

				// my_object.mode        = "precision";
				// auto result_precision = my_object(1.0)[0];

				// my_object.mode   = "fast";
				// auto result_fast = my_object(1.0)[0];

				// REQUIRE(result_precision != Approx(result_fast));
			}
		}

		AND_WHEN("The shape is set to 'linear'") {
			THEN("we produce a roughly -6db downpoint in the middle of the fade for both 'fast' and 'precision' modes") {

				// hadamard a_new_hadamard_object;    // make a fresh object so we don't rely on some messy state from above

				// a_new_hadamard_object.shape    = "linear";
				// a_new_hadamard_object.mode     = "precision";
				// a_new_hadamard_object.position = 0.5;

				// auto result = a_new_hadamard_object(1.0);

				// REQUIRE(result[0] == Approx(0.5));
				// REQUIRE(result[1] == Approx(0.5));


				// a_new_hadamard_object.mode = "fast";

				// auto result_b = a_new_hadamard_object(1.0);

				// REQUIRE(result_b[0] == Approx(0.5).epsilon(std::numeric_limits<float>::epsilon()*100000));
				// REQUIRE(result_b[1] == Approx(0.5).epsilon(std::numeric_limits<float>::epsilon()*100000));
			}
		}
	}
}
