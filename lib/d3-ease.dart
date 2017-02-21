@JS()
library node_modules._types.d3_ease;

import "package:js/js.dart";

/// Type definitions for D3JS d3-ease module 1.0
/// Project: https://github.com/d3/d3-ease/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.1
/// --------------------------------------------------------------------------
/// Easing Functions
/// --------------------------------------------------------------------------
/// Linear easing; the identity function; linear(t) returns t.
@JS()
external num easeLinear(num normalizedTime);

/// Symmetric quadratic easing; scales quadIn for t in [0, 0.5] and quadOut for t in [0.5, 1]. Also equivalent to poly.exponent(2).
@JS()
external num easeQuad(num normalizedTime);

/// Quadratic easing; equivalent to polyIn.exponent(2).
@JS()
external num easeQuadIn(num normalizedTime);

/// Reverse quadratic easing; equivalent to 1 - quadIn(1 - t). Also equivalent to polyOut.exponent(2).
@JS()
external num easeQuadOut(num normalizedTime);

/// Symmetric quadratic easing; scales quadIn for t in [0, 0.5] and quadOut for t in [0.5, 1]. Also equivalent to poly.exponent(2).
@JS()
external num easeQuadInOut(num normalizedTime);

/// Symmetric cubic easing; scales cubicIn for t in [0, 0.5] and cubicOut for t in [0.5, 1]. Also equivalent to poly.exponent(3).
@JS()
external num easeCubic(num normalizedTime);

/// Cubic easing; equivalent to polyIn.exponent(3).
@JS()
external num easeCubicIn(num normalizedTime);

/// Reverse cubic easing; equivalent to 1 - cubicIn(1 - t). Also equivalent to polyOut.exponent(3).
@JS()
external num easeCubicOut(num normalizedTime);

/// Symmetric cubic easing; scales cubicIn for t in [0, 0.5] and cubicOut for t in [0.5, 1]. Also equivalent to poly.exponent(3).
@JS()
external num easeCubicInOut(num normalizedTime);

/// Polynomial easing function factory
@anonymous
@JS()
abstract class PolynomialEasingFactory {
  /// Calculate eased time.
  external num call(num normalizedTime);

  /// Returns a new polynomial easing with the specified exponent e.
  /// If the exponent is not specified, it defaults to 3, equivalent to cubic.
  external PolynomialEasingFactory exponent(num e);
}

/// Symmetric polynomial easing/easing factory; scales polyIn for t in [0, 0.5] and polyOut for t in [0.5, 1].
/// If the exponent is not specified, it defaults to 3, equivalent to cubic.
@JS()
external PolynomialEasingFactory get easePoly;
@JS()
external set easePoly(PolynomialEasingFactory v);

/// Polynomial easing/easing factory; raises t to the specified exponent.
/// If the exponent is not specified, it defaults to 3, equivalent to cubicIn.
@JS()
external PolynomialEasingFactory get easePolyIn;
@JS()
external set easePolyIn(PolynomialEasingFactory v);

/// Reverse polynomial easing/easing factory; equivalent to 1 - polyIn(1 - t).
/// If the exponent is not specified, it defaults to 3, equivalent to cubicOut.
@JS()
external PolynomialEasingFactory get easePolyOut;
@JS()
external set easePolyOut(PolynomialEasingFactory v);

/// Symmetric polynomial easing/easing factory; scales polyIn for t in [0, 0.5] and polyOut for t in [0.5, 1].
/// If the exponent is not specified, it defaults to 3, equivalent to cubic.
@JS()
external PolynomialEasingFactory get easePolyInOut;
@JS()
external set easePolyInOut(PolynomialEasingFactory v);

/// Symmetric sinusoidal easing; scales sinIn for t in [0, 0.5] and sinOut for t in [0.5, 1].
@JS()
external num easeSin(num normalizedTime);

/// Sinusoidal easing; returns sin(t).
@JS()
external num easeSinIn(num normalizedTime);

/// Reverse sinusoidal easing; equivalent to 1 - sinIn(1 - t).
@JS()
external num easeSinOut(num normalizedTime);

/// Symmetric sinusoidal easing; scales sinIn for t in [0, 0.5] and sinOut for t in [0.5, 1].
@JS()
external num easeSinInOut(num normalizedTime);

/// Symmetric exponential easing; scales expIn for t in [0, 0.5] and expOut for t in [0.5, 1].
@JS()
external num easeExp(num normalizedTime);

/// Exponential easing; raises 2 to the exponent 10 * (t - 1).
@JS()
external num easeExpIn(num normalizedTime);

/// Reverse exponential easing; equivalent to 1 - expIn(1 - t).
@JS()
external num easeExpOut(num normalizedTime);

/// Symmetric exponential easing; scales expIn for t in [0, 0.5] and expOut for t in [0.5, 1].
@JS()
external num easeExpInOut(num normalizedTime);

/// Symmetric circular easing; scales circleIn for t in [0, 0.5] and circleOut for t in [0.5, 1].
@JS()
external num easeCircle(num normalizedTime);

/// Circular easing.
@JS()
external num easeCircleIn(num normalizedTime);

/// Reverse circular easing; equivalent to 1 - circleIn(1 - t).
@JS()
external num easeCircleOut(num normalizedTime);

/// Symmetric circular easing; scales circleIn for t in [0, 0.5] and circleOut for t in [0.5, 1].
@JS()
external num easeCircleInOut(num normalizedTime);

/// Reverse bounce easing; equivalent to 1 - bounceIn(1 - t).
@JS()
external num easeBounce(num normalizedTime);

/// Bounce easing, like a rubber ball.
@JS()
external num easeBounceIn(num normalizedTime);

/// Reverse bounce easing; equivalent to 1 - bounceIn(1 - t).
@JS()
external num easeBounceOut(num normalizedTime);

/// Symmetric bounce easing; scales bounceIn for t in [0, 0.5] and bounceOut for t in [0.5, 1].
@JS()
external num easeBounceInOut(num normalizedTime);

/// Anticipatory easing function factory
@anonymous
@JS()
abstract class BackEasingFactory {
  /// Calculate eased time.
  external num call(num normalizedTime);

  /// Returns a new back easing with the specified overshoot s.
  /// The degree of overshoot is configurable; if not specified, it defaults to 1.70158.
  external BackEasingFactory overshoot(num s);
}

/// Symmetric anticipatory easing; scales backIn for t in [0, 0.5] and backOut for t in [0.5, 1].
/// The degree of overshoot is configurable; it not specified, it defaults to 1.70158.
@JS()
external BackEasingFactory get easeBack;
@JS()
external set easeBack(BackEasingFactory v);

/// Anticipatory easing, like a dancer bending his knees before jumping off the floor.
/// The degree of overshoot is configurable; it not specified, it defaults to 1.70158.
@JS()
external BackEasingFactory get easeBackIn;
@JS()
external set easeBackIn(BackEasingFactory v);

/// Reverse anticipatory easing; equivalent to 1 - backIn(1 - t).
/// The degree of overshoot is configurable; it not specified, it defaults to 1.70158.
@JS()
external BackEasingFactory get easeBackOut;
@JS()
external set easeBackOut(BackEasingFactory v);

/// Symmetric anticipatory easing; scales backIn for t in [0, 0.5] and backOut for t in [0.5, 1].
/// The degree of overshoot is configurable; it not specified, it defaults to 1.70158.
@JS()
external BackEasingFactory get easeBackInOut;
@JS()
external set easeBackInOut(BackEasingFactory v);

/// Elastic easing function factory
@anonymous
@JS()
abstract class ElasticEasingFactory {
  /// Calculate eased time.
  external num call(num normalizedTime);

  /// Returns a new elastic easing with the specified amplitude a.
  /// Defaults to 1,if not specified.
  external ElasticEasingFactory amplitude(num a);

  /// Returns a new elastic easing with the specified amplitude a.
  /// Defaults to 0.3,if not specified.
  external ElasticEasingFactory period(num p);
}

/// Reverse elastic easing; equivalent to 1 - elasticIn(1 - t).
/// The amplitude and period of the oscillation are configurable;
/// if not specified, they default to 1 and 0.3, respectively.
@JS()
external ElasticEasingFactory get easeElastic;
@JS()
external set easeElastic(ElasticEasingFactory v);

/// Elastic easing, like a rubber band.
/// The amplitude and period of the oscillation are configurable;
/// if not specified, they default to 1 and 0.3, respectively.
@JS()
external ElasticEasingFactory get easeElasticIn;
@JS()
external set easeElasticIn(ElasticEasingFactory v);

/// Reverse elastic easing; equivalent to 1 - elasticIn(1 - t).
/// The amplitude and period of the oscillation are configurable;
/// if not specified, they default to 1 and 0.3, respectively.
@JS()
external ElasticEasingFactory get easeElasticOut;
@JS()
external set easeElasticOut(ElasticEasingFactory v);

/// Symmetric elastic easing; scales elasticIn for t in [0, 0.5] and elasticOut for t in [0.5, 1].
/// The amplitude and period of the oscillation are configurable;
/// if not specified, they default to 1 and 0.3, respectively.
@JS()
external ElasticEasingFactory get easeElasticInOut;
@JS()
external set easeElasticInOut(ElasticEasingFactory v);

