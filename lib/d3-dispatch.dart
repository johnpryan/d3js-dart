@JS()
library node_modules._types.d3_dispatch;

import "package:js/js.dart";
import "dart:html" show EventTarget;

/// Type definitions for D3JS d3-dispatch module v1.0.1
/// Project: https://github.com/d3/d3-dispatch/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class Dispatch<T extends EventTarget> {
  external void apply(String type, [T that, List<dynamic> args]);
  external void JS$call(String type,
      [T that,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external Dispatch<T> copy();
  /*external (this: T, ...args: any[]) => void on(String typenames);*/
  /*external Dispatch on(String typenames, Null callback);*/
  /*external Dispatch on(String typenames, (this: T, ...args: any[]) => void callback);*/
  external dynamic /*(this: T, ...args: any[]) => void|Dispatch*/ on(
      String typenames,
      [Function /*(this: T, ...args: any[]) => void*/ callback]);
}

@JS()
external Dispatch<dynamic/*=T*/ > dispatch/*<T extends EventTarget>*/(
    [String types1,
    String types2,
    String types3,
    String types4,
    String types5]);

