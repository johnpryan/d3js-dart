@JS()
library node_modules._types.d3_array;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-array module 1.0
/// Project: https://github.com/d3/d3-array
/// Definitions by: Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>, Tom Wanzek <https://github.com/tomwanzek>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.2
/// --------------------------------------------------------------------------
/// Shared Types and Interfaces
/// --------------------------------------------------------------------------
/// Administrivia: JavaScript primitive types and Date
/*export type Primitive = number | string | boolean | Date;*/
/// Administrivia: anything with a valueOf(): number method is comparable, so we allow it in numeric operations
@anonymous
@JS()
abstract class Numeric {
  external num valueOf();
}

/// --------------------------------------------------------------------------------------
/// Descriptive Statistics
/// --------------------------------------------------------------------------------------
/// Return the maximum value in the array of strings using natural order.
/*external String|dynamic max(List<String> array);*/
/// Return the maximum value in the array of numbers using natural order.
/*external T|dynamic max<T extends Numeric>(List<T> array);*/
/// Return the maximum value in the array using natural order and a projection function to map values to strings.
/*external String|dynamic max<T>(List<T> array, String|dynamic|Null accessor(T datum, num index, List<T> array));*/
/// Return the maximum value in the array using natural order and a projection function to map values to easily-sorted values.
/*external U|dynamic max<T, U extends Numeric>(List<T> array, U|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*String|dynamic|T|U*/ max/*<T extends Numeric, U extends Numeric>*/(
    List<dynamic> /*List<String>|List<T>*/ array,
    [Func3<dynamic, num, List<dynamic>,
        dynamic> /*Func3<T, num, List<T>, String|dynamic|Null>|Func3<T, num, List<T>, U|dynamic|Null>*/ accessor]);

/// Return the minimum value in the array using natural order.
/*external String|dynamic min(List<String> array);*/
/// Return the minimum value in the array using natural order.
/*external T|dynamic min<T extends Numeric>(List<T> array);*/
/// Return the minimum value in the array using natural order.
/*external String|dynamic min<T>(List<T> array, String|dynamic|Null accessor(T datum, num index, List<T> array));*/
/// Return the minimum value in the array using natural order.
/*external U|dynamic min<T, U extends Numeric>(List<T> array, U|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*String|dynamic|T|U*/ min/*<T extends Numeric, U extends Numeric>*/(
    List<dynamic> /*List<String>|List<T>*/ array,
    [Func3<dynamic, num, List<dynamic>,
        dynamic> /*Func3<T, num, List<T>, String|dynamic|Null>|Func3<T, num, List<T>, U|dynamic|Null>*/ accessor]);

/// Return the min and max simultaneously.
/*external Tuple of <String,String>|Tuple of <dynamic,dynamic> extent(List<String> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <T,T>|Tuple of <dynamic,dynamic> extent<T extends Numeric>(List<T> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <String,String>|Tuple of <dynamic,dynamic> extent<T>(List<T> array, String|dynamic|Null accessor(T datum, num index, List<T> array));*/
/// Return the min and max simultaneously.
/*external Tuple of <U,U>|Tuple of <dynamic,dynamic> extent<T, U extends Numeric>(List<T> array, U|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*Tuple of <String,String>|Tuple of <dynamic,dynamic>|Tuple of <T,T>|Tuple of <U,U>*/ extent/*<T extends Numeric, U extends Numeric>*/(
    List<dynamic> /*List<String>|List<T>*/ array,
    [Func3<dynamic, num, List<dynamic>,
        dynamic> /*Func3<T, num, List<T>, String|dynamic|Null>|Func3<T, num, List<T>, U|dynamic|Null>*/ accessor]);

/// Return the mean of an array of numbers
/*external num|dynamic mean<T extends Numeric>(List<T|dynamic|Null> array);*/
/*external num|dynamic mean<T>(List<T> array, num|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*num|dynamic*/ mean/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ datum, num index, List<dynamic/*=T*/ > array)]);

/// Return the median of an array of numbers
/*external num|dynamic median<T extends Numeric>(List<T|dynamic|Null> array);*/
/*external num|dynamic median<T>(List<T> array, num|dynamic|Null accessor(T element, num i, List<T> array));*/
@JS()
external dynamic /*num|dynamic*/ median/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ element, num i, List<dynamic/*=T*/ > array)]);

/// Returns the p-quantile of an array of numbers
/*external num|dynamic quantile<T extends Numeric>(List<T|dynamic|Null> array, num p);*/
/*external num|dynamic quantile<T>(List<T> array, num p, num|dynamic|Null accessor(T element, num i, List<T> array));*/
@JS()
external dynamic /*num|dynamic*/ quantile/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array, num p,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ element, num i, List<dynamic/*=T*/ > array)]);

/// Compute the sum of an array of numbers.
/*external num sum<T extends Numeric>(List<T|dynamic|Null> array);*/
/// Compute the sum of an array, using the given accessor to convert values to numbers.
/*external num sum<T>(List<T> array, num|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external num sum/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ datum, num index, List<dynamic/*=T*/ > array)]);

/// Compute the standard deviation, defined as the square root of the bias-corrected variance, of the given array of numbers.
/*external num|dynamic deviation<T extends Numeric>(List<T|dynamic|Null> array);*/
/// Compute the standard deviation, defined as the square root of the bias-corrected variance, of the given array,
/// using the given accessor to convert values to numbers.
/*external num|dynamic deviation<T>(List<T> array, num|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*num|dynamic*/ deviation/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ datum, num index, List<dynamic/*=T*/ > array)]);

/// Compute an unbiased estimator of the population variance of the given array of numbers.
/*external num|dynamic variance<T extends Numeric>(List<T|dynamic|Null> array);*/
/// Compute an unbiased estimator of the population variance of the given array,
/// using the given accessor to convert values to numbers.
/*external num|dynamic variance<T>(List<T> array, num|dynamic|Null accessor(T datum, num index, List<T> array));*/
@JS()
external dynamic /*num|dynamic*/ variance/*<T extends Numeric>*/(
    List<dynamic> /*List<T|dynamic|Null>|List<T>*/ array,
    [dynamic /*num|dynamic|Null*/ accessor(
        dynamic/*=T*/ datum, num index, List<dynamic/*=T*/ > array)]);

/// --------------------------------------------------------------------------------------
/// Searching Arrays
/// --------------------------------------------------------------------------------------
/*external num|dynamic scan(List<num> array, [num comparator(num a, num b)]);*/
/*external num|dynamic scan<T>(List<T> array, num comparator(T a, T b));*/
@JS()
external dynamic /*num|dynamic*/ scan/*<T>*/(
    List<dynamic> /*List<num>|List<T>*/ array,
    [Function /*Func2<num, num, num>|Func2<T, T, num>*/ comparator]);
/*external num bisectLeft(List<num> array, num x, [num lo, num hi]);*/
/*external num bisectLeft(List<String> array, String x, [num lo, num hi]);*/
/*external num bisectLeft(List<DateTime> array, DateTime x, [num lo, num hi]);*/
@JS()
external num bisectLeft(
    List<DateTime> /*List<num>|List<String>|List<DateTime>*/ array,
    dynamic /*num|String|DateTime*/ x,
    [num lo,
    num hi]);
/*external num bisectRight(List<num> array, num x, [num lo, num hi]);*/
/*external num bisectRight(List<String> array, String x, [num lo, num hi]);*/
/*external num bisectRight(List<DateTime> array, DateTime x, [num lo, num hi]);*/
@JS()
external num bisectRight(
    List<DateTime> /*List<num>|List<String>|List<DateTime>*/ array,
    dynamic /*num|String|DateTime*/ x,
    [num lo,
    num hi]);
@JS()
external dynamic get bisect;
@JS()
external set bisect(dynamic v);

@anonymous
@JS()
abstract class Bisector<T, U> {
  external Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ get left;
  external set left(
      Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ v);
  external Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ get right;
  external set right(
      Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ v);
  external factory Bisector(
      {Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ left,
      Function /*(array: T[], x: U, lo?: number, hi?: number) => number*/ right});
}

/*external Bisector<T,U> bisector<T, U>(num comparator(T a, U b));*/
/*external Bisector<T,U> bisector<T, U>(U accessor(T x));*/
@JS()
external Bisector<dynamic/*=T*/, dynamic/*=U*/ > bisector/*<T, U>*/(
    Function /*Func2<T, U, num>|Func1<T, U>*/ comparator_accessor);

/// NB. this is limited to primitive values due to D3's use of the <, >, and >= operators. Results get weird for object instances.
/// Compares two primitive values for sorting (in ascending order).
@JS()
external num ascending(dynamic /*num|String|bool|DateTime|dynamic*/ a,
    dynamic /*num|String|bool|DateTime|dynamic*/ b);

/// NB. this is limited to primitive values due to D3's use of the <, >, and >= operators. Results get weird for object instances.
/// Compares two primitive values for sorting (in ascending order).
@JS()
external num descending(dynamic /*num|String|bool|DateTime|dynamic*/ a,
    dynamic /*num|String|bool|DateTime|dynamic*/ b);

/// --------------------------------------------------------------------------------------
/// Transforming Arrays
/// --------------------------------------------------------------------------------------
/// Merges the specified arrays into a single array.
@JS()
external List<dynamic/*=T*/ > merge/*<T>*/(List<List<dynamic/*=T*/ >> arrays);

/// For each adjacent pair of elements in the specified array, returns a new array of tuples of elements i and i - 1.
/// Returns the empty array if the input array has fewer than two elements.
@JS()
external List<List<dynamic/*=T*/ > /*Tuple of <T,T>*/ > pairs/*<T>*/(
    List<dynamic/*=T*/ > array);

/// Given the specified array, return an array corresponding to the list of indices in 'keys'.
/*external List<T> permute<T>(JSMap of <num,T> array, List<num> keys);*/
/// Given the specified object, return an array corresponding to the list of property names in 'keys'.
/*external List<T> permute<T>(JSMap of <String,T> object, List<String> keys);*/
@JS()
external List<dynamic/*=T*/ > permute/*<T>*/(
    dynamic /*JSMap of <num,T>|JSMap of <String,T>*/ array_object,
    List<dynamic> /*List<num>|List<String>*/ keys);

/// Generates a 0-based numeric sequence. The output range does not include 'stop'.
/*external List<num> range(num stop);*/
/// Generates a numeric sequence starting from the given start and stop values. 'step' defaults to 1. The output range does not include 'stop'.
/*external List<num> range(num start, num stop, [num step]);*/
@JS()
external List<num> range(num stop_start, [num stop, num step]);

/// Randomizes the order of the specified array using the Fisher–Yates shuffle.
@JS()
external List<dynamic/*=T*/ > shuffle/*<T>*/(List<dynamic/*=T*/ > array,
    [num lo, num hi]);

/// Generate an array of approximately count + 1 uniformly-spaced, nicely-rounded values between start and stop (inclusive).
@JS()
external List<num> ticks(num start, num stop, num count);

/// Generate an array of with the differences between adjecent ticks, had the same arguments
/// been passed to ticks(start, stop, count)
@JS()
external List<num> tickStep(num start, num stop, num count);

/// Transpose a matrix provided in Array of Arrays format.
@JS()
external List<List<dynamic/*=T*/ >> transpose/*<T>*/(
    List<List<dynamic/*=T*/ >> matrix);

/// Returns an array of arrays, where the ith array contains the ith element from each of the argument arrays.
/// The returned array is truncated in length to the shortest array in arrays. If arrays contains only a single array, the returned array
/// contains one-element arrays. With no arguments, the returned array is empty.
@JS()
external List<List<dynamic/*=T*/ >> zip/*<T>*/(
    [List<dynamic/*=T*/ > arrays1,
    List<dynamic/*=T*/ > arrays2,
    List<dynamic/*=T*/ > arrays3,
    List<dynamic/*=T*/ > arrays4,
    List<dynamic/*=T*/ > arrays5]);

/// --------------------------------------------------------------------------------------
/// Histogram
/// --------------------------------------------------------------------------------------
@anonymous
@JS()
abstract class Bin<Datum, Value extends dynamic /*num|DateTime*/ >
    implements List<Datum> {
  external Value get x0;
  external set x0(Value v);
  external Value get x1;
  external set x1(Value v);
}

/// Type definition for threshold generator which returns the count of recommended thresholds
typedef num ThresholdCountGenerator(List<num> values, [num min, num max]);

/// Type definition for threshold generator which returns an array of recommended thresholds
typedef List<Value> ThresholdArrayGenerator<Value extends dynamic /*num|DateTime*/ >(
    List<Value> values,
    [Value min,
    Value max]);

@anonymous
@JS()
abstract class HistogramGenerator<Datum,
    Value extends dynamic /*num|DateTime*/ > {
  external List<Bin<Datum, Value>> call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, Value> value();*/
  /*external HistogramGenerator value(
    Value valueAccessor(Datum d, num i, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, Value>|HistogramGenerator*/ value(
      [Value valueAccessor(Datum d, num i, List<Datum> data)]);
  /*external Func1<List<Value>, Tuple of <Value,Value>> domain();*/
  /*external HistogramGenerator domain(Tuple of <Value,Value> domain);*/
  /*external HistogramGenerator domain(Tuple of <Value,Value> domainAccessor(List<Value> values));*/
  external dynamic /*Func1<List<Value>, Tuple of <Value,Value>>|HistogramGenerator*/ domain(
      [dynamic /*Tuple of <Value,Value>|Func1<List<Value>, Tuple of <Value,Value>>*/ domain_domainAccessor]);
  /*external ThresholdCountGenerator|ThresholdArrayGenerator<Value> thresholds();*/
  /// Divide the domain uniformly into approximately count bins. IMPORTANT: This threshold
  /// setting approach only works, when the materialized values are numbers!
  /*external HistogramGenerator thresholds(num count);*/
  /// Set a threshold accessor function, which returns the desired number of bins.
  /// Divides the domain uniformly into approximately count bins. IMPORTANT: This threshold
  /// setting approach only works, when the materialized values are numbers!
  /// optionally the domain minimum and maximum. The function calcutates and returns the suggested
  /// number of bins.
  /*external HistogramGenerator thresholds(ThresholdCountGenerator count);*/
  /// Set the array of values to be used as thresholds in determining the bins.
  /// be of the same type as the materialized values of the histogram.
  /*external HistogramGenerator thresholds(List<Value> thresholds);*/
  /// Set a threshold accessor function, which returns the array of values to be used as
  /// thresholds in determining the bins.
  /// optionally the domain minimum and maximum. The function calcutates and returns the array of values to be used as
  /// thresholds in determining the bins.
  /*external HistogramGenerator thresholds(
    ThresholdArrayGenerator<Value> thresholds);*/
  external HistogramGenerator thresholds(
      [dynamic /*num|List<Value>*/ count_thresholds]);
}

/*external HistogramGenerator<num, num> histogram();*/
/*external HistogramGenerator<Datum,Value> histogram<Datum, Value extends num|DateTime>();*/
@JS()
external HistogramGenerator /*HistogramGenerator<num,num>|HistogramGenerator<Datum,Value>*/ histogram/*<Datum, Value>*/();

/// --------------------------------------------------------------------------------------
/// Histogram Thresholds
/// --------------------------------------------------------------------------------------
@JS()
external num thresholdFreedmanDiaconis(List<num> values, num min, num max);
@JS()
external num thresholdScott(List<num> values, num min, num max);
@JS()
external num thresholdSturges(List<num> values);

