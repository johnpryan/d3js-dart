@JS()
library node_modules._types.d3_time_format;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for d3JS d3-time-format module v2.0.2
/// Project: https://github.com/d3/d3-time-format/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Specification of time locale to use when creating a new TimeLocaleObject
@anonymous
@JS()
abstract class TimeLocaleDefinition {
  /// The date and time (%c) format specifier (e.g., "%a %b %e %X %Y").
  external String get dateTime;
  external set dateTime(String v);

  /// The date (%x) format specifier (e.g., "%m/%d/%Y").
  external String get date;
  external set date(String v);

  /// The time (%X) format specifier (e.g., "%H:%M:%S").
  external String get time;
  external set time(String v);

  /// The A.M. and P.M. equivalents (e.g., ["AM", "PM"]).
  external List<String> /*Tuple of <String,String>*/ get periods;
  external set periods(List<String> /*Tuple of <String,String>*/ v);

  /// The full names of the weekdays, starting with Sunday.
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String>*/ get days;
  external set days(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ v);

  /// The abbreviated names of the weekdays, starting with Sunday.
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String>*/ get shortDays;
  external set shortDays(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ v);

  /// The full names of the months (starting with January).
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ get months;
  external set months(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ v);

  /// the abbreviated names of the months (starting with January).
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ get shortMonths;
  external set shortMonths(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ v);
  external factory TimeLocaleDefinition(
      {String dateTime,
      String date,
      String time,
      List<String> /*Tuple of <String,String>*/ periods,
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ days,
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ shortDays,
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ months,
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ shortMonths});
}

@anonymous
@JS()
abstract class TimeLocaleObject {
  external Func1<DateTime, String> format(String specifier);
  external Func1<String, DateTime /*DateTime|Null*/ > parse(String specifier);
  external Func1<DateTime, String> utcFormat(String specifier);
  external Func1<String, DateTime /*DateTime|Null*/ > utcParse(
      String specifier);
}

/// Create a new time-locale-based object which exposes time-formatting
/// methods for the specified locale definition.
@JS()
external TimeLocaleObject timeFormatLocale(TimeLocaleDefinition timeLocale);

/// Create a new time-locale-based object which exposes time-formatting
/// methods for the specified locale definition. The new time locale definition
/// will be set as the new default time locale.
@JS()
external TimeLocaleObject timeFormatDefaultLocale(
    TimeLocaleDefinition defaultTimeLocale);
@JS()
external Func1<DateTime, String> timeFormat(String specifier);
@JS()
external Func1<String, DateTime /*DateTime|Null*/ > timeParse(String specifier);
@JS()
external Func1<DateTime, String> utcFormat(String specifier);
@JS()
external Func1<String, DateTime /*DateTime|Null*/ > utcParse(String specifier);
@JS()
external String isoFormat(DateTime date);
@JS()
external DateTime isoParse(String dateString);

