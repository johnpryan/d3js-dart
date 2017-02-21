@JS()
library node_modules._types.d3_scale;

import "package:js/js.dart";
import "package:func/func.dart";
import "dart:html" show Range;
import "d3-time.dart" show TimeInterval, CountableTimeInterval;

/// Type definitions for D3JS d3-scale module 1.0
/// Project: https://github.com/d3/d3-scale/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.4
/// -------------------------------------------------------------------------------
/// Shared Types and Interfaces
/// -------------------------------------------------------------------------------
/// An Interpolator factory returns an interpolator function.
/// The first generic correponds to the data type of the interpolation boundaries.
/// The second generic corresponds to the data type of the return type of the interpolator.
/// This is a base interface to be extended, hence the suppression of the warning
/// tslint:disable-next-line:callable-types
typedef Func1<num, U> InterpolatorFactory<T, U>(T a, T b);

/// A helper interface for a continuous scale defined over a numeric domain.
@anonymous
@JS()
abstract class ScaleContinuousNumeric<Range, Output> {
  /// Given a value from the domain, returns the corresponding value from the range, subject to interpolation, if any.
  /// If the given value is outside the domain, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the range.
  /// Note: The interpolation function applied by the scale may change the output type from the range type as part of the interpolation.
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Given a value from the range, returns the corresponding value from the domain. Inversion is useful for interaction,
  /// say to determine the data value corresponding to the position of the mouse.
  /// If the given value is outside the range, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the domain.
  /// IMPORTANT: This method is only supported if the range is numeric. If the range is not numeric, returns NaN.
  /// For a valid value y in the range, continuous(continuous.invert(y)) approximately equals y;
  /// similarly, for a valid value x in the domain, continuous.invert(continuous(x)) approximately equals x.
  /// The scale and its inverse may not be exact due to the limitations of floating point precision.
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns a copy of the scale’s current domain.
  /*external List<num> domain();*/
  /// Sets the scale’s domain to the specified array of numbers. The array must contain two or more elements.
  /// If the elements in the given array are not numbers, they will be coerced to numbers
  /// Although continuous scales typically have two values each in their domain and range, specifying more than two values produces a piecewise scale.
  /// Internally, a piecewise scale performs a binary search for the range interpolator corresponding to the given domain value.
  /// Thus, the domain must be in ascending or descending order. If the domain and range have different lengths N and M, only the first min(N,M) elements in each are observed.
  /*external ScaleContinuousNumeric domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleContinuousNumeric*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);

  /// Returns a copy of the scale’s current range.
  /*external List<Range> range();*/
  /// Sets the scale’s range to the specified array of values.
  /// The array must contain two or more elements. Unlike the domain, elements in the given array need not be numbers;
  /// any value that is supported by the underlying interpolator will work, though note that numeric ranges are required for invert.
  /*external ScaleContinuousNumeric range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleContinuousNumeric*/ range(
      [List<Range> range]);

  /// Sets the scale’s range to the specified array of values while also setting the scale’s interpolator to interpolateRound.
  /// The rounding interpolator is sometimes useful for avoiding antialiasing artifacts,
  /// though also consider the shape-rendering “crispEdges” styles. Note that this interpolator can only be used with numeric ranges.
  /// The array must contain two or more elements. Unlike the domain, elements in the given array need not be numbers;
  /// any value that is supported by the underlying interpolator will work, though note that numeric ranges are required for invert.
  external ScaleContinuousNumeric rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);

  /// Returns whether or not the scale currently clamps values to within the range.
  /*external bool clamp();*/
  /// Enables or disables clamping, respectively. If clamping is disabled and the scale is passed a value outside the domain,
  /// the scale may return a value outside the range through extrapolation.
  /// If clamping is enabled, the return value of the scale is always within the scale’s range. Clamping similarly applies to the "invert" method.
  /*external ScaleContinuousNumeric clamp(bool clamp);*/
  external dynamic /*bool|ScaleContinuousNumeric*/ clamp([bool clamp]);

  /// Returns approximately count representative values from the scale’s domain.
  /// If count is not specified, it defaults to 10.
  /// The returned tick values are uniformly spaced, have human-readable values (such as multiples of powers of 10),
  /// and are guaranteed to be within the extent of the domain. Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// The specified count is only a hint; the scale may return more or fewer values depending on the domain. See also d3-array’s ticks.
  external List<num> ticks([num count]);

  /// Returns a number format function suitable for displaying a tick value, automatically computing the appropriate precision based on the fixed interval between tick values.
  /// The specified count should have the same value as the count that is used to generate the tick values.
  /// If specifier uses the format type "s", the scale will return a SI-prefix format based on the largest value in the domain.
  /// If the specifier already specifies a precision, this method is equivalent to locale.format.
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);

  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// An optional tick count argument allows greater control over the step size used to extend the bounds,
  /// guaranteeing that the returned ticks will exactly cover the domain.
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [0.201479…, 0.996679…], a nice domain might be [0.2, 1.0].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /// Nicing a scale only modifies the current domain; it does not automatically nice domains that are subsequently set using continuous.domain.
  /// You must re-nice the scale after setting the new domain, if desired.
  external ScaleContinuousNumeric nice([num count]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleContinuousNumeric copy();
}

/// -------------------------------------------------------------------------------
/// Linear Scale Factory
/// -------------------------------------------------------------------------------
/// A linear continuous scale defined over a numeric domain.
/// Continuous scales map a continuous, quantitative input domain to a continuous output range.
/// Each range value y can be expressed as a function of the domain value x: y = mx + b.
/// If the range is also numeric, the mapping may be inverted.
/// Note that the data types of the range and output of the scale must be compatible with the interpolator applied by the scale.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
@anonymous
@JS()
abstract class ScaleLinear<Range, Output>
    implements ScaleContinuousNumeric<Range, Output> {
  /// Returns the scale’s current interpolator factory, which defaults to interpolate.
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /*external ScaleLinear interpolate(
    InterpolatorFactory<Range, Output> interpolate);*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /// The generic "NewOutput" can be used to change the scale to have a different output element type corresponding to the new interpolation factory.
  /*external ScaleLinear<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleLinear|ScaleLinear<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);
}

/// Constructs a new continuous linear scale with the unit domain [0, 1], the unit range [0, 1], the default interpolator and clamping disabled.
/// The scale will have range and output of data type number.
/*external ScaleLinear<num, num> scaleLinear();*/
/// Constructs a new continuous linear scale with the unit domain [0, 1], the default interpolator and clamping disabled.
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleLinear<Output,Output> scaleLinear<Output>();*/
/// Constructs a new continuous linear scale with the unit domain [0, 1], the default interpolator and clamping disabled.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleLinear<Range,Output> scaleLinear<Range, Output>();*/
@JS()
external ScaleLinear /*ScaleLinear<num,num>|ScaleLinear<Output,Output>|ScaleLinear<Range,Output>*/ scaleLinear/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Power Scale Factories
/// -------------------------------------------------------------------------------
/// A continuous power scale defined over a numeric domain.
/// Continuous scales map a continuous, quantitative input domain to a continuous output range.
/// Each range value y can be expressed as a function of the domain value x: y = mx^k + b, where k is the exponent value.
/// Power scales also support negative domain values, in which case the input value and the resulting output value are multiplied by -1.
/// If the range is also numeric, the mapping may be inverted.
/// Note that the data types of the range and output of the scale must be compatible with the interpolator applied by the scale.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
@anonymous
@JS()
abstract class ScalePower<Range, Output>
    implements ScaleContinuousNumeric<Range, Output> {
  /// Returns the scale’s current interpolator factory, which defaults to interpolate.
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /*external ScalePower interpolate(InterpolatorFactory<Range, Output> interpolate);*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /// The generic "NewOutput" can be used to change the scale to have a different output element type corresponding to the new interpolation factory.
  /*external ScalePower<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScalePower|ScalePower<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);

  /// If exponent is not specified, returns the current exponent, which defaults to 1.
  /// (Note that this is effectively a linear scale until you set a different exponent.)
  /*external num exponent();*/
  /// Sets the current exponent to the given numeric value.
  /// (Note that this is effectively a linear scale until you set a different exponent.)
  /*external ScalePower exponent(num exponent);*/
  external dynamic /*num|ScalePower*/ exponent([num exponent]);
}

/// Constructs a new continuous power scale with the unit domain [0, 1], the unit range [0, 1], the exponent 1, the default interpolator and clamping disabled.
/// (Note that this is effectively a linear scale until you set a different exponent.)
/// The scale will have range and output of data type number.
/*external ScalePower<num, num> scalePow();*/
/// Constructs a new continuous power scale with the unit domain [0, 1], the exponent 1, the default interpolator and clamping disabled.
/// (Note that this is effectively a linear scale until you set a different exponent.)
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScalePower<Output,Output> scalePow<Output>();*/
/// Constructs a new continuous power scale with the unit domain [0, 1], the exponent 1, the default interpolator and clamping disabled.
/// (Note that this is effectively a linear scale until you set a different exponent.)
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScalePower<Range,Output> scalePow<Range, Output>();*/
@JS()
external ScalePower /*ScalePower<num,num>|ScalePower<Output,Output>|ScalePower<Range,Output>*/ scalePow/*<Output, Range>*/();

/// Constructs a new continuous power scale with the unit domain [0, 1], the unit range [0, 1], the exponent 0.5, the default interpolator and clamping disabled.
/// This is a convenience method equivalent to d3.scalePow().exponent(0.5).
/// The scale will have range and output of data type number.
/*external ScalePower<num, num> scaleSqrt();*/
/// Constructs a new continuous power scale with the unit domain [0, 1], the exponent 0.5, the default interpolator and clamping disabled.
/// This is a convenience method equivalent to d3.scalePow().exponent(0.5).
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScalePower<Output,Output> scaleSqrt<Output>();*/
/// Constructs a new continuous power scale with the unit domain [0, 1], the exponent 0.5, the default interpolator and clamping disabled.
/// This is a convenience method equivalent to d3.scalePow().exponent(0.5).
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScalePower<Range,Output> scaleSqrt<Range, Output>();*/
@JS()
external ScalePower /*ScalePower<num,num>|ScalePower<Output,Output>|ScalePower<Range,Output>*/ scaleSqrt/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Logarithmic Scale Factory
/// -------------------------------------------------------------------------------
/// A continuous logarithmic scale defined over a numeric domain.
/// Continuous scales map a continuous, quantitative input domain to a continuous output range.
/// The mapping to the range value y can be expressed as a function of the domain value x: y = m log(x) + b.
/// As log(0) = -∞, a log scale domain must be strictly-positive or strictly-negative; the domain must not include or cross zero.
/// A log scale with a positive domain has a well-defined behavior for positive values, and a log scale with a negative domain has a well-defined behavior for negative values.
/// (For a negative domain, input and output values are implicitly multiplied by -1.)
/// The behavior of the scale is undefined if you pass a negative value to a log scale with a positive domain or vice versa.
/// If the range is also numeric, the mapping may be inverted.
/// Note that the data types of the range and output of the scale must be compatible with the interpolator applied by the scale.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
@anonymous
@JS()
abstract class ScaleLogarithmic<Range, Output>
    implements ScaleContinuousNumeric<Range, Output> {
  /// Returns a copy of the scale’s current domain.
  /*external List<num> domain();*/
  /// Sets the scale’s domain to the specified array of numbers. The array must contain two or more elements.
  /// If the elements in the given array are not numbers, they will be coerced to numbers
  /// As log(0) = -∞, a log scale domain must be strictly-positive or strictly-negative; the domain must not include or cross zero.
  /// A log scale with a positive domain has a well-defined behavior for positive values, and a log scale with a negative domain has a well-defined behavior for negative values.
  /// (For a negative domain, input and output values are implicitly multiplied by -1.)
  /// The behavior of the scale is undefined if you pass a negative value to a log scale with a positive domain or vice versa.
  /// Although continuous scales typically have two values each in their domain and range, specifying more than two values produces a piecewise scale.
  /// Internally, a piecewise scale performs a binary search for the range interpolator corresponding to the given domain value.
  /// Thus, the domain must be in ascending or descending order. If the domain and range have different lengths N and M, only the first min(N,M) elements in each are observed.
  /*external ScaleLogarithmic domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleLogarithmic*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);

  /// Returns the scale’s current interpolator factory, which defaults to interpolate.
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /*external ScaleLogarithmic interpolate(
    InterpolatorFactory<Range, Output> interpolate);*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /// The generic "NewOutput" can be used to change the scale to have a different output element type corresponding to the new interpolation factory.
  /*external ScaleLogarithmic<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleLogarithmic|ScaleLogarithmic<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);

  /// Returns approximately count representative values from the scale’s domain.
  /// If count is not specified, it defaults to 10.
  /// If the base is an integer, the returned ticks are uniformly spaced within each integer power of base; otherwise, one tick per power of base is returned.
  /// The returned ticks are guaranteed to be within the extent of the domain. If the orders of magnitude in the domain is greater than count, then at most one tick per power is returned.
  /// Otherwise, the tick values are unfiltered, but note that you can use log.tickFormat to filter the display of tick labels.
  external List<num> ticks([num count]);

  /// Returns a number format function suitable for displaying a tick value, automatically computing the appropriate precision based on the fixed interval between tick values.
  /// The specified count typically has the same value as the count that is used to generate the tick values. If there are too many ticks, the formatter may return the empty string for some of the tick labels;
  /// however, note that the ticks are still shown. To disable filtering, specify a count of Infinity. When specifying a count, you may also provide a format specifier or format function.
  /// For example, to get a tick formatter that will display 20 ticks of a currency, say log.tickFormat(20, "$,f").
  /// If the specifier does not have a defined precision, the precision will be set automatically by the scale, returning the appropriate format.
  /// This provides a convenient way of specifying a format whose precision will be automatically set by the scale.
  /// For example, to get a tick formatter that will display 20 ticks of a currency, say log.tickFormat(20, "$,f").
  /// If the specifier does not have a defined precision, the precision will be set automatically by the scale, returning the appropriate format.
  /// This provides a convenient way of specifying a format whose precision will be automatically set by the scale.
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);

  /// Extends the domain to integer powers of base. For example, for a domain of [0.201479…, 0.996679…], and base 10, the nice domain is [0.1, 1].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /// Nicing a scale only modifies the current domain; it does not automatically nice domains that are subsequently set using continuous.domain.
  /// You must re-nice the scale after setting the new domain, if desired.
  external ScaleLogarithmic nice();

  /// Returns the current base, which defaults to 10.
  /*external num base();*/
  /// Sets the base for this logarithmic scale to the specified value.
  /*external ScaleLogarithmic base(num base);*/
  external dynamic /*num|ScaleLogarithmic*/ base([num base]);
}

/// Constructs a new continuous logarithmic scale with the domain [1, 10], the unit range [0, 1], the base 10, the default interpolator and clamping disabled.
/// The scale will have range and output of data type number.
/*external ScaleLogarithmic<num, num> scaleLog();*/
/// Constructs a new continuous logarithmic scale with the domain [1, 10], the base 10, the default interpolator and clamping disabled.
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleLogarithmic<Output,Output> scaleLog<Output>();*/
/// Constructs a new continuous logarithmic scale with the domain [1, 10], the base 10, the default interpolator and clamping disabled.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleLogarithmic<Range,Output> scaleLog<Range, Output>();*/
@JS()
external ScaleLogarithmic /*ScaleLogarithmic<num,num>|ScaleLogarithmic<Output,Output>|ScaleLogarithmic<Range,Output>*/ scaleLog/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Identity Scale Factory
/// -------------------------------------------------------------------------------
/// Identity scales are a special case of linear scales where the domain and range are identical; the scale and its invert method are thus the identity function.
/// These scales are occasionally useful when working with pixel coordinates, say in conjunction with an axis or brush.
@anonymous
@JS()
abstract class ScaleIdentity {
  /// Given a value from the domain, returns the corresponding value from the range, subject to interpolation, if any.
  /// If the given value is outside the domain, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the range.
  /// Note: The interpolation function applied by the scale may change the output type from the range type as part of the interpolation.
  external num call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Given a value from the range, returns the corresponding value from the domain. Inversion is useful for interaction,
  /// say to determine the data value corresponding to the position of the mouse.
  /// If the given value is outside the range, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the domain.
  /// IMPORTANT: This method is only supported if the range is numeric. If the range is not numeric, returns NaN.
  /// For a valid value y in the range, continuous(continuous.invert(y)) approximately equals y;
  /// similarly, for a valid value x in the domain, continuous.invert(continuous(x)) approximately equals x.
  /// The scale and its inverse may not be exact due to the limitations of floating point precision.
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns a copy of the scale’s current domain.
  /*external List<num> domain();*/
  /// Sets the scale’s domain to the specified array of numbers. The array must contain two or more elements.
  /// If the elements in the given array are not numbers, they will be coerced to numbers
  /// Although continuous scales typically have two values each in their domain and range, specifying more than two values produces a piecewise scale.
  /// Internally, a piecewise scale performs a binary search for the range interpolator corresponding to the given domain value.
  /// Thus, the domain must be in ascending or descending order. If the domain and range have different lengths N and M, only the first min(N,M) elements in each are observed.
  /*external ScaleIdentity domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleIdentity*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);

  /// Returns a copy of the scale’s current range.
  /*external List<num> range();*/
  /// Sets the scale’s range to the specified array of values.
  /// The array must contain two or more elements. Unlike the domain, elements in the given array need not be numbers;
  /// any value that is supported by the underlying interpolator will work, though note that numeric ranges are required for invert.
  /*external ScaleIdentity range(List<Range|{ valueOf(): number }> range);*/
  external dynamic /*List<num>|ScaleIdentity*/ range(
      [List<dynamic /*Range|{ valueOf(): number }*/ > range]);

  /// Returns approximately count representative values from the scale’s domain.
  /// If count is not specified, it defaults to 10.
  /// The returned tick values are uniformly spaced, have human-readable values (such as multiples of powers of 10),
  /// and are guaranteed to be within the extent of the domain. Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// The specified count is only a hint; the scale may return more or fewer values depending on the domain. See also d3-array’s ticks.
  external List<num> ticks([num count]);

  /// Returns a number format function suitable for displaying a tick value, automatically computing the appropriate precision based on the fixed interval between tick values.
  /// The specified count should have the same value as the count that is used to generate the tick values.
  /// If specifier uses the format type "s", the scale will return a SI-prefix format based on the largest value in the domain.
  /// If the specifier already specifies a precision, this method is equivalent to locale.format.
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);

  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// An optional tick count argument allows greater control over the step size used to extend the bounds,
  /// guaranteeing that the returned ticks will exactly cover the domain.
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [0.201479…, 0.996679…], a nice domain might be [0.2, 1.0].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /// Nicing a scale only modifies the current domain; it does not automatically nice domains that are subsequently set using continuous.domain.
  /// You must re-nice the scale after setting the new domain, if desired.
  external ScaleIdentity nice([num count]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleIdentity copy();
}

/// Constructs a new identity scale with the unit domain [0, 1] and the unit range [0, 1].
@JS()
external ScaleIdentity scaleIdentity();

/// -------------------------------------------------------------------------------
/// Time Scale Factories
/// -------------------------------------------------------------------------------
/// A linear scale defined over a temporal domain.
/// Time scales implement ticks based on calendar intervals, taking the pain out of generating axes for temporal domains.
/// If the range is numeric, the mapping may be inverted to return a date.
/// Note that the data types of the range and output of the scale must be compatible with the interpolator applied by the scale.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
@anonymous
@JS()
abstract class ScaleTime<Range, Output> {
  /// Given a value from the domain, returns the corresponding value from the range, subject to interpolation, if any.
  /// If the given value is outside the domain, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the range.
  /// Note: The interpolation function applied by the scale may change the output type from the range type as part of the interpolation.
  external Output call(dynamic /*DateTime|num|{ valueOf(): number }*/ value);

  /// Given a value from the range, returns the corresponding value from the domain. Inversion is useful for interaction,
  /// say to determine the data value corresponding to the position of the mouse.
  /// If the given value is outside the range, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the domain.
  /// IMPORTANT: This method is only supported if the range is numeric. If the range is not numeric, returns Invalid Date.
  /// For a valid value y in the range, time(time.invert(y)) equals y; similarly, for a valid value x in the domain, time.invert(time(x)) equals x.
  /// The invert method is useful for interaction, say to determine the value in the domain that corresponds to the pixel location under the mouse.
  external DateTime invert(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns a copy of the scale’s current domain.
  /*external List<DateTime> domain();*/
  /// Sets the scale’s domain to the specified array of temporal domain values. The array must contain two or more elements.
  /// If the elements in the given array are not dates, they will be coerced to dates.
  /// Although continuous scales typically have two values each in their domain and range, specifying more than two values produces a piecewise scale.
  /// Internally, a piecewise scale performs a binary search for the range interpolator corresponding to the given domain value.
  /// Thus, the domain must be in ascending or descending order. If the domain and range have different lengths N and M, only the first min(N,M) elements in each are observed.
  /*external ScaleTime domain(List<DateTime|num|{ valueOf(): number }> domain);*/
  external dynamic /*List<DateTime>|ScaleTime*/ domain(
      [List<dynamic /*DateTime|num|{ valueOf(): number }*/ > domain]);

  /// Returns a copy of the scale’s current range.
  /*external List<Range> range();*/
  /// Sets the scale’s range to the specified array of values.
  /// The array must contain two or more elements. Unlike the domain, elements in the given array need not be temporal domain values;
  /// any value that is supported by the underlying interpolator will work, though note that numeric ranges are required for invert.
  /*external ScaleTime range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleTime*/ range([List<Range> range]);

  /// Sets the scale’s range to the specified array of values while also setting the scale’s interpolator to interpolateRound.
  /// The rounding interpolator is sometimes useful for avoiding antialiasing artifacts,
  /// though also consider the shape-rendering “crispEdges” styles. Note that this interpolator can only be used with numeric ranges.
  /// The array must contain two or more elements. Unlike the domain, elements in the given array need not be temporal domain values;
  /// any value that is supported by the underlying interpolator will work, though note that numeric ranges are required for invert.
  external ScaleTime rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);

  /// Returns whether or not the scale currently clamps values to within the range.
  /*external bool clamp();*/
  /// Enables or disables clamping, respectively. If clamping is disabled and the scale is passed a value outside the domain,
  /// the scale may return a value outside the range through extrapolation.
  /// If clamping is enabled, the return value of the scale is always within the scale’s range. Clamping similarly applies to the "invert" method.
  /*external ScaleTime clamp(bool clamp);*/
  external dynamic /*bool|ScaleTime*/ clamp([bool clamp]);

  /// Returns the scale’s current interpolator factory, which defaults to interpolate.
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /*external ScaleTime interpolate(InterpolatorFactory<Range, Output> interpolate);*/
  /// Sets the scale’s range interpolator factory. This interpolator factory is used to create interpolators for each adjacent pair of values from the range;
  /// these interpolators then map a normalized domain parameter t in [0, 1] to the corresponding value in the range.
  /// Note: the default interpolator may reuse return values. For example, if the range values are objects, then the value interpolator always returns the same object, modifying it in-place.
  /// If the scale is used to set an attribute or style, this is typically acceptable (and desirable for performance);
  /// however, if you need to store the scale’s return value, you must specify your own interpolator or make a copy as appropriate.
  /// As part of the interpolation process the interpotaled value from the range may be converted to a corresponding output value.
  /// The generic "NewOutput" can be used to change the scale to have a different output element type corresponding to the new interpolation factory.
  /*external ScaleTime<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleTime|ScaleTime<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);

  /// Returns representative dates from the scale’s domain. The returned tick values are uniformly-spaced (mostly),
  /// have sensible values (such as every day at midnight), and are guaranteed to be within the extent of the domain.
  /// Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// Without specifying a count or time interval to control the number of ticks returned, a default count of 10 is used.
  /// The specified count is only a hint; the scale may return more or fewer values depending on the domain.
  /*external List<DateTime> ticks();*/
  /// Returns representative dates from the scale’s domain. The returned tick values are uniformly-spaced (mostly),
  /// have sensible values (such as every day at midnight), and are guaranteed to be within the extent of the domain.
  /// Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// The specified count controls the number of ticks to be returned. The specified count is only a hint;
  /// the scale may return more or fewer values depending on the domain.
  /*external List<DateTime> ticks(num count);*/
  /// Returns representative dates from the scale’s domain. The returned tick values are uniformly-spaced (mostly),
  /// have sensible values (such as every day at midnight), and are guaranteed to be within the extent of the domain.
  /// Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// The specified time interval controls the ticks generated and returned. To prune the generated ticks for a given time interval,
  /// use interval.every(...) or interval.filter(...).
  /*external List<DateTime> ticks(TimeInterval interval);*/
  external List<DateTime> ticks([dynamic /*num|TimeInterval*/ count_interval]);

  /// Returns a time format function suitable for displaying tick values.
  /// The default multi-scale time format chooses a human-readable representation based on the specified date as follows:
  /// - %Y - for year boundaries, such as 2011.
  /// - %B - for month boundaries, such as February.
  /// - %b %d - for week boundaries, such as Feb 06.
  /// - %a %d - for day boundaries, such as Mon 07.
  /// - %I %p - for hour boundaries, such as 01 AM.
  /// - %I:%M - for minute boundaries, such as 01:23.
  /// - :%S - for second boundaries, such as :45.
  /// - .%L - milliseconds for all other times, such as .012.
  /// Although somewhat unusual, this default behavior has the benefit of providing both local and global context:
  /// for example, formatting a sequence of ticks as [11 PM, Mon 07, 01 AM] reveals information about hours, dates, and day simultaneously,
  /// rather than just the hours [11 PM, 12 AM, 01 AM].
  /*external Func1<DateTime, String> tickFormat();*/
  /// Returns a time format function suitable for displaying tick values.
  /// The specified count is currently ignored, but is accepted for consistency with other scales such as continuous.tickFormat.
  /*external Func1<DateTime, String> tickFormat(num count, [String specifier]);*/
  /// Returns a time format function suitable for displaying tick values.
  /// The specified time interval is currently ignored, but is accepted for consistency with other scales such as continuous.tickFormat.
  /*external Func1<DateTime, String> tickFormat(TimeInterval interval,
    [String specifier]);*/
  external Func1<DateTime, String> tickFormat(
      [dynamic /*num|TimeInterval*/ count_interval, String specifier]);

  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [2009-07-13T00:02, 2009-07-13T23:48], the nice domain is [2009-07-13, 2009-07-14].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /*external ScaleTime nice();*/
  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// A tick count argument allows greater control over the step size used to extend the bounds, guaranteeing that the returned ticks will exactly cover the domain.
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [2009-07-13T00:02, 2009-07-13T23:48], the nice domain is [2009-07-13, 2009-07-14].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /*external ScaleTime nice(num count);*/
  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// a time interval may be specified to explicitly set the ticks. If an interval is specified, an optional step may also be specified to skip some ticks.
  /// For example, time.nice(d3.timeSecond, 10) will extend the domain to an even ten seconds (0, 10, 20, etc.).
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [2009-07-13T00:02, 2009-07-13T23:48], the nice domain is [2009-07-13, 2009-07-14].
  /// If the domain has more than two values, nicing the domain only affects the first and last value.
  /*external ScaleTime nice(CountableTimeInterval interval, [num step]);*/
  external ScaleTime nice(
      [dynamic /*num|CountableTimeInterval*/ count_interval, num step]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleTime copy();
}

/// Constructs a new time scale using local time with the domain [2000-01-01, 2000-01-02], the unit range [0, 1], the default interpolator and clamping disabled.
/// The scale will have range and output of data type number.
/*external ScaleTime<num, num> scaleTime();*/
/// Constructs a new time scale using local time with the domain [2000-01-01, 2000-01-02], the default interpolator and clamping disabled.
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleTime<Output,Output> scaleTime<Output>();*/
/// Constructs a new time scale using local time with the domain [2000-01-01, 2000-01-02], the default interpolator and clamping disabled.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleTime<Range,Output> scaleTime<Range, Output>();*/
@JS()
external ScaleTime /*ScaleTime<num,num>|ScaleTime<Output,Output>|ScaleTime<Range,Output>*/ scaleTime/*<Output, Range>*/();

/// Constructs a new time scale using Coordinated Universal Time (UTC) with the domain [2000-01-01, 2000-01-02], the unit range [0, 1], the default interpolator and clamping disabled.
/// The scale will have range and output of data type number.
/*external ScaleTime<num, num> scaleUtc();*/
/// Constructs a new time scale using Coordinated Universal Time (UTC) with the domain [2000-01-01, 2000-01-02], the default interpolator and clamping disabled.
/// The generic correponds to the data type of the range and output elements to be used.
/// As range type and output type are the same, the interpolator factory used with the scale must match this behaviour.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleTime<Output,Output> scaleUtc<Output>();*/
/// Constructs a new time scale using Coordinated Universal Time (UTC) with the domain [2000-01-01, 2000-01-02], the default interpolator and clamping disabled.
/// The first generic corresponds to the data type of the range elements.
/// The second generic corresponds to the data type of the output elements generated by the scale.
/// If range element and output element type differ, the interpolator factory used with the scale must match this behaviour and
/// convert the interpolated range element to a corresponding output element.
/// The range must be set in accordance with the range element type.
/// The interpolator factory may be set using the interpolate(...) method of the scale.
/*external ScaleTime<Range,Output> scaleUtc<Range, Output>();*/
@JS()
external ScaleTime /*ScaleTime<num,num>|ScaleTime<Output,Output>|ScaleTime<Range,Output>*/ scaleUtc/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Sequential Scale Factory
/// -------------------------------------------------------------------------------
/// Sequential scales are similar to continuous scales in that they map a continuous,
/// numeric input domain to a continuous output range. However, unlike continuous scales,
/// the output range of a sequential scale is fixed by its interpolator and not configurable.
/// The generic corresponds to the data type of the output of the interpolator underlying the scale.
@anonymous
@JS()
abstract class ScaleSequential<Output> {
  /// Given a value from the domain, returns the corresponding value from the output range, subject to interpolation.
  /// If the given value is outside the domain, and clamping is not enabled, the mapping may be extrapolated such that the returned value is outside the range.
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns a copy of the scale’s current domain.
  /*external Tuple of <num,num> domain();*/
  /// Sets the scale’s domain to the specified array of numbers. The array must contain exactly two elements.
  /// If the elements in the given array are not numbers, they will be coerced to numbers
  /*external ScaleSequential domain(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> domain);*/
  external dynamic /*Tuple of <num,num>|ScaleSequential*/ domain(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ domain]);

  /// Returns whether or not the scale currently clamps values to within the range.
  /*external bool clamp();*/
  /// Enables or disables clamping, respectively. If clamping is disabled and the scale is passed a value outside the domain,
  /// the scale may return a value outside the range through extrapolation.
  /// If clamping is enabled, the return value of the scale is always within the scale’s range. Clamping similarly applies to the "invert" method.
  /*external ScaleSequential clamp(bool clamp);*/
  external dynamic /*bool|ScaleSequential*/ clamp([bool clamp]);

  /// Returns the current interpolator underlying the scale.
  /*external Func1<num, Output> interpolator();*/
  /// Sets the scale’s interpolator to the specified function.
  /*external ScaleSequential interpolator(Func1<num, Output> interpolator);*/
  /// Sets the scale’s interpolator to the specified function.
  /// The generic corresponds to a the new output type of the scale. The output type of the scale is determined by the output type of the interpolator function.
  /*external ScaleSequential<NewOutput> interpolator<NewOutput>(Func1<num, NewOutput> interpolator);*/
  external dynamic /*Func1<num, Output>|ScaleSequential|ScaleSequential<NewOutput>*/ interpolator/*<NewOutput>*/(
      [dynamic /*Func1<num, Output>|Func1<num, NewOutput>*/ interpolator]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleSequential<Output> copy();
}

/// Constructs a new sequential scale with the given interpolator function. When the scale is applied, the interpolator will be invoked with a value typically in the range [0, 1],
/// where 0 represents the start of the domain, and 1 represents the end of the domain.
/// The generic corresponds to the data type of the output of the interpolator underlying the scale.
@JS()
external ScaleSequential<dynamic/*=Output*/ > scaleSequential/*<Output>*/(
    Func1<num, dynamic/*=Output*/ > interpolator);

/// -------------------------------------------------------------------------------
/// Color Interpolators for Sequential Scale Factory
/// -------------------------------------------------------------------------------
/// Given a number t in the range [0,1], returns the corresponding color from the “viridis” perceptually-uniform color scheme designed by van der Walt, Smith and Firing for matplotlib,
/// represented as an RGB string.
@JS()
external String interpolateViridis(num t);

/// Given a number t in the range [0,1], returns the corresponding color from the “inferno” perceptually-uniform color scheme designed by van der Walt and Smith for matplotlib,
/// represented as an RGB string.
@JS()
external String interpolateInferno(num t);

/// Given a number t in the range [0,1], returns the corresponding color from the “magma” perceptually-uniform color scheme designed by van der Walt and Smith for matplotlib,
/// represented as an RGB string.
@JS()
external String interpolateMagma(num t);

/// Given a number t in the range [0,1], returns the corresponding color from the “plasma” perceptually-uniform color scheme designed by van der Walt and Smith for matplotlib,
/// represented as an RGB string.
@JS()
external String interpolatePlasma(num t);

/// Given a number t in the range [0,1], returns the corresponding color from a 180° rotation of Niccoli’s perceptual rainbow, represented as an RGB string.
@JS()
external String interpolateWarm(num t);

/// Given a number t in the range [0,1], returns the corresponding color from Niccoli’s perceptual rainbow, represented as an RGB string.
@JS()
external String interpolateCool(num t);

/// Given a number t in the range [0,1], returns the corresponding color from d3.interpolateWarm scale from [0.0, 0.5] followed by the d3.interpolateCool scale from [0.5, 1.0],
/// thus implementing the cyclical less-angry rainbow color scheme.
@JS()
external String interpolateRainbow(num t);

/// Given a number t in the range [0,1], returns the corresponding color from Green’s default Cubehelix represented as an RGB string.
@JS()
external String interpolateCubehelixDefault(num t);

/// -------------------------------------------------------------------------------
/// Quantize Scale Factory
/// -------------------------------------------------------------------------------
/// Quantize scales are similar to linear scales, except they use a discrete rather than continuous range.
/// The continuous input domain is divided into uniform segments based on the number of values in (i.e., the cardinality of) the output range.
/// Each range value y can be expressed as a quantized linear function of the domain value x: y = m round(x) + b.
/// The generic corresponds to the data type of the range elements.
@anonymous
@JS()
abstract class ScaleQuantize<Range> {
  /// Given a value in the input domain, returns the corresponding value in the output range.
  external Range call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns the extent of values in the domain [x0, x1] for the corresponding value in the range: the inverse of quantize.
  /// This method is useful for interaction, say to determine the value in the domain that corresponds to the pixel location under the mouse.
  /// If an invalid range value is entered, returns [NaN, NaN].
  external List<num> /*Tuple of <num,num>*/ invertExtent(Range value);

  /// Returns the scale’s current domain.
  /*external Tuple of <num,num> domain();*/
  /// Sets the scale’s domain to the specified two-element array of numbers.
  /// If the elements in the given array are not numbers, they will be coerced to numbers.
  /*external ScaleQuantize domain(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> domain);*/
  external dynamic /*Tuple of <num,num>|ScaleQuantize*/ domain(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ domain]);

  /// Returns the scale’s current range.
  /*external List<Range> range();*/
  /// Sets the scale’s range to the specified array of values. The array may contain any number of discrete values.
  /*external ScaleQuantize range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleQuantize*/ range([List<Range> range]);

  /// Returns approximately count representative values from the scale’s domain.
  /// If count is not specified, it defaults to 10.
  /// The returned tick values are uniformly spaced, have human-readable values (such as multiples of powers of 10),
  /// and are guaranteed to be within the extent of the domain. Ticks are often used to display reference lines, or tick marks, in conjunction with the visualized data.
  /// The specified count is only a hint; the scale may return more or fewer values depending on the domain. See also d3-array’s ticks.
  external List<num> ticks([num count]);

  /// Returns a number format function suitable for displaying a tick value, automatically computing the appropriate precision based on the fixed interval between tick values.
  /// The specified count should have the same value as the count that is used to generate the tick values.
  /// If specifier uses the format type "s", the scale will return a SI-prefix format based on the largest value in the domain.
  /// If the specifier already specifies a precision, this method is equivalent to locale.format.
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);

  /// Extends the domain so that it starts and ends on nice round values.
  /// This method typically modifies the scale’s domain, and may only extend the bounds to the nearest round value.
  /// Nicing is useful if the domain is computed from data, say using extent, and may be irregular.
  /// For example, for a domain of [0.201479…, 0.996679…], a nice domain might be [0.2, 1.0].
  /// Nicing a scale only modifies the current domain; it does not automatically nice domains that are subsequently set using continuous.domain.
  /// You must re-nice the scale after setting the new domain, if desired.
  external ScaleQuantize nice([num count]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleQuantize copy();
}

/// Constructs a new quantize scale with the unit domain [0, 1] and the unit range [0, 1].
/// Thus, the default quantize scale is equivalent to the Math.round function.
/*external ScaleQuantize<num> scaleQuantize();*/
/// Constructs a new quantize scale with the unit domain [0, 1].
/// The range must be set corresponding to the type of the range elements.
/// The generic corresponds to the data type of the range elements.
/*external ScaleQuantize<Range> scaleQuantize<Range>();*/
@JS()
external ScaleQuantize /*ScaleQuantize<num>|ScaleQuantize<Range>*/ scaleQuantize/*<Range>*/();

/// -------------------------------------------------------------------------------
/// Quantile Scale Factory
/// -------------------------------------------------------------------------------
/// Quantile scales map a sampled input domain to a discrete range. The domain is considered continuous and thus the scale will accept any reasonable input value;
/// however, the domain is specified as a discrete set of sample values. The number of values in (the cardinality of) the output range determines the number of quantiles that will be computed from the domain.
/// To compute the quantiles, the domain is sorted, and treated as a population of discrete values; see d3-array’s quantile.
/// The generic correponds to the data type of range elements.
@anonymous
@JS()
abstract class ScaleQuantile<Range> {
  /// Given a value in the input domain, returns the corresponding value in the output range.
  external Range call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Returns the extent of values in the domain [x0, x1] for the corresponding value in the range: the inverse of quantile.
  /// This method is useful for interaction, say to determine the value in the domain that corresponds to the pixel location under the mouse.
  external List<num> /*Tuple of <num,num>*/ invertExtent(Range value);

  /// Returns the scale’s current domain.
  /*external List<num> domain();*/
  /// Sets the domain of the quantile scale to the specified set of discrete numeric values.
  /// The array must not be empty, and must contain at least one numeric value; NaN, null and undefined values are ignored and not considered part of the sample population.
  /// If the elements in the given array are not numbers, they will be coerced to numbers. A copy of the input array is sorted and stored internally.
  /*external ScaleQuantile domain(List<num|{ valueOf(): number }|Null|dynamic> domain);*/
  external dynamic /*List<num>|ScaleQuantile*/ domain(
      [List<dynamic /*num|{ valueOf(): number }|Null|dynamic*/ > domain]);

  /// Returns the current range.
  /*external List<Range> range();*/
  /// Sets the discrete values in the range. The array must not be empty.
  /// The number of values in (the cardinality, or length, of) the range array determines the number of quantiles that are computed.
  /// For example, to compute quartiles, range must be an array of four elements such as [0, 1, 2, 3].
  /*external ScaleQuantile range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleQuantile*/ range([List<Range> range]);

  /// Returns the quantile thresholds. If the range contains n discrete values, the returned array will contain n - 1 thresholds.
  /// Values less than the first threshold are considered in the first quantile;
  /// values greater than or equal to the first threshold but less than the second threshold are in the second quantile, and so on.
  /// Internally, the thresholds array is used with bisect to find the output quantile associated with the given input value.
  external List<num> quantiles();

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleQuantile copy();
}

/// Constructs a new quantile scale with an empty domain and an empty range.
/// The quantile scale is invalid until both a domain and range are specified.
/*external ScaleQuantile<num> scaleQuantile();*/
/// Constructs a new quantile scale with an empty domain and an empty range.
/// The quantile scale is invalid until both a domain and range are specified.
/// The generic correponds to the data type of range elements.
/*external ScaleQuantile<Range> scaleQuantile<Range>();*/
@JS()
external ScaleQuantile /*ScaleQuantile<num>|ScaleQuantile<Range>*/ scaleQuantile/*<Range>*/();

/// -------------------------------------------------------------------------------
/// Threshold Scale Factory
/// -------------------------------------------------------------------------------
/// Threshold scales are similar to quantize scales, except they allow you to map arbitrary subsets of the domain to discrete values in the range.
/// The input domain is still continuous, and divided into slices based on a set of threshold values.
/// If the number of values in the scale’s range is N+1, the number of values in the scale’s domain must be N. If there are fewer than N elements in the domain, the additional values in the range are ignored.
/// If there are more than N elements in the domain, the scale may return undefined for some inputs.
/// The first generic corresponds to the data type of domain values.
/// The second generic corresponds to the data type of range values.
@anonymous
@JS()
abstract class ScaleThreshold<Domain extends dynamic /*num|String|DateTime*/,
    Range> {
  /// Given a value in the input domain, returns the corresponding value in the output range.
  external Range call(Domain value);

  /// Returns the extent of values in the domain [x0, x1] for the corresponding value in the range, representing the inverse mapping from range to domain.
  /// This method is useful for interaction, say to determine the value in the domain that corresponds to the pixel location under the mouse.
  external List<dynamic /*Domain|dynamic*/ > /*Tuple of <Domain|dynamic,Domain|dynamic>*/ invertExtent(
      Range value);

  /// Returns the scale’s current domain.
  /*external List<Domain> domain();*/
  /// Sets the scale’s domain to the specified array of values. The values must be in sorted ascending order, or the behavior of the scale is undefined.
  /// The values are typically numbers, but any naturally ordered values (such as strings) will work; a threshold scale can be used to encode any type that is ordered.
  /// If the number of values in the scale’s range is N+1, the number of values in the scale’s domain must be N.
  /// If there are fewer than N elements in the domain, the additional values in the range are ignored.
  /// If there are more than N elements in the domain, the scale may return undefined for some inputs.
  /*external ScaleThreshold domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleThreshold*/ domain(
      [List<Domain> domain]);

  /// Returns the scale’s current range.
  /*external List<Range> range();*/
  /// Sets the scale’s range to the specified array of values. If the number of values in the scale’s domain is N, the number of values in the scale’s range must be N+1.
  /// If there are fewer than N+1 elements in the range, the scale may return undefined for some inputs.
  /// If there are more than N+1 elements in the range, the additional values are ignored.
  /*external ScaleThreshold range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleThreshold*/ range([List<Range> range]);

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleThreshold copy();
}

/// Constructs a new threshold scale with the default domain [0.5] and the default range [0, 1].
/// Thus, the default threshold scale is equivalent to the Math.round function for numbers; for example threshold(0.49) returns 0, and threshold(0.51) returns 1.
/*external ScaleThreshold<num, num> scaleThreshold();*/
/// Constructs a new threshold scale. The domain and range must be set corresponding to the type of the corresponding generic.
/// The first generic corresponds to the data type of domain values.
/// The second generic corresponds to the data type of range values.
/*external ScaleThreshold<Domain,Range> scaleThreshold<Domain extends num|String|DateTime, Range>();*/
@JS()
external ScaleThreshold /*ScaleThreshold<num,num>|ScaleThreshold<Domain,Range>*/ scaleThreshold/*<Domain, Range>*/();

/// -------------------------------------------------------------------------------
/// Ordinal Scale Factory
/// -------------------------------------------------------------------------------
/// Unlike continuous scales, ordinal scales have a discrete domain and range. For example, an ordinal scale might map a set of named categories to a set of colors,
/// or determine the horizontal positions of columns in a column chart.
/// The first element in the domain will be mapped to the first element in range, the second domain value to the second range value, and so on.
/// If there are fewer elements in the range than in the domain, the scale will reuse values from the start of the range.
/// The first generic corresponds to the data type of domain values.
/// The second generic corresponds to the data type of range values.
@anonymous
@JS()
abstract class ScaleOrdinal<Domain extends dynamic /*{ toString(): string }*/,
    Range> {
  /// Given a value in the input domain, returns the corresponding value in the output range.
  /// If the given value is not in the scale’s domain, returns the unknown; or, if the unknown value is implicit (the default),
  /// then the value is implicitly added to the domain and the next-available value in the range is assigned to value,
  /// such that this and subsequent invocations of the scale given the same input value return the same output value.
  external Range call(Domain x);

  /// Returns the scale's current domain.
  /*external List<Domain> domain();*/
  /// Sets the domain to the specified array of values.
  /// The first element in domain will be mapped to the first element in the range,
  /// the second domain value to the second range value, and so on.
  /// Domain values are stored internally in a map from stringified value to index; the resulting index is then used to retrieve a value from the range.
  /// Thus, an ordinal scale’s values must be coercible to a string, and the stringified version of the domain value uniquely identifies the corresponding range value.
  /// Setting the domain on an ordinal scale is optional if the unknown value is implicit (the default).
  /// In this case, the domain will be inferred implicitly from usage by assigning each unique value passed to the scale a new value from the range.
  /// Note that an explicit domain is recommended to ensure deterministic behavior, as inferring the domain from usage will be dependent on ordering.
  /*external ScaleOrdinal domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleOrdinal*/ domain([List<Domain> domain]);

  /// Returns the scale's current range.
  /*external List<Range> range();*/
  /// Sets the range of the ordinal scale to the specified array of values.
  /// The first element in the domain will be mapped to the first element in range, the second domain value to the second range value, and so on.
  /// If there are fewer elements in the range than in the domain, the scale will reuse values from the start of the range.
  /*external ScaleOrdinal range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleOrdinal*/ range([List<Range> range]);

  /// Returns the current unknown value, which defaults to "implicit".
  /*external Range|{ name: 'implicit' } unknown();*/
  /// Sets the output value of the scale for unknown input values and returns this scale.
  /// The implicit value enables implicit domain construction. scaleImplicit can be used as a convenience to set the implicit value.
  /*external ScaleOrdinal unknown(Range|{ name: 'implicit' } value);*/
  external dynamic /*Range|{ name: 'implicit' }|ScaleOrdinal*/ unknown(
      [dynamic /*Range|{ name: 'implicit' }*/ value]);

  /// Returns an exact copy of this ordinal scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleOrdinal copy();
}

/// Constructs a new ordinal scale with an empty domain and the specified range.
/// If a range is not specified, it defaults to the empty array; an ordinal scale always returns undefined until a non-empty range is defined.
/// By default, the domain is configured to generate implicitly, if the scale is invoked with an unknown value.
/// See the "unknown(...)" method of the scale to change this behavior.
/// The generic corresponds to the data type of range elements.
/// @parm range An optional array of range values to initialize the scale with.
/*external ScaleOrdinal<String,Range> scaleOrdinal<Range>([List<Range> range]);*/
/// Constructs a new ordinal scale with an empty domain and the specified range.
/// If a range is not specified, it defaults to the empty array; an ordinal scale always returns undefined until a non-empty range is defined.
/// By default, the domain is configured to generate implicitly, if the scale is invoked with an unknown value.
/// See the "unknown(...)" method of the scale to change this behavior.
/// The first generic corresponds to the data type of domain elements.
/// The second generic corresponds to the data type of range elements.
/// @parm range An optional array of range values to initialize the scale with.
/*external ScaleOrdinal<Domain,Range> scaleOrdinal<Domain extends { toString(): string }, Range>([List<Range> range]);*/
@JS()
external ScaleOrdinal /*ScaleOrdinal<String,Range>|ScaleOrdinal<Domain,Range>*/ scaleOrdinal/*<Range, Domain extends { toString(): string }>*/(
    [List<dynamic/*=Range*/ > range]);

/// A special value for ordinal.unknown that enables implicit domain construction: unknown values are implicitly added to the domain.
@JS()
external dynamic /*{ name: 'implicit' }*/ get scaleImplicit;

/// -------------------------------------------------------------------------------
/// Band Scale Factory
/// -------------------------------------------------------------------------------
/// Band scales are like ordinal scales except the output range is continuous and numeric.
/// Discrete output values are automatically computed by the scale by dividing the continuous range into uniform bands.
/// Band scales are typically used for bar charts with an ordinal or categorical dimension.
/// The unknown value of a band scale is effectively undefined: they do not allow implicit domain construction.
/// The generic corresponds to the data type of domain elements.
@anonymous
@JS()
abstract class ScaleBand<Domain extends dynamic /*{ toString(): string }*/ > {
  /// Given a value in the input domain, returns the start of the corresponding band derived from the output range.
  /// If the given value is not in the scale’s domain, returns undefined.
  external dynamic /*num|dynamic*/ call(Domain x);

  /// Returns to scale's current domain
  /*external List<Domain> domain();*/
  /// Sets the domain to the specified array of values. The first element in domain will be mapped to the first band, the second domain value to the second band, and so on.
  /// Domain values are stored internally in a map from stringified value to index; the resulting index is then used to determine the band.
  /// Thus, a band scale’s values must be coercible to a string, and the stringified version of the domain value uniquely identifies the corresponding band.
  /*external ScaleBand domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleBand*/ domain([List<Domain> domain]);

  /// Returns the scale’s current range, which defaults to [0, 1].
  /*external Tuple of <num,num> range();*/
  /// Sets the scale’s range to the specified two-element array of numbers. If the elements in the given array are not numbers, they will be coerced to numbers.
  /// The default range is [0, 1].
  /*external ScaleBand range(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> range);*/
  external dynamic /*Tuple of <num,num>|ScaleBand*/ range(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range]);

  /// Sets the scale’s range to the specified two-element array of numbers while also enabling rounding.
  /// If the elements in the given array are not numbers, they will be coerced to numbers.
  /// Rounding is sometimes useful for avoiding antialiasing artifacts, though also consider the shape-rendering “crispEdges” styles.
  external ScaleBand rangeRound(
      List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range);

  /// Returns the current rounding status for the scale: enabled (= true) or disabled (= false).
  /*external bool round();*/
  /// Enables or disables rounding accordingly. If rounding is enabled, the start and stop of each band will be integers.
  /// Rounding is sometimes useful for avoiding antialiasing artifacts, though also consider the shape-rendering “crispEdges” styles.
  /// Note that if the width of the domain is not a multiple of the cardinality of the range, there may be leftover unused space, even without padding!
  /// Use band.align to specify how the leftover space is distributed.
  /*external ScaleBand round(bool round);*/
  external dynamic /*bool|ScaleBand*/ round([bool round]);

  /// Returns the current inner padding which defaults to 0.
  /*external num paddingInner();*/
  /// Sets the inner padding to the specified value which must be in the range [0, 1].
  /// The inner padding determines the ratio of the range that is reserved for blank space between bands.
  /// The default setting is 0.
  /*external ScaleBand paddingInner(num padding);*/
  external dynamic /*num|ScaleBand*/ paddingInner([num padding]);

  /// Returns the current outer padding which defaults to 0.
  /*external num paddingOuter();*/
  /// Sets the outer padding to the specified value which must be in the range [0, 1].
  /// The outer padding determines the ratio of the range that is reserved for blank space before the first band and after the last band.
  /// The default setting is 0.
  /*external ScaleBand paddingOuter(num padding);*/
  external dynamic /*num|ScaleBand*/ paddingOuter([num padding]);

  /// Returns the inner padding.
  /*external num padding();*/
  /// A convenience method for setting the inner and outer padding to the same padding value.
  /*external ScaleBand padding(num padding);*/
  external dynamic /*num|ScaleBand*/ padding([num padding]);

  /// Returns the current alignment which defaults to 0.5.
  /*external num align();*/
  /// Sets the alignment to the specified value which must be in the range [0, 1].
  /// The default is 0.5.
  /// The alignment determines how any leftover unused space in the range is distributed.
  /// A value of 0.5 indicates that the leftover space should be equally distributed before the first band and after the last band;
  /// i.e., the bands should be centered within the range. A value of 0 or 1 may be used to shift the bands to one side, say to position them adjacent to an axis.
  /*external ScaleBand align(num align);*/
  external dynamic /*num|ScaleBand*/ align([num align]);

  /// Returns the width of each band.
  external num bandwidth();

  /// Returns the distance between the starts of adjacent bands.
  external num step();

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScaleBand copy();
}

/// Constructs a new band scale with the empty domain, the unit range [0, 1], no padding, no rounding and center alignment.
/*external ScaleBand<String> scaleBand();*/
/// Constructs a new band scale with the empty domain, the unit range [0, 1], no padding, no rounding and center alignment.
/// The generic correponds to the data type of domain elements.
/*external ScaleBand<Domain> scaleBand<Domain extends { toString(): string }>();*/
@JS()
external ScaleBand /*ScaleBand<String>|ScaleBand<Domain>*/ scaleBand/*<Domain extends { toString(): string }>*/();

/// -------------------------------------------------------------------------------
/// Point Scale Factory
/// -------------------------------------------------------------------------------
/// Point scales are a variant of band scales with the bandwidth fixed to zero.
/// Point scales are typically used for scatterplots with an ordinal or categorical dimension.
/// The unknown value of a point scale is always undefined: they do not allow implicit domain construction.
/// The generic corresponds to the data type of domain elements.
@anonymous
@JS()
abstract class ScalePoint<Domain extends dynamic /*{ toString(): string }*/ > {
  /// Given a value in the input domain, returns the corresponding point derived from the output range.
  /// If the given value is not in the scale’s domain, returns undefined.
  external dynamic /*num|dynamic*/ call(Domain x);

  /// Returns the scale's current domain.
  /*external List<Domain> domain();*/
  /// Sets the domain to the specified array of values. The first element in domain will be mapped to the first point, the second domain value to the second point, and so on.
  /// Domain values are stored internally in a map from stringified value to index; the resulting index is then used to determine the point.
  /// Thus, a point scale’s values must be coercible to a string, and the stringified version of the domain value uniquely identifies the corresponding point.
  /*external ScalePoint domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScalePoint*/ domain([List<Domain> domain]);

  /// Returns the scale’s current range, which defaults to [0, 1].
  /*external Tuple of <num,num> range();*/
  /// Sets the scale’s range to the specified two-element array of numbers.
  /// If the elements in the given array are not numbers, they will be coerced to numbers.
  /// The default range is [0, 1].
  /*external ScalePoint range(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> range);*/
  external dynamic /*Tuple of <num,num>|ScalePoint*/ range(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range]);

  /// Sets the scale’s range to the specified two-element array of numbers while also enabling rounding.
  /// If the elements in the given array are not numbers, they will be coerced to numbers.
  /// Rounding is sometimes useful for avoiding antialiasing artifacts, though also consider the shape-rendering “crispEdges” styles.
  external ScalePoint rangeRound(
      List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range);

  /// Returns the current rounding status for the scale: enabled (= true) or disabled (= false).
  /*external bool round();*/
  /// Enables or disables rounding accordingly. If rounding is enabled, the position of each point will be integers.
  /// Rounding is sometimes useful for avoiding antialiasing artifacts, though also consider the shape-rendering “crispEdges” styles.
  /// Note that if the width of the domain is not a multiple of the cardinality of the range, there may be leftover unused space, even without padding!
  /// Use point.align to specify how the leftover space is distributed.
  /*external ScalePoint round(bool round);*/
  external dynamic /*bool|ScalePoint*/ round([bool round]);

  /// Returns the current outer padding which defaults to 0.
  /// The outer padding determines the ratio of the range that is reserved for blank space
  /// before the first point and after the last point.
  /*external num padding();*/
  /// Sets the outer padding to the specified value which must be in the range [0, 1].
  /// The outer padding determines the ratio of the range that is reserved for blank space
  /// before the first point and after the last point.
  /// The default is 0.
  /*external ScalePoint padding(num padding);*/
  external dynamic /*num|ScalePoint*/ padding([num padding]);

  /// Returns the current alignment which defaults to 0.5.
  /*external num align();*/
  /// Sets the alignment to the specified value which must be in the range [0, 1].
  /// The alignment determines how any leftover unused space in the range is distributed.
  /// A value of 0.5 indicates that the leftover space should be equally distributed before the first point and after the last point;
  /// i.e., the points should be centered within the range. A value of 0 or 1 may be used to shift the points to one side, say to position them adjacent to an axis.
  /// The default value is 0.5.
  /*external ScalePoint align(num align);*/
  external dynamic /*num|ScalePoint*/ align([num align]);

  /// Return 0.
  external num bandwidth();

  /// Returns the distance between the starts of adjacent points.
  external num step();

  /// Returns an exact copy of this scale. Changes to this scale will not affect the returned scale, and vice versa.
  external ScalePoint copy();
}

/// Constructs a new point scale with the empty domain, the unit range [0, 1], no padding, no rounding and center alignment.
/*external ScalePoint<String> scalePoint();*/
/// Constructs a new point scale with the empty domain, the unit range [0, 1], no padding, no rounding and center alignment.
/// The generic corresponds to the data type of domain elements.
/*external ScalePoint<Domain> scalePoint<Domain extends { toString(): string }>();*/
@JS()
external ScalePoint /*ScalePoint<String>|ScalePoint<Domain>*/ scalePoint/*<Domain extends { toString(): string }>*/();

/// -------------------------------------------------------------------------------
/// Categorical Color Schemas for Ordinal Scales
/// -------------------------------------------------------------------------------
/// An array of ten categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeCategory10;

/// An array of twenty categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeCategory20;

/// An array of twenty categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeCategory20b;

/// An array of twenty categorical colors represented as RGB hexadecimal strings.
/// This color scale includes color specifications and designs developed by Cynthia Brewer (colorbrewer2.org).
@JS()
external List<String> get schemeCategory20c;

