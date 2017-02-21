@JS()
library node_modules._types.d3_time;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-time module 1.0
/// Project: https://github.com/d3/d3-time/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.4
/// ---------------------------------------------------------------
/// Interfaces
/// ---------------------------------------------------------------
/// A D3 Time Interval
@anonymous
@JS()
abstract class TimeInterval {
  /// Returns a new date representing the latest interval boundary date before or equal to date.
  /// This function is an alias for "TimeInterval.floor(date)". For example, timeYear(date) and timeYear.floor(date) are equivalent.
  /// For example, timeDay(date) typically returns 12:00 AM local time on the given date.
  /// This function is idempotent: if the specified date is already floored to the current interval, a new date with an identical time is returned.
  /// Furthermore, the returned date is the minimum expressible value of the associated interval, such that interval.floor(interval.floor(date) - 1) returns the preceeding interval boundary date.
  /// Note that the == and === operators do not compare by value with Date objects, and thus you cannot use them to tell whether the specified date has already been floored. Instead, coerce to a number and then compare.
  /// This is more reliable than testing whether the time is 12:00 AM, as in some time zones midnight may not exist due to daylight saving.
  external DateTime call(DateTime date);

  /// Returns a new date representing the latest interval boundary date before or equal to date.
  /// For example, timeDay.floor(date) typically returns 12:00 AM local time on the given date.
  /// This method is idempotent: if the specified date is already floored to the current interval, a new date with an identical time is returned.
  /// Furthermore, the returned date is the minimum expressible value of the associated interval, such that interval.floor(interval.floor(date) - 1) returns the preceeding interval boundary date.
  /// Note that the == and === operators do not compare by value with Date objects, and thus you cannot use them to tell whether the specified date has already been floored. Instead, coerce to a number and then compare.
  /// This is more reliable than testing whether the time is 12:00 AM, as in some time zones midnight may not exist due to daylight saving.
  external DateTime floor(DateTime date);

  /// Returns a new date representing the closest interval boundary date to date.
  /// For example, timeDay.round(date) typically returns 12:00 AM local time on the given date if it is on or before noon,
  /// and 12:00 AM of the following day if it is after noon.
  /// This method is idempotent: if the specified date is already rounded to the current interval, a new date with an identical time is returned.
  external DateTime round(DateTime date);

  /// Returns a new date representing the earliest interval boundary date after or equal to date.
  /// For example, timeDay.ceil(date) typically returns 12:00 AM local time on the date following the given date.
  /// This method is idempotent: if the specified date is already ceilinged to the current interval, a new date with an identical time is returned. Furthermore,
  /// the returned date is the maximum expressible value of the associated interval, such that interval.ceil(interval.ceil(date) + 1) returns the following interval boundary date.
  external DateTime ceil(DateTime date);

  /// Returns a new date equal to date plus step intervals.
  /// If step is not specified it defaults to 1.
  /// This method does not round the specified date to the interval. For example, if date is today at 5:34 PM,
  /// then timeDay.offset(date, 1) returns 5:34 PM tomorrow (even if daylight saving changes!).
  /// if step is zero, then a copy of the specified date is returned; if step is not an integer, it is floored.
  external DateTime offset(DateTime date, [num step]);

  /// Returns an array of dates representing every interval boundary after or equal to start (inclusive) and before stop (exclusive).
  /// If step is specified, then every step-th boundary will be returned; for example, for the timeDay interval a step of 2 will return every other day.
  /// If step is not an integer, it is floored.
  /// The first date in the returned array is the earliest boundary after or equal to start; subsequent dates are offset by step intervals and floored.
  /// Thus, two overlapping ranges may be inconsistent.
  /// To make ranges consistent when a step is specified, use CountableInterval.every instead.
  external List<DateTime> range(DateTime start, DateTime stop, [num step]);

  /// Returns a new interval that is a filtered subset of this interval using the specified test function.
  external TimeInterval filter(bool test(DateTime date));
}

/// A D3 Countable Time Interval
@anonymous
@JS()
abstract class CountableTimeInterval implements TimeInterval {
  /// Returns the number of interval boundaries after start (exclusive) and before or equal to end (inclusive).
  /// Note that this behavior is slightly different than interval.range,
  /// because its purpose is to return the zero-based number of the specified end date relative to the specified start date.
  external num count(DateTime start, DateTime end);

  /// Returns a filtered view of this interval representing every stepth date.
  /// The meaning of step is dependent on this interval’s parent interval as defined by the field function.
  /// For example, timeMinute.every(15) returns an interval representing every fifteen minutes,
  /// starting on the hour: :00, :15, :30, :45, etc. Note that for some intervals, the resulting dates may not be uniformly-spaced;
  /// timeDay’s parent interval is timeMonth, and thus the interval number resets at the start of each month.
  /// If step is not valid, returns null. If step is one, returns this interval.
  /// This method can be used in conjunction with interval.range to ensure that two overlapping ranges are consistent.
  external TimeInterval /*TimeInterval|Null*/ every(num step);
}

/// ---------------------------------------------------------------
/// Custom (Countable)Interval Factories
/// ---------------------------------------------------------------
/// Constructs a new custom interval given the specified floor and offset functions.
/// The returned custom interval is not countable, i.e. does not exposee the methods "count(..)" and "every(...)".
/*external TimeInterval timeInterval(
    void floor(DateTime date), void offset(DateTime date, num step));*/
/// Constructs a new custom interval given the specified floor, offset and count functions.
/// The returned custom interval is countable and exposes the methods "count(..)" and "every(...)".
/// Note: due to an internal optimization, the specified count function must not invoke interval.count on other time intervals.
/// Note: due to an internal optimization, the specified count function must not invoke interval.count on other time intervals.
/// corresponding to the number of boundaries between this date (exclusive) and the latest previous parent boundary.
/// For example, for the timeDay interval, this returns the number of days since the start of the month. If a field function is not specified,
/// it defaults to counting the number of interval boundaries since the UNIX epoch of January 1, 1970 UTC. The field function defines the behavior of interval.every.
/*external CountableTimeInterval timeInterval(
    void floor(DateTime date),
    void offset(DateTime date, num step),
    num count(DateTime start, DateTime end),
    [num field(DateTime date)]);*/
@JS()
external Function /*TimeInterval|CountableTimeInterval*/ timeInterval(
    void floor(DateTime date), void offset(DateTime date, num step),
    [num count(DateTime start, DateTime end), num field(DateTime date)]);

/// ---------------------------------------------------------------
/// Built-In Factories and Date Array Creators
/// ---------------------------------------------------------------
/// local time ----------------------------------------------------------
/// Milliseconds Interval in Local Time; the shortest available time unit.
@JS()
external CountableTimeInterval get timeMillisecond;
@JS()
external set timeMillisecond(CountableTimeInterval v);

/// This is a convenience alias for timeMillisecond.range(...).
@JS()
external List<DateTime> timeMilliseconds(DateTime start, DateTime stop,
    [num step]);

/// Seconds Interval in Local Time; seconds (e.g., 01:23:45.0000 AM); 1,000 milliseconds.
@JS()
external CountableTimeInterval get timeSecond;
@JS()
external set timeSecond(CountableTimeInterval v);

/// This is a convenience alias for timeSecond.range(...).
@JS()
external List<DateTime> timeSeconds(DateTime start, DateTime stop, [num step]);

/// Minutes Interval in Local Time; minutes (e.g., 01:02:00 AM); 60 seconds. Note that ECMAScript ignores leap seconds.
@JS()
external CountableTimeInterval get timeMinute;
@JS()
external set timeMinute(CountableTimeInterval v);

/// This is a convenience alias for timeMinute.range(...).
@JS()
external List<DateTime> timeMinutes(DateTime start, DateTime stop, [num step]);

/// Hours Interval in Local Time; Hours (e.g., 01:00 AM); 60 minutes.
/// Note that advancing time by one hour in local time can return the same hour or skip an hour due to daylight saving.
@JS()
external CountableTimeInterval get timeHour;
@JS()
external set timeHour(CountableTimeInterval v);

/// This is a convenience alias for timeHour.range(...).
@JS()
external List<DateTime> timeHours(DateTime start, DateTime stop, [num step]);

/// Days Interval in Local Time; days (e.g., February 7, 2012 at 12:00 AM); typically 24 hours.
/// Days in local time may range from 23 to 25 hours due to daylight saving.
@JS()
external CountableTimeInterval get timeDay;
@JS()
external set timeDay(CountableTimeInterval v);

/// This is a convenience alias for timeDay.range(...).
@JS()
external List<DateTime> timeDays(DateTime start, DateTime stop, [num step]);

/// Week Interval in Local Time. Alias for sunday; 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeWeek;
@JS()
external set timeWeek(CountableTimeInterval v);

/// This is a convenience alias for timeWeek.range(...).
@JS()
external List<DateTime> timeWeeks(DateTime start, DateTime stop, [num step]);

/// Week Interval for Sunday-based weeks in Local Time (e.g., February 5, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeSunday;
@JS()
external set timeSunday(CountableTimeInterval v);

/// This is a convenience alias for timeSunday.range(...).
@JS()
external List<DateTime> timeSundays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Monday-based weeks in Local Time (e.g., February 6, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeMonday;
@JS()
external set timeMonday(CountableTimeInterval v);

/// This is a convenience alias for timeMonday.range(...).
@JS()
external List<DateTime> timeMondays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Tuesday-based weeks in Local Time (e.g., February 7, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeTuesday;
@JS()
external set timeTuesday(CountableTimeInterval v);

/// This is a convenience alias for timeTuesday.range(...).
@JS()
external List<DateTime> timeTuesdays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Wednesday-based weeks in Local Time (e.g., February 8, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeWednesday;
@JS()
external set timeWednesday(CountableTimeInterval v);

/// This is a convenience alias for timeWednesday.range(...).
@JS()
external List<DateTime> timeWednesdays(DateTime start, DateTime stop,
    [num step]);

/// Week Interval for Thursday-based weeks in Local Time (e.g., February 9, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeThursday;
@JS()
external set timeThursday(CountableTimeInterval v);

/// This is a convenience alias for timeThursday.range(...).
@JS()
external List<DateTime> timeThursdays(DateTime start, DateTime stop,
    [num step]);

/// Week Interval for Friday-based weeks in Local Time (e.g., February 10, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeFriday;
@JS()
external set timeFriday(CountableTimeInterval v);

/// This is a convenience alias for timeFriday.range(...).
@JS()
external List<DateTime> timeFridays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Saturday-based weeks in Local Time (e.g., February 11, 2012 at 12:00 AM).
/// 7 days and typically 168 hours.
/// Weeks in local time may range from 167 to 169 hours due on daylight saving.
@JS()
external CountableTimeInterval get timeSaturday;
@JS()
external set timeSaturday(CountableTimeInterval v);

/// This is a convenience alias for timeSaturday.range(...).
@JS()
external List<DateTime> timeSaturdays(DateTime start, DateTime stop,
    [num step]);

/// Month Interval in Local Time; months (e.g., February 1, 2012 at 12:00 AM); ranges from 28 to 31 days.
@JS()
external CountableTimeInterval get timeMonth;
@JS()
external set timeMonth(CountableTimeInterval v);

/// This is a convenience alias for timeMonth.range(...).
@JS()
external List<DateTime> timeMonths(DateTime start, DateTime stop, [num step]);

/// Year Interval in Local Time; years (e.g., January 1, 2012 at 12:00 AM); ranges from 365 to 366 days.
@JS()
external CountableTimeInterval get timeYear;
@JS()
external set timeYear(CountableTimeInterval v);

/// This is a convenience alias for timeYear.range(...).
@JS()
external List<DateTime> timeYears(DateTime start, DateTime stop, [num step]);

/// utc Universal Coordinated Time ----------------------------------------------------------
/// Milliseconds Interval in Univarsal Coordinated Time (UTC); the shortest available time unit.
@JS()
external CountableTimeInterval get utcMillisecond;
@JS()
external set utcMillisecond(CountableTimeInterval v);

/// This is a convenience alias for utcMilliesecond.range(...).
@JS()
external List<DateTime> utcMilliseconds(DateTime start, DateTime stop,
    [num step]);

/// Seconds Interval in Univarsal Coordinated Time (UTC); seconds (e.g., 01:23:45.0000 AM); 1,000 milliseconds.
@JS()
external CountableTimeInterval get utcSecond;
@JS()
external set utcSecond(CountableTimeInterval v);

/// This is a convenience alias for utcSecond.range(...).
@JS()
external List<DateTime> utcSeconds(DateTime start, DateTime stop, [num step]);

/// Minutes Interval in Univarsal Coordinated Time (UTC); minutes (e.g., 01:02:00 AM); 60 seconds. Note that ECMAScript ignores leap seconds.
@JS()
external CountableTimeInterval get utcMinute;
@JS()
external set utcMinute(CountableTimeInterval v);

/// This is a convenience alias for utcMinute.range(...).
@JS()
external List<DateTime> utcMinutes(DateTime start, DateTime stop, [num step]);

/// Hours Interval in Univarsal Coordinated Time (UTC); Hours (e.g., 01:00 AM); 60 minutes.
@JS()
external CountableTimeInterval get utcHour;
@JS()
external set utcHour(CountableTimeInterval v);

/// This is a convenience alias for utcHour.range(...).
@JS()
external List<DateTime> utcHours(DateTime start, DateTime stop, [num step]);

/// Days Interval in Univarsal Coordinated Time (UTC); days (e.g., February 7, 2012 at 12:00 AM); 24 hours.
@JS()
external CountableTimeInterval get utcDay;
@JS()
external set utcDay(CountableTimeInterval v);

/// This is a convenience alias for utcDay.range(...).
@JS()
external List<DateTime> utcDays(DateTime start, DateTime stop, [num step]);

/// Week Interval in Local Time. Alias for sunday; 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcWeek;
@JS()
external set utcWeek(CountableTimeInterval v);

/// This is a convenience alias for utcWeek.range(...).
@JS()
external List<DateTime> utcWeeks(DateTime start, DateTime stop, [num step]);

/// Week Interval for Sunday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 5, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcSunday;
@JS()
external set utcSunday(CountableTimeInterval v);

/// This is a convenience alias for utcSunday.range(...).
@JS()
external List<DateTime> utcSundays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Monday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 6, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcMonday;
@JS()
external set utcMonday(CountableTimeInterval v);

/// This is a convenience alias for utcMonday.range(...).
@JS()
external List<DateTime> utcMondays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Tuesday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 7, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcTuesday;
@JS()
external set utcTuesday(CountableTimeInterval v);

/// This is a convenience alias for utcTuesday.range(...).
@JS()
external List<DateTime> utcTuesdays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Wednesday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 8, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcWednesday;
@JS()
external set utcWednesday(CountableTimeInterval v);

/// This is a convenience alias for utcWednesday.range(...).
@JS()
external List<DateTime> utcWednesdays(DateTime start, DateTime stop,
    [num step]);

/// Week Interval for Thursday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 9, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcThursday;
@JS()
external set utcThursday(CountableTimeInterval v);

/// This is a convenience alias for utcThursday.range(...).
@JS()
external List<DateTime> utcThursdays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Friday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 10, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcFriday;
@JS()
external set utcFriday(CountableTimeInterval v);

/// This is a convenience alias for utcFriday.range(...).
@JS()
external List<DateTime> utcFridays(DateTime start, DateTime stop, [num step]);

/// Week Interval for Saturday-based weeks in Univarsal Coordinated Time (UTC) (e.g., February 11, 2012 at 12:00 AM).
/// 7 days and 168 hours.
@JS()
external CountableTimeInterval get utcSaturday;
@JS()
external set utcSaturday(CountableTimeInterval v);

/// This is a convenience alias for utcSaturday.range(...).
@JS()
external List<DateTime> utcSaturdays(DateTime start, DateTime stop, [num step]);

/// Month Interval in Univarsal Coordinated Time (UTC); months (e.g., February 1, 2012 at 12:00 AM); ranges from 28 to 31 days.
@JS()
external CountableTimeInterval get utcMonth;
@JS()
external set utcMonth(CountableTimeInterval v);

/// This is a convenience alias for utcMonth.range(...).
@JS()
external List<DateTime> utcMonths(DateTime start, DateTime stop, [num step]);

/// Year Interval in Univarsal Coordinated Time (UTC); years (e.g., January 1, 2012 at 12:00 AM); ranges from 365 to 366 days.
@JS()
external CountableTimeInterval get utcYear;
@JS()
external set utcYear(CountableTimeInterval v);

/// This is a convenience alias for utcYear.range(...).
@JS()
external List<DateTime> utcYears(DateTime start, DateTime stop, [num step]);

