@JS()
library node_modules._types.d3_queue;

import "package:js/js.dart";

/// Type definitions for D3JS d3-queue module v3.0.2
/// Project: https://github.com/d3/d3-queue/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// A d3-queue queue object as returned by queue(...)
@anonymous
@JS()
abstract class Queue {
  /// Adds the specified asynchronous task callback to the queue, with any optional arguments.
  /// specified optional arguments and an additional callback as the last argument;
  /// the callback must be invoked by the task when it finishes.
  /// The task must invoke the callback with two arguments: the error, if any, and the result of the task.
  /// To return multiple results from a single callback, wrap the results in an object or array.
  external Queue defer(Function /*(...args: Array<any>) => void*/ task,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Aborts any active tasks, invoking each active task’s task.abort function, if any.
  /// Also prevents any new tasks from starting, and immediately invokes the queue.await or
  /// queue.awaitAll callback with an error indicating that the queue was aborted.
  external Queue abort();

  /// Sets the callback to be invoked when all deferred tasks have finished (individual result arguments).
  /// have completed. The first argument to the callback is the first error that occurred, or null if no error occurred.
  /// If an error occurred, there are no additional arguments to the callback. Otherwise,
  /// the callback is passed each result as an additional argument.
  external Queue JS$await(
      Function /*(error: any | null, ...results: Array<any>) => void*/ callback);

  /// Sets the callback to be invoked when all deferred tasks have finished (results array).
  /// have completed. The first argument to the callback is the first error that occurred,
  /// or null if no error occurred. If an error occurred, there are no additional arguments to the callback.
  /// Otherwise, the callback is also passed an array of results as the second argument.
  external Queue awaitAll(
      void callback(dynamic /*dynamic|Null*/ error, [List<dynamic> results]));
}

/// Construct a new queue with the specified concurrency. If concurrency is not specified, the queue has infinite concurrency.
/// Otherwise, concurrency is a positive integer. For example, if concurrency is 1, then all tasks will be run in series.
/// If concurrency is 3, then at most three tasks will be allowed to proceed concurrently; this is useful, for example,
/// when loading resources in a web browser.
@JS()
external Queue queue([num concurrency]);

