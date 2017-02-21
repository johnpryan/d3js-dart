@JS()
library node_modules._types.d3_axis;

import "package:js/js.dart";
import "d3-selection.dart" show Selection, TransitionLike;
import "dart:svg" show SvgSvgElement, GElement;
import "package:func/func.dart";

/// Type definitions for D3JS d3-axis module 1.0
/// Project: https://github.com/d3/d3-axis/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.4
/// --------------------------------------------------------------------------
/// Shared Types and Interfaces
/// --------------------------------------------------------------------------
/// A helper interface to describe the minimal contract to be met by a time interval
/// which can be passed into the Axis.ticks(...) or Axis.tickArguments(...) methods when
/// creating time series axes. Under normal circumstances the argument will be of type
/// TimeInterval or CountableTimeInterval as defined in d3-time.
/// NB: This helper interface has been created to avoid tight coupling of d3-axis to
/// d3-time at the level of definition files. I.e. d3-time is not a
/// dependency of d3-axis in the D3 Javascript implementation. This minimal contract
/// is based on an analysis of how d3-axis passes a time interval argument into a time scale,
/// if a time scale was set using Axis.scale(...). And in turn on how a time scale uses
/// the time interval when creating ticks from it.
@anonymous
@JS()
abstract class AxisTimeInterval {
  external List<DateTime> range(DateTime start, DateTime stop, [num step]);
}

/// A helper interface to which a scale passed into axis must conform (at a minimum)
/// for axis to use the scale without error
@anonymous
@JS()
abstract class AxisScale<Domain> {
  external dynamic /*num|dynamic*/ call(Domain x);
  external List<Domain> domain();
  external List<num> range();
  external AxisScale copy();
  external num bandwidth();
}

/// A helper type to alias elements which can serve as a container for an axis
/*export type AxisContainerElement = SVGSVGElement | SVGGElement;*/
/// Interface defining an axis generator. The generic <Domain> is the type of the axis domain
@anonymous
@JS()
abstract class Axis<Domain> {
  /// Render the axis to the given context.
  /*external void call(Selection<SvgSvgElement|GElement,dynamic,dynamic,dynamic> context);*/
  /// Render the axis to the given context.
  /*external void call(TransitionLike<SvgSvgElement|GElement,dynamic> context);*/
  external void call(
      dynamic /*Selection<SvgSvgElement|GElement,dynamic,dynamic,dynamic>|TransitionLike<SvgSvgElement|GElement,dynamic>*/ context);

  /// Gets the current scale underlying the axis.
  /*external A scale<A extends AxisScale<Domain>>();*/
  /// Sets the scale and returns the axis.
  /*external Axis scale(AxisScale<Domain> scale);*/
  external dynamic /*A|Axis*/ scale/*<A extends AxisScale<Domain>>*/(
      [AxisScale<Domain> scale]);

  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /*external Axis ticks(num count, [String specifier]);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /// Use with a TIME SCALE ONLY.
  /// in d3-time. E.g. as obtained by passing in d3.timeMinute.every(15).
  /*external Axis ticks(AxisTimeInterval interval, [String specifier]);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /*external Axis ticks(dynamic arg0,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);*/
  external Axis ticks(
      dynamic /*num|AxisTimeInterval|dynamic*/ count_interval_arg0,
      [dynamic /*String|List<dynamic>*/ specifier_args]);

  /// Get an array containing the currently set arguments to be passed into scale.ticks and scale.tickFormat.
  /*external List<dynamic> tickArguments();*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /*external Axis tickArguments(Tuple of <num> args);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /// element is a string representing the format specifier to customize how the tick values are formatted.
  /*external Axis tickArguments(Tuple of <num,String> args);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /// Use with a TIME SCALE ONLY.
  /// This is typically a TimeInterval/CountableTimeInterval as defined in d3-time. E.g. as obtained by passing in d3.timeMinute.every(15).
  /*external Axis tickArguments(Tuple of <AxisTimeInterval> args);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /// Use with a TIME SCALE ONLY.
  /// This is typically a TimeInterval/CountableTimeInterval as defined in d3-time. E.g. as obtained by passing in d3.timeMinute.every(15).
  /// The second element is a string representing the format specifier to customize how the tick values are formatted.
  /*external Axis tickArguments(Tuple of <AxisTimeInterval,String> args);*/
  /// Sets the arguments that will be passed to scale.ticks and scale.tickFormat when the axis is rendered, and returns the axis generator.
  /*external Axis tickArguments(List<dynamic> args);*/
  external dynamic /*List<dynamic>|Axis*/ tickArguments(
      [dynamic /*Tuple of <num>|Tuple of <num,String>|Tuple of <AxisTimeInterval>|Tuple of <AxisTimeInterval,String>|List<dynamic>*/ args]);

  /// Returns the current tick values, which defaults to null.
  /*external List<Domain>|Null tickValues();*/
  /// Specified values to be used for ticks rather than using the scale’s automatic tick generator.
  /// The explicit tick values take precedent over the tick arguments set by axis.tickArguments.
  /// However, any tick arguments will still be passed to the scale’s tickFormat function if a
  /// tick format is not also set.
  /*external Axis tickValues(List<Domain> values);*/
  /// Clears any previously-set explicit tick values and reverts back to the scale’s tick generator.
  /*external Axis tickValues(Null values);*/
  external dynamic /*List<Domain>|Axis*/ tickValues([List<Domain> values]);

  /// Returns the currently set tick format function, which defaults to null.
  /*external Func2<Domain, num, String>|Null tickFormat();*/
  /// Sets the tick format function and returns the axis.
  /// for display purposes. When invoked, the format function is also passed a second argument representing the zero-based index
  /// of the tick label in the array of generated tick labels.
  /*external Axis tickFormat(String format(Domain domainValue, num index));*/
  /// Reset the tick format function. A null format indicates that the scale’s
  /// default formatter should be used, which is generated by calling scale.tickFormat.
  /// In this case, the arguments specified by axis.tickArguments
  /// are likewise passed to scale.tickFormat.
  /*external Axis tickFormat(Null format);*/
  external dynamic /*Func2<Domain, num, String>|Axis*/ tickFormat(
      [String format(Domain domainValue, num index)]);

  /// Get the current inner tick size, which defaults to 6.
  /*external num tickSize();*/
  /// Set the inner and outer tick size to the specified value and return the axis.
  /*external Axis tickSize(num size);*/
  external dynamic /*num|Axis*/ tickSize([num size]);

  /// Get the current inner tick size, which defaults to 6.
  /// The inner tick size controls the length of the tick lines,
  /// offset from the native position of the axis.
  /*external num tickSizeInner();*/
  /// Set the inner tick size to the specified value and return the axis.
  /// The inner tick size controls the length of the tick lines,
  /// offset from the native position of the axis.
  /*external Axis tickSizeInner(num size);*/
  external dynamic /*num|Axis*/ tickSizeInner([num size]);

  /// Get the current outer tick size, which defaults to 6.
  /// The outer tick size controls the length of the square ends of the domain path,
  /// offset from the native position of the axis. Thus, the “outer ticks” are not actually
  /// ticks but part of the domain path, and their position is determined by the associated
  /// scale’s domain extent. Thus, outer ticks may overlap with the first or last inner tick.
  /// An outer tick size of 0 suppresses the square ends of the domain path,
  /// instead producing a straight line.
  /*external num tickSizeOuter();*/
  /// Set the current outer tick size and return the axis.
  /// The outer tick size controls the length of the square ends of the domain path,
  /// offset from the native position of the axis. Thus, the “outer ticks” are not actually
  /// ticks but part of the domain path, and their position is determined by the associated
  /// scale’s domain extent. Thus, outer ticks may overlap with the first or last inner tick.
  /// An outer tick size of 0 suppresses the square ends of the domain path,
  /// instead producing a straight line.
  /*external Axis tickSizeOuter(num size);*/
  external dynamic /*num|Axis*/ tickSizeOuter([num size]);

  /// Get the current padding, which defaults to 3.
  /*external num tickPadding();*/
  /// Set the current padding and return the axis.
  /*external Axis tickPadding(num padding);*/
  external dynamic /*num|Axis*/ tickPadding([num padding]);
}

/// Constructs a new top-oriented axis generator for the given scale, with empty tick arguments,
/// a tick size of 6 and padding of 3. In this orientation, ticks are drawn above the horizontal domain path.
@JS()
external Axis<dynamic/*=Domain*/ > axisTop/*<Domain>*/(
    AxisScale<dynamic/*=Domain*/ > scale);

/// Constructs a new right-oriented axis generator for the given scale, with empty tick arguments,
/// a tick size of 6 and padding of 3. In this orientation, ticks are drawn to the right of the vertical domain path.
@JS()
external Axis<dynamic/*=Domain*/ > axisRight/*<Domain>*/(
    AxisScale<dynamic/*=Domain*/ > scale);

/// Constructs a new bottom-oriented axis generator for the given scale, with empty tick arguments,
/// a tick size of 6 and padding of 3. In this orientation, ticks are drawn below the horizontal domain path.
@JS()
external Axis<dynamic/*=Domain*/ > axisBottom/*<Domain>*/(
    AxisScale<dynamic/*=Domain*/ > scale);

/// Constructs a new left-oriented axis generator for the given scale, with empty tick arguments,
/// a tick size of 6 and padding of 3. In this orientation, ticks are drawn to the left of the vertical domain path.
@JS()
external Axis<dynamic/*=Domain*/ > axisLeft/*<Domain>*/(
    AxisScale<dynamic/*=Domain*/ > scale);

