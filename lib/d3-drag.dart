@JS()
library node_modules._types.d3_drag;

import "package:js/js.dart";
import "dart:html" show Element, HtmlElement, Window;
import "d3-selection.dart" show Selection, ValueFn;
import "dart:svg" show SvgSvgElement, GElement;

/// Type definitions for D3JS d3-drag module 1.0
/// Project: https://github.com/d3/d3-drag/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.2
/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------
/// DraggedElementBaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-drag' (and related code in 'd3-selection') trying to use properties internally which would otherwise not
/// be supported.
/*export type DraggedElementBaseType = Element;*/
/// Container element type usable for mouse/touch functions
/*export type DragContainerElement = HTMLElement | SVGSVGElement | SVGGElement;*/
/// The subject datum should at a minimum expose x and y properties, so that the relative position
/// of the subject and the pointer can be preserved during the drag gesture.
@anonymous
@JS()
abstract class SubjectPosition {
  /// x-coordinate
  external num get x;
  external set x(num v);

  /// y-coordinate
  external num get y;
  external set y(num v);
  external factory SubjectPosition({num x, num y});
}

/// A D3 Drag Behavior
/// The first generic refers to the type of element to be dragged.
/// The second generic refers to the type of the datum of the dragged element.
/// The third generic refers to the type of the drag behavior subject.
/// The subject of a drag gesture represents the thing being dragged.
/// It is computed when an initiating input event is received,
/// such as a mousedown or touchstart, immediately before the drag gesture starts.
/// The subject is then exposed as event.subject on subsequent drag events for this gesture.
/// The default subject is the datum of the element in the originating selection (see drag)
/// that received the initiating input event; if this datum is undefined,
/// an object representing the coordinates of the pointer is created.
/// When dragging circle elements in SVG, the default subject is thus the datum of the circle being dragged.
/// With Canvas, the default subject is the canvas element’s datum (regardless of where on the canvas you click).
/// In this case, a custom subject accessor would be more appropriate,
/// such as one that picks the closest circle to the mouse within a given search radius.
@anonymous
@JS()
abstract class DragBehavior<GElement extends Element, Datum, Subject>
    implements Function {
  /// Applies the drag behavior to the selected elements.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /// For details see: [https://github.com/d3/d3-drag#_drag]
  external void call(Selection<GElement, Datum, dynamic, dynamic> selection,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Returns the current container accessor function.
  /*external ValueFn<GElement,Datum,HtmlElement|SvgSvgElement|GElement> container();*/
  /// Sets the container accessor to the specified function and returns the drag behavior.
  /// The container of a drag gesture determines the coordinate system of subsequent drag events,
  /// affecting event.x and event.y. The element returned by the container accessor is subsequently
  /// passed to d3.mouse or d3.touch, as appropriate, to determine the local coordinates of the pointer.
  /// The default container accessor returns the parent node of the element in the originating selection (see drag)
  /// that received the initiating input event. This is often appropriate when dragging SVG or HTML elements,
  /// since those elements are typically positioned relative to a parent. For dragging graphical elements with a Canvas,
  /// however, you may want to redefine the container as the initiating element itself, using "this" in the accessor
  /// function.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns the container element.
  /*external DragBehavior container(ValueFn<GElement,Datum,HtmlElement|SvgSvgElement|GElement> accessor);*/
  /// Sets the container accessor to the specified object and returns the drag behavior.
  /// The container of a drag gesture determines the coordinate system of subsequent drag events,
  /// affecting event.x and event.y. The element returned by the container accessor is subsequently
  /// passed to d3.mouse or d3.touch, as appropriate, to determine the local coordinates of the pointer.
  /// The default container accessor returns the parent node of the element in the originating selection (see drag)
  /// that received the initiating input event. This is often appropriate when dragging SVG or HTML elements,
  /// since those elements are typically positioned relative to a parent. For dragging graphical elements with a Canvas,
  /// however, you may want to redefine the container as the initiating element itself, such as drag.container(canvas).
  /*external DragBehavior container(HtmlElement|SvgSvgElement|GElement container);*/
  external DragBehavior container(
      [dynamic /*HtmlElement|SvgSvgElement|GElement*/ accessor_container]);

  /// Returns the current filter function.
  /*external ValueFn<GElement, Datum, bool> filter();*/
  /// Sets the filter to the specified filter function and returns the drag behavior.
  /// If the filter returns falsey, the initiating event is ignored and no drag gesture is started.
  /// Thus, the filter determines which input events are ignored. The default filter ignores mousedown events on secondary buttons,
  /// since those buttons are typically intended for other purposes, such as the context menu.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns a boolean value.
  /*external DragBehavior filter(ValueFn<GElement, Datum, bool> filterFn);*/
  external DragBehavior filter([filterFn]);

  /// Returns the current subject accessor functions.
  /*external ValueFn<GElement, Datum, Subject> subject();*/
  /// Sets the subject accessor to the specified function and returns the drag behavior.
  /// The subject of a drag gesture represents the thing being dragged.
  /// It is computed when an initiating input event is received,
  /// such as a mousedown or touchstart, immediately before the drag gesture starts.
  /// The subject is then exposed as event.subject on subsequent drag events for this gesture.
  /// The default subject is the datum of the element in the originating selection (see drag)
  /// that received the initiating input event; if this datum is undefined,
  /// an object representing the coordinates of the pointer is created.
  /// When dragging circle elements in SVG, the default subject is thus the datum of the circle being dragged.
  /// With Canvas, the default subject is the canvas element’s datum (regardless of where on the canvas you click).
  /// In this case, a custom subject accessor would be more appropriate,
  /// such as one that picks the closest circle to the mouse within a given search radius.
  /// The subject of a drag gesture may not be changed after the gesture starts.
  /// During the evaluation of the subject accessor, d3.event is a beforestart drag event.
  /// Use event.sourceEvent to access the initiating input event and event.identifier to
  /// access the touch identifier. The event.x and event.y are relative to the container,
  /// and are computed using d3.mouse or d3.touch as appropriate.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The returned subject should be an object that exposes x and y properties,
  /// so that the relative position of the subject and the pointer can be preserved during the drag gesture.
  /// If the subject is null or undefined, no drag gesture is started for this pointer;
  /// however, other starting touches may yet start drag gestures.
  /*external DragBehavior subject(ValueFn<GElement, Datum, Subject> accessor);*/
  external DragBehavior subject([accessor]);

  /// Return the first currently-assigned listener matching the specified typenames, if any.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /*external ValueFn<GElement,Datum,Null>|dynamic on(String typenames);*/
  /// Remove the current event listeners for the specified typenames, if any, return the drag behavior.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /*external DragBehavior on(String typenames, Null listener);*/
  /// Set the event listener for the specified typenames and return the drag behavior.
  /// If an event listener was already registered for the same type and name,
  /// the existing listener is removed before the new listener is added.
  /// When a specified event is dispatched, each listener will be invoked with the same context and arguments as selection.on listeners.
  /// Changes to registered listeners via drag.on during a drag gesture do not affect the current drag gesture.
  /// Instead, you must use event.on, which also allows you to register temporary event listeners for the current drag gesture.
  /// Separate events are dispatched for each active pointer during a drag gesture.
  /// For example, if simultaneously dragging multiple subjects with multiple fingers, a start event is dispatched for each finger,
  /// even if both fingers start touching simultaneously.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.
  /*external DragBehavior on(
    String typenames, ValueFn<GElement, Datum, Null> listener);*/
  external dynamic /*dynamic|DragBehavior*/ on(String typenames, [listener]);
}

/// Creates a new drag behavior. The returned behavior, drag, is both an object and a function, and is
/// typically applied to selected elements via selection.call.
/// Use this signature when using the default subject accessor.
/// The first generic refers to the type of element to be dragged.
/// The second generic refers to the type of the datum of the dragged element.
/*external DragBehavior<GElement,Datum,Datum|SubjectPosition> drag<GElement extends Element, Datum>();*/
/// Creates a new drag behavior. The returned behavior, drag, is both an object and a function, and is
/// typically applied to selected elements via selection.call.
/// Use this signature when using a custom subject accessor.
/// The first generic refers to the type of element to be dragged.
/// The second generic refers to the type of the datum of the dragged element.
/// The third generic refers to the type of the drag behavior subject.
/*external DragBehavior<GElement,Datum,Subject> drag<GElement extends Element, Datum, Subject>();*/
@JS()
external DragBehavior<dynamic, dynamic,
    dynamic> /*DragBehavior<GElement,Datum,Datum|SubjectPosition>|DragBehavior<GElement,Datum,Subject>*/ drag/*<GElement extends Element, Datum, Subject>*/();

/// D3 Drag event
/// The first generic refers to the type of element to be dragged.
/// The second generic refers to the type of the datum of the dragged element.
/// The third generic refers to the type of the drag behavior subject.
@anonymous
@JS()
abstract class D3DragEvent<GElement extends Element, Datum, Subject> {
  /// The DragBehavior associated with the event
  external DragBehavior<GElement, Datum, Subject> get target;
  external set target(DragBehavior<GElement, Datum, Subject> v);

  /// The event type for the DragEvent
  external String /*'start'|'drag'|'end'|String*/ get type;
  external set type(String /*'start'|'drag'|'end'|String*/ v);

  /// The drag subject, defined by drag.subject.
  external Subject get subject;
  external set subject(Subject v);

  /// The new x-coordinate of the subject, relative to the container
  external num get x;
  external set x(num v);

  /// The new y-coordinate of the subject, relative to the container
  external num get y;
  external set y(num v);

  /// The change in x-coordinate since the previous drag event.
  external num get dx;
  external set dx(num v);

  /// The change in y-coordinate since the previous drag event.
  external num get dy;
  external set dy(num v);

  /// The string “mouse”, or a numeric touch identifier.
  external dynamic /*'mouse'|num*/ get identifier;
  external set identifier(dynamic /*'mouse'|num*/ v);

  /// The number of currently active drag gestures (on start and end, not including this one).
  /// The event.active field is useful for detecting the first start event and the last end event
  /// in a sequence of concurrent drag gestures: it is zero when the first drag gesture starts,
  /// and zero when the last drag gesture ends.
  external num get active;
  external set active(num v);

  /// The underlying input event, such as mousemove or touchmove.
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);

  /// Return the first currently-assigned listener matching the specified typenames, if any.
  /// Equivalent to drag.on, but only applies to the current drag gesture. Before the drag gesture starts,
  /// a copy of the current drag event listeners is made. This copy is bound to the current drag gesture
  /// and modified by event.on. This is useful for temporary listeners that only receive events for the current drag gesture.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /*external ValueFn<GElement,Datum,Null>|dynamic on(String typenames);*/
  /// Remove the current event listeners for the specified typenames, if any, return the drag behavior.
  /// Equivalent to drag.on, but only applies to the current drag gesture. Before the drag gesture starts,
  /// a copy of the current drag event listeners is made. This copy is bound to the current drag gesture
  /// and modified by event.on. This is useful for temporary listeners that only receive events for the current drag gesture.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /*external D3DragEvent on(String typenames, Null listener);*/
  /// Set the event listener for the specified typenames and return the drag behavior.
  /// If an event listener was already registered for the same type and name,
  /// the existing listener is removed before the new listener is added.
  /// When a specified event is dispatched, each listener will be invoked with the same context and arguments as selection.on listeners.
  /// Equivalent to drag.on, but only applies to the current drag gesture. Before the drag gesture starts,
  /// a copy of the current drag event listeners is made. This copy is bound to the current drag gesture
  /// and modified by event.on. This is useful for temporary listeners that only receive events for the current drag gesture.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after a new pointer becomes active [on mousedown or touchstart]), drag (after an active pointer moves [on mousemove or touchmove], or
  /// end (after an active pointer becomes inactive [on mouseup, touchend or touchcancel].)
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.
  /*external D3DragEvent on(
    String typenames, ValueFn<GElement, Datum, Null> listener);*/
  external dynamic /*dynamic|D3DragEvent*/ on(String typenames, [listener]);
}

/// Prevents native drag-and-drop and text selection on the specified window.
/// As an alternative to preventing the default action of mousedown events,
/// this method prevents undesirable default actions following mousedown. In supported browsers,
/// this means capturing dragstart and selectstart events, preventing the associated default actions,
/// and immediately stopping their propagation. In browsers that do not support selection events,
/// the user-select CSS property is set to none on the document element.
/// This method is intended to be called on mousedown, followed by d3.dragEnable on mouseup.
@JS()
external void dragDisable(Window window);

/// Allows native drag-and-drop and text selection on the specified window; undoes the effect of d3.dragDisable.
/// This method is intended to be called on mouseup, preceded by d3.dragDisable on mousedown.
/// If noclick is true, this method also temporarily suppresses click events.
/// The suppression of click events expires after a zero-millisecond timeout,
/// such that it only suppress the click event that would immediately follow the current mouseup event, if any.
@JS()
external void dragEnable(Window window, [bool noClick]);

