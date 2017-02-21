@JS()
library node_modules._types.d3_random;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-random module v1.0.1
/// Project: https://github.com/d3/d3-random/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Returns a function for generating random numbers with a uniform distribution).
/// The minimum allowed value of a returned number is min, and the maximum is max.
/// If min is not specified, it defaults to 0; if max is not specified, it defaults to 1.
@JS()
external Func0<num> randomUniform([num min, num max]);

/// Returns a function for generating random numbers with a normal (Gaussian) distribution.
/// The expected value of the generated numbers is mu, with the given standard deviation sigma.
/// If mu is not specified, it defaults to 0; if sigma is not specified, it defaults to 1.
@JS()
external Func0<num> randomNormal([num mu, num sigma]);

/// Returns a function for generating random numbers with a log-normal distribution. The expected value of the random variable’s natural logrithm is mu,
/// with the given standard deviation sigma. If mu is not specified, it defaults to 0; if sigma is not specified, it defaults to 1.
@JS()
external Func0<num> randomLogNormal([num mu, num sigma]);

/// Returns a function for generating random numbers with a Bates distribution with n independent variables.
@JS()
external Func0<num> randomBates(num n);

/// Returns a function for generating random numbers with an Irwin–Hall distribution with n independent variables.
@JS()
external Func0<num> randomIrwinHall(num n);

/// Returns a function for generating random numbers with an exponential distribution with the rate lambda;
/// equivalent to time between events in a Poisson process with a mean of 1 / lambda.
@JS()
external Func0<num> randomExponential(num lambda);

