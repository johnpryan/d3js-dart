@JS()
library node_modules._types.d3_brush;

import "package:js/js.dart";
import "d3-selection.dart" show Selection, ValueFn, TransitionLike;
import "dart:svg" show GElement;

/// Type definitions for D3JS d3-brush module 1.0
/// Project: https://github.com/d3/d3-brush/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.3
/// Type alias for a BrushSelection. For a two-dimensional brush, it must be defined as [[x0, y0], [x1, y1]],
/// where x0 is the minimum x-value, y0 is the minimum y-value, x1 is the maximum x-value, and y1 is the maximum y-value.
/// For an x-brush, it must be defined as [x0, x1]; for a y-brush, it must be defined as [y0, y1].
/*export type BrushSelection = [[number, number], [number, number]] | [number, number];*/
/// A D3 brush behavior
/// The generic refers to the type of the datum for the group element on which brush behavior is defined.
@anonymous
@JS()
abstract class BrushBehavior<Datum> {
  /// Applies the brush to the specified group, which must be a selection of SVG G elements.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /// For details see: [https://github.com/d3/d3-brush#_brush]
  external void call(Selection<GElement, Datum, dynamic, dynamic> group,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Clear the active selection of the brush on the specified SVG G element(s) selection.
  /*external void move(
    Selection<GElement, Datum, dynamic, dynamic> group, Null selection);*/
  /// Sets the active selection of the brush on the specified SVG G element(s) selection
  /// to the provided array.
  /// it must be defined as [[x0, y0], [x1, y1]], where x0 is the minimum x-value, y0 is the minimum y-value,
  /// x1 is the maximum x-value, and y1 is the maximum y-value. For an x-brush, it must be defined as [x0, x1];
  /// for a y-brush, it must be defined as [y0, y1].
  /*external void move(Selection<GElement,Datum,dynamic,dynamic> group, Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num> selection);*/
  /// Sets the active selection of the brush on the specified SVG G element(s) selection
  /// based on the array returned by a value function invoked for each selection element.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns an array specifying the new active brush selection.
  /// For a two-dimensional brush, it must be defined as [[x0, y0], [x1, y1]], where x0 is the minimum x-value, y0 is the minimum y-value,
  /// x1 is the maximum x-value, and y1 is the maximum y-value. For an x-brush, it must be defined as [x0, x1];
  /// for a y-brush, it must be defined as [y0, y1].
  /*external void move(Selection<GElement,Datum,dynamic,dynamic> group, ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>> selection);*/
  /// Clear the active selection of the brush on the specified SVG G element(s) transition.
  /*external void move(
    Selection<GElement, Datum, dynamic, dynamic> group, Null selection);*/
  /// Sets the active selection of the brush on the specified SVG G element(s) transition
  /// to the provided array.
  /// it must be defined as [[x0, y0], [x1, y1]], where x0 is the minimum x-value, y0 is the minimum y-value,
  /// x1 is the maximum x-value, and y1 is the maximum y-value. For an x-brush, it must be defined as [x0, x1];
  /// for a y-brush, it must be defined as [y0, y1].
  /*external void move(TransitionLike<GElement,Datum> group, Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num> selection);*/
  /// Sets the active selection of the brush on the specified SVG G element(s) transition
  /// based on the array returned by a value function invoked for each transitioning element.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns an array specifying the new active brush selection.
  /// For a two-dimensional brush, it must be defined as [[x0, y0], [x1, y1]], where x0 is the minimum x-value, y0 is the minimum y-value,
  /// x1 is the maximum x-value, and y1 is the maximum y-value. For an x-brush, it must be defined as [x0, x1];
  /// for a y-brush, it must be defined as [y0, y1].
  /*external void move(TransitionLike<GElement,Datum> group, ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>> selection);*/
  external void move(
      dynamic /*Selection<GElement,Datum,dynamic,dynamic>|TransitionLike<GElement,Datum>*/ group,
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ selection);

  /// Returns the current extent accessor.
  /*external ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent();*/
  /// Set the brushable extent to the specified array of points and returns this brush.
  /// The brush extent determines the size of the invisible overlay and also constrains the brush selection;
  /// the brush selection cannot go outside the brush extent.
  /// and [x1, y1] is the bottom-right corner.
  /*external BrushBehavior extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  /// Set the brushable extent to the specified array of points returned by the accessor function
  /// evaluated for each element in the selection/transition and returns this brush.
  /// The brush extent determines the size of the invisible overlay and also constrains the brush selection;
  /// the brush selection cannot go outside the brush extent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns an array of points [[x0, y0], [x1, y1]],
  /// where [x0, y0] is the top-left corner and [x1, y1] is the bottom-right corner.
  /*external BrushBehavior extent(ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent);*/
  external BrushBehavior extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Returns the current filter function.
  /*external ValueFn<GElement, Datum, bool> filter();*/
  /// Sets the filter to the specified filter function and returns the brush.
  /// If the filter returns falsey, the initiating event is ignored and no brush gesture is started.
  /// Thus, the filter determines which input events are ignored. The default filter ignores mousedown events on secondary buttons,
  /// since those buttons are typically intended for other purposes, such as the context menu.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns a boolean value.
  /*external BrushBehavior filter(ValueFn<GElement, Datum, bool> filterFn);*/
  external BrushBehavior filter([filterFn]);

  /// Returns the current handle size, which defaults to six.
  /*external num handleSize();*/
  /// Sets the size of the brush handles to the specified number and returns the brush.
  /// This method must be called before applying the brush to a selection;
  /// changing the handle size does not affect brushes that were previously rendered.
  /// The default size is 6.
  /*external BrushBehavior handleSize(num size);*/
  external dynamic /*num|BrushBehavior*/ handleSize([num size]);

  /// Returns the first currently-assigned listener matching the specified typenames, if any.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "brush.foo"" and "brush.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (at the start of a brush gesture, such as on mousedown), brush (when the brush moves, such as on mousemove), or
  /// end (at the end of a brush gesture, such as on mouseup.)
  /*external ValueFn<GElement,Datum,Null>|dynamic on(String typenames);*/
  /// Removes the current event listeners for the specified typenames, if any.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "brush.foo"" and "brush.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (at the start of a brush gesture, such as on mousedown), brush (when the brush moves, such as on mousemove), or
  /// end (at the end of a brush gesture, such as on mouseup.)
  /*external BrushBehavior on(String typenames, Null listener);*/
  /// Sets the event listener for the specified typenames and returns the brush.
  /// If an event listener was already registered for the same type and name,
  /// the existing listener is removed before the new listener is added.
  /// When a specified event is dispatched, each listener will be invoked with the same context and arguments as selection.on listeners.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "brush.foo"" and "brush.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (at the start of a brush gesture, such as on mousedown), brush (when the brush moves, such as on mousemove), or
  /// end (at the end of a brush gesture, such as on mouseup.)
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.
  /*external BrushBehavior on(
    String typenames, ValueFn<GElement, Datum, Null> listener);*/
  external dynamic /*dynamic|BrushBehavior*/ on(String typenames, [listener]);
}

/// Create a new two-dimensional brush.
/// The generic "Datum" refers to the type of the data of the selected svg:g element to
/// which the returned BrushBEhavoir will be applied.
@JS()
external BrushBehavior<dynamic/*=Datum*/ > brush/*<Datum>*/();

/// Creates a new one-dimensional brush along the x-dimension.
/// The generic "Datum" refers to the type of the data of the selected svg:g element to
/// which the returned BrushBEhavoir will be applied.
@JS()
external BrushBehavior<dynamic/*=Datum*/ > brushX/*<Datum>*/();

/// Creates a new one-dimensional brush along the y-dimension.
/// The generic "Datum" refers to the type of the data of the selected svg:g element to
/// which the returned BrushBEhavoir will be applied.
@JS()
external BrushBehavior<dynamic/*=Datum*/ > brushY/*<Datum>*/();

/// Return the current brush selection for the specified node. Internally, an element’s brush state is stored as element.__brush;
/// however, you should use this method rather than accessing it directly. If the given node has no selection, returns null.
/// Otherwise, the selection is defined as an array of numbers.
@JS()
external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>|Null*/ brushSelection(
    GElement node);

/// D3 brush event
/// The generic refers to the type of the datum for the group element on which brush was defined.
@anonymous
@JS()
abstract class D3BrushEvent<Datum> {
  /// The BrushBehavior associated with the event
  external BrushBehavior<Datum> get target;
  external set target(BrushBehavior<Datum> v);

  /// The event type for the BrushEvent
  external String /*'start'|'brush'|'end'|String*/ get type;
  external set type(String /*'start'|'brush'|'end'|String*/ v);

  /// The current brush selection associated with the event.
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ get selection;
  external set selection(
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ v);

  /// The underlying input event, such as mousemove or touchmove.
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory D3BrushEvent(
      {BrushBehavior<Datum> target,
      String /*'start'|'brush'|'end'|String*/ type,
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ selection,
      dynamic sourceEvent});
}

