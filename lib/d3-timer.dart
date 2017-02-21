@JS()
library node_modules._types.d3_timer;

import "package:js/js.dart";

/// Type definitions for d3JS d3-timer module v1.0.2
/// Project: https://github.com/d3/d3-timer/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Returns the current time as defined by performance.now if available, and Date.now if not.
/// The current time is updated at the start of a frame; it is thus consistent during the frame, and any timers scheduled during the same frame will be synchronized.
/// If this method is called outside of a frame, such as in response to a user event, the current time is calculated and then fixed until the next frame,
/// again ensuring consistent timing during event handling.
@JS()
external num now();

@anonymous
@JS()
abstract class Timer {
  /// Restart a timer with the specified callback and optional delay and time.
  /// This is equivalent to stopping this timer and creating a new timer with the specified arguments,
  /// although this timer retains the original invocation priority.
  /// elapsed time since the timer became active in milliseconds.
  external void restart(void callbackFn(num elapsed), [num delay, num time]);

  /// Stop the timer.
  external void stop();
}

/// Schedules and returns a new timer, invoking the specified callback repeatedly until the timer is stopped.
/// The callback is passed the (apparent) elapsed time since the timer became active.
/// elapsed time since the timer became active in milliseconds.
@JS()
external Timer timer(void callback(num elapsed), [num delay, num time]);

/// Immediately invoke any eligible timer callbacks
@JS()
external void timerFlush();

/// Schedules and returns a new timer, invoking the specified callback. The timer is stopped automatically
/// on its first callback. The callback is passed the (apparent) elapsed time since the timer became active.
/// elapsed time since the timer became active in milliseconds.
@JS()
external Timer timeout(void callback(num elapsed), [num delay, num time]);

/// Schedules and returns a new timer, invoking the specified callback repeatedly every 'delay' milliseconds
/// until the timer is stopped.
/// The callback is passed the (apparent) elapsed time since the timer became active.
/// elapsed time since the timer became active in milliseconds.
/// If not specified, the interval timer behaves like the regular timer.
@JS()
external Timer interval(void callback(num elapsed), [num delay, num time]);

