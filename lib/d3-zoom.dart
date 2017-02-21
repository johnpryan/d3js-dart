@JS()
library node_modules._types.d3_zoom;

import "package:js/js.dart";
import "dart:html" show Element;
import "d3-selection.dart" show Selection, ValueFn, TransitionLike;
import "package:func/func.dart";

/// Type definitions for d3JS d3-zoom module 1.1
/// Project: https://github.com/d3/d3-zoom/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.1.1
/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------
/// ZoomedElementBaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-zoom' (and related code in 'd3-selection') trying to use properties internally which would otherwise not
/// be supported.
/*type ZoomedElementBaseType = Element;*/
/// Minimal interface for a continuous scale.
/// This interface is used as a minimum contract for scale objects
/// that  can be passed into zoomTransform methods rescaleX and rescaleY
@anonymous
@JS()
abstract class ZoomScale {
  /*external List<num> domain();*/
  /*external ZoomScale domain(List<num> domain);*/
  external dynamic /*List<num>|ZoomScale*/ domain([List<num> domain]);
  /*external List<num> range();*/
  /*external ZoomScale range(List<num> range);*/
  external dynamic /*List<num>|ZoomScale*/ range([List<num> range]);
  external ZoomScale copy();
  external num invert(num value);
}

/// --------------------------------------------------------------------------
/// Zoom Behavior
/// --------------------------------------------------------------------------
/// A D3 Zoom Behavior
/// The first generic refers to the type of reference element to which the zoom behavior is attached.
/// The second generic refers to the type of the datum of the reference element.
@anonymous
@JS()
abstract class ZoomBehavior<ZoomRefElement extends Element, Datum>
    implements Function {
  /// Applies this zoom behavior to the specified selection, binding the necessary event listeners to
  /// allow panning and zooming, and initializing the zoom transform on each selected element to the identity transform if not already defined. This function is typically not invoked directly,
  /// and is instead invoked via selection.call.
  /// For details see: [https://github.com/d3/d3-zoom#_zoom]
  external void call(
      Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Sets the current zoom transform of the selected elements to the specified transform,
  /// instantaneously emitting start, zoom and end events.
  /// This method requires that you specify the new zoom transform completely,
  /// and does not enforce the defined scale extent and translate extent, if any.
  /// To derive a new transform from the existing transform, and to enforce the scale and translate extents,
  /// see the convenience methods zoom.translateBy, zoom.scaleBy and zoom.scaleTo.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /*external void transform(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ZoomTransform transform);*/
  /// Sets the current zoom transform of the selected elements to the transform returned by the specified
  /// zoom transform factory function evaluated for each element, instantaneously emitting start, zoom and end events.
  /// This method requires that you specify the new zoom transform completely,
  /// and does not enforce the defined scale extent and translate extent, if any.
  /// To derive a new transform from the existing transform, and to enforce the scale and translate extents,
  /// see the convenience methods zoom.translateBy, zoom.scaleBy and zoom.scaleTo.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns a zoom transform object.
  /*external void transform(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, ZoomTransform> transform);*/
  /// Sets the current zoom transform of the transitioning elements to the specified transform.
  /// It defines a “zoom” tween to the specified transform using d3.interpolateZoom,
  /// emitting a start event when the transition starts, zoom events for each tick of the transition,
  /// and then an end event when the transition ends (or is interrupted).
  /// This method requires that you specify the new zoom transform completely,
  /// and does not enforce the defined scale extent and translate extent, if any.
  /// To derive a new transform from the existing transform, and to enforce the scale and translate extents,
  /// see the convenience methods zoom.translateBy, zoom.scaleBy and zoom.scaleTo.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /*external void transform(
    TransitionLike<ZoomRefElement, Datum> transition, ZoomTransform transform);*/
  /// Sets the current zoom transform of the transitioning elements to the transform returned by the specified
  /// zoom transform factory function evaluated for each element.
  /// It defines a “zoom” tween to the specified transform using d3.interpolateZoom,
  /// emitting a start event when the transition starts, zoom events for each tick of the transition,
  /// and then an end event when the transition ends (or is interrupted).
  /// This method requires that you specify the new zoom transform completely,
  /// and does not enforce the defined scale extent and translate extent, if any.
  /// To derive a new transform from the existing transform, and to enforce the scale and translate extents,
  /// see the convenience methods zoom.translateBy, zoom.scaleBy and zoom.scaleTo.
  /// This function is typically not invoked directly, and is instead invoked via selection.call.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns a zoom transform object.
  /*external void transform(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, ZoomTransform> transform);*/
  external void transform(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      ZoomTransform transform);

  /// Translates the current zoom transform of the selected elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided as a constant for all elements.
  /// y is provided as a constant for all elements.
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num x, num y);*/
  /// Translates the current zoom transform of the selected elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided by a value function evaluated for each element in the selection.
  /// y is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in x-direction.
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> x,
    num y);*/
  /// Translates the current zoom transform of the selected elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided as a constant for all elements.
  /// y is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in y-direction.
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    num x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  /// Translates the current zoom transform of the selected elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided by a value function evaluated for each element in the selection.
  /// y is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in x-direction.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in y-direction.
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  /// Defines a “zoom” tween translating the current transform for the transitioning elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided as a constant for all elements.
  /// y is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /*external void translateBy(
    TransitionLike<ZoomRefElement, Datum> transition, num x, num y);*/
  /// Defines a “zoom” tween translating the current transform for the transitioning elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided by a value function evaluated for each element in the selection.
  /// y is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in x-direction.
  /*external void translateBy(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> x, num y);*/
  /// Defines a “zoom” tween translating the current transform for the transitioning elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided as a constant for all elements.
  /// y is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in y-direction.
  /*external void translateBy(TransitionLike<ZoomRefElement, Datum> transition,
    num x, ValueFn<ZoomRefElement, Datum, num> y);*/
  /// Defines a “zoom” tween translating the current transform for the transitioning elements by x and y,
  /// such that the new t(x1) = t(x0) + k × x and t(y1) = t(y0) + k × y.
  /// x is provided by a value function evaluated for each element in the selection.
  /// y is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in x-direction.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the amount of translation in y-direction.
  /*external void translateBy(
    TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  external void translateBy(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num x,
      num y);

  /// Scales the current zoom transform of the selected elements by k, such that the new k(1) = k(0) × k.
  /// k is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /*external void scaleBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num k);*/
  /// Scales the current zoom transform of the selected elements by k, such that the new k(1) = k(0) × k.
  /// k is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the scale factor.
  /*external void scaleBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  /// Defines a “zoom” tween translating scaling the current transform of the selected elements by k, such that the new k(1) = k(0) × k.
  /// k is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /*external void scaleBy(TransitionLike<ZoomRefElement, Datum> transition, num k);*/
  /// Defines a “zoom” tween translating scaling the current transform of the selected elements by k, such that the new k(1) = k(0) × k.
  /// k is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the scale factor.
  /*external void scaleBy(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  external void scaleBy(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num k);

  /// Scales the current zoom transform of the selected elements to k, such that the new k(1) = k.
  /// k is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /*external void scaleTo(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num k);*/
  /// Scales the current zoom transform of the selected elements to k, such that the new k(1) = k.
  /// k is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the new scale.
  /*external void scaleTo(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  /// Defines a “zoom” tween translating scaling the current transform of the selected elements to k, such that the new k(1) = k.
  /// k is provided as a constant for all elements.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /*external void scaleTo(TransitionLike<ZoomRefElement, Datum> transition, num k);*/
  /// Defines a “zoom” tween translating scaling the current transform of the selected elements to k, such that the new k(1) = k.
  /// k is provided by a value function evaluated for each element in the selection.
  /// This method is a convenience method for zoom.transform.
  /// In contrast to zoom.transform, however, it is subject to the constraints imposed by zoom.extent, zoom.scaleExten, and zoom.translateExtent.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the new scale.
  /*external void scaleTo(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  external void scaleTo(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num k);

  /// Returns the current filter function.
  /*external ValueFn<ZoomRefElement, Datum, bool> filter();*/
  /// Sets the filter to the specified filter function and returns the zoom behavior.
  /// If the filter returns falsey, the initiating event is ignored and no zoom gesture is started.
  /// Thus, the filter determines which input events are ignored. The default filter ignores mousedown events on secondary buttons,
  /// since those buttons are typically intended for other purposes, such as the context menu.
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function returns a boolean value.
  /*external ZoomBehavior filter(ValueFn<ZoomRefElement, Datum, bool> filterFn);*/
  external ZoomBehavior filter([filterFn]);

  /// Return the current extent accessor, which defaults to [[0, 0], [width, height]] where width is the client width of the element and height is its client height;
  /// for SVG elements, the nearest ancestor SVG element’s width and height is used. In this case,
  /// the owner SVG element must have defined width and height attributes rather than (for example) relying on CSS properties or the viewBox attribute;
  /// SVG provides no programmatic method for retrieving the initial viewport size. Alternatively, consider using element.getBoundingClientRect.
  /// (In Firefox, element.clientWidth and element.clientHeight is zero for SVG elements!)
  /*external ValueFn<ZoomRefElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent();*/
  /// Set the viewport extent to the specified array of points [[x0, y0], [x1, y1]],
  /// where [x0, y0] is the top-left corner of the viewport and [x1, y1] is the bottom-right corner of the viewport,
  /// and return this zoom behavior.
  /// The viewport extent affects several functions: the center of the viewport remains fixed during changes by zoom.scaleBy and zoom.scaleTo;
  /// the viewport center and dimensions affect the path chosen by d3.interpolateZoom; and the viewport extent is needed to enforce the optional translate extent.
  /*external ZoomBehavior extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  /// Set the viewport extent to the array of points [[x0, y0], [x1, y1]] returned by the
  /// extent accessor function, and return this zoom behavior.
  /// The extent accessor function is evaluated for each element.
  /// [x0, y0] is the top-left corner of the viewport and [x1, y1] is the bottom-right corner of the viewport.
  /// The viewport extent affects several functions: the center of the viewport remains fixed during changes by zoom.scaleBy and zoom.scaleTo;
  /// the viewport center and dimensions affect the path chosen by d3.interpolateZoom; and the viewport extent is needed to enforce the optional translate extent.
  /// The default is [[0, 0], [width, height]] where width is the client width of the element and height is its client height;
  /// for SVG elements, the nearest ancestor SVG element’s width and height is used.
  /// In this case, the owner SVG element must have defined width and height attributes rather than (for example) relying on CSS properties or the viewBox attribute;
  /// SVG provides no programmatic method for retrieving the initial viewport size. Alternatively, consider using element.getBoundingClientRect.
  /// (In Firefox, element.clientWidth and element.clientHeight is zero for SVG elements!)
  /// @extent An extent accessor function which is evaluated for each selected element,
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.The function returns the extent array.
  /*external ZoomBehavior extent(ValueFn<ZoomRefElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent);*/
  external ZoomBehavior extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Return the current scale extent.
  /*external Tuple of <num,num> scaleExtent();*/
  /// Set the scale extent to the specified array of numbers [k0, k1] where k0 is the minimum allowed scale factor and k1 is the maximum allowed scale factor,
  /// and return this zoom behavior.
  /// The scale extent restricts zooming in and out. It is enforced on interaction and when using zoom.scaleBy, zoom.scaleTo and zoom.translateBy;
  /// however, it is not enforced when using zoom.transform to set the transform explicitly.
  /// The default scale extent is [0, infinity].
  /// If the user tries to zoom by wheeling when already at the corresponding limit of the scale extent, the wheel events will be ignored and not initiate a zoom gesture.
  /// This allows the user to scroll down past a zoomable area after zooming in, or to scroll up after zooming out.
  /// If you would prefer to always prevent scrolling on wheel input regardless of the scale extent, register a wheel event listener to prevent the browser default behavior
  /*external ZoomBehavior scaleExtent(Tuple of <num,num> extent);*/
  external dynamic /*Tuple of <num,num>|ZoomBehavior*/ scaleExtent(
      [List<num> /*Tuple of <num,num>*/ extent]);

  /// Return the current translate extent.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> translateExtent();*/
  /// Set the translate extent to the specified array of points [[x0, y0], [x1, y1]], where [x0, y0] is the top-left corner of the world and [x1, y1]
  /// is the bottom-right corner of the world, and return this zoom behavior.
  /// The translate extent restricts panning, and may cause translation on zoom out. It is enforced on interaction and when using zoom.scaleBy, zoom.scaleTo and zoom.translateBy;
  /// however, it is not enforced when using zoom.transform to set the transform explicitly.
  /// The default scale extent is [[-infinity, infinity], [-infinity, infinity]].
  /*external ZoomBehavior translateExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|ZoomBehavior*/ translateExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Get the duration for zoom transitions on double-click and double-tap in milliseconds.
  /*external num duration();*/
  /// Set the duration for zoom transitions on double-click and double-tap to the specified number of milliseconds and returns the zoom behavior.
  /// To disable double-click and double-tap transitions, you can remove the zoom behavior’s dblclick event listener after applying the zoom behavior to the selection.
  /*external ZoomBehavior duration(num duration);*/
  external dynamic /*num|ZoomBehavior*/ duration([num duration]);

  /// Returns the current interpolation factory, which defaults to d3.interpolateZoom to implement smooth zooming.
  /*external InterpolationFactory interpolate<InterpolationFactory extends Func2<Tuple of <num,num,num>, Tuple of <num,num,num>, Func1<num, Tuple of <num,num,num>>>>();*/
  /// Sets the interpolation factory for zoom transitions to the specified function.
  /// Use the default d3.interpolateZoom to implement smooth zooming.
  /// To apply direct interpolation between two views, try d3.interpolate instead.
  /// Each view is defined as an array of three numbers: cx, cy and width. The first two coordinates cx, cy represent the center of the viewport;
  /// the last coordinate width represents the size of the viewport.
  /*external ZoomBehavior interpolate(Func1<num, Tuple of <num,num,num>> interpolatorFactory(Tuple of <num,num,num> a, Tuple of <num,num,num> b));*/
  external dynamic /*InterpolationFactory|ZoomBehavior*/ interpolate/*<InterpolationFactory extends Func2<Tuple of <num,num,num>, Tuple of <num,num,num>, Func1<num, Tuple of <num,num,num>>>>*/(
      [Func1<num, List<num> /*Tuple of <num,num,num>*/ > interpolatorFactory(
          List<num> /*Tuple of <num,num,num>*/ a,
          List<num> /*Tuple of <num,num,num>*/ b)]);

  /// Return the first currently-assigned listener matching the specified typenames, if any.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after zooming begins [such as mousedown]), zoom (after a change to the zoom  transform [such as mousemove], or
  /// end (after an active pointer becomes inactive [such as on mouseup].)
  /*external ValueFn<ZoomRefElement,Datum,Null>|dynamic on(String typenames);*/
  /// Remove the current event listeners for the specified typenames, if any, return the drag behavior.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after zooming begins [such as mousedown]), zoom (after a change to the zoom  transform [such as mousemove], or
  /// end (after an active pointer becomes inactive [such as on mouseup].)
  /*external ZoomBehavior on(String typenames, Null listener);*/
  /// Set the event listener for the specified typenames and return the zoom behavior.
  /// If an event listener was already registered for the same type and name,
  /// the existing listener is removed before the new listener is added.
  /// When a specified event is dispatched, each listener will be invoked with the same context and arguments as selection.on listeners.
  /// Each typename is a type, optionally followed by a period (.) and a name, such as "drag.foo"" and "drag.bar";
  /// the name allows multiple listeners to be registered for the same type. The type must be one of the following:
  /// start (after zooming begins [such as mousedown]), zoom (after a change to the zoom  transform [such as mousemove], or
  /// end (after an active pointer becomes inactive [such as on mouseup].)
  /// in order, being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element.
  /*external ZoomBehavior on(
    String typenames, ValueFn<ZoomRefElement, Datum, Null> listener);*/
  external dynamic /*dynamic|ZoomBehavior*/ on(String typenames, [listener]);
}

/// Creates a new zoom behavior. The returned behavior, zoom, is both an object and a function,
/// and is typically applied to selected elements via selection.call.
/// The first generic refers to the type of reference element to which the zoom behavior is attached.
/// The second generic refers to the type of the datum of the reference element.
@JS()
external ZoomBehavior<dynamic/*=ZoomRefElement*/, dynamic/*=Datum*/ >
    zoom/*<ZoomRefElement extends Element, Datum>*/();

/// --------------------------------------------------------------------------
/// Zoom Event
/// --------------------------------------------------------------------------
/// A D3 Zoom Event
/// The first generic refers to the type of reference element to which the zoom behavior is attached.
/// The second generic refers to the type of the datum of the reference element.
@anonymous
@JS()
abstract class D3ZoomEvent<ZoomRefElement extends Element, Datum> {
  /// The ZoomBehavior associated with the event
  external ZoomBehavior<ZoomRefElement, Datum> get target;
  external set target(ZoomBehavior<ZoomRefElement, Datum> v);

  /// The event type for the zoom event
  external String /*'start'|'zoom'|'end'|String*/ get type;
  external set type(String /*'start'|'zoom'|'end'|String*/ v);

  /// The current zoom transform
  external ZoomTransform get transform;
  external set transform(ZoomTransform v);

  /// The underlying input event, such as mousemove or touchmove.
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory D3ZoomEvent(
      {ZoomBehavior<ZoomRefElement, Datum> target,
      String /*'start'|'zoom'|'end'|String*/ type,
      ZoomTransform transform,
      dynamic sourceEvent});
}

/// --------------------------------------------------------------------------
/// Zoom Transforms
/// --------------------------------------------------------------------------
/// A zoom transform
/// The zoom behavior stores the zoom state on the element to which the zoom behavior was applied, not on the zoom behavior itself. This is because the zoom behavior can be applied to many elements simultaneously, and each element can be zoomed independently.
/// The zoom state can change either on user interaction or programmatically via zoom.transform.
/// To retrieve the zoom state, use event.transform on the current zoom event within a zoom event listener (see zoom.on), or use d3.zoomTransform for a given node. The latter is particularly useful for modifying the zoom state programmatically,
/// say to implement buttons for zooming in and out.
/// For details see [https://github.com/d3/d3-zoom#zoom-transforms]
@anonymous
@JS()
abstract class ZoomTransform {
  /// The translation amount tx along the x-axis.
  /// This property should be considered read-only; instead of mutating a transform,
  /// use transform.scale and transform.translate to derive a new transform.
  /// Also see zoom.scaleBy, zoom.scaleTo and zoom.translateBy for convenience methods on the zoom behavior.
  external num get x;
  external set x(num v);

  /// The translation amount ty along the y-axis
  /// This property should be considered read-only; instead of mutating a transform,
  /// use transform.scale and transform.translate to derive a new transform.
  /// Also see zoom.scaleBy, zoom.scaleTo and zoom.translateBy for convenience methods on the zoom behavior.
  external num get y;
  external set y(num v);

  /// The scale factor k.
  /// This property should be considered read-only; instead of mutating a transform,
  /// use transform.scale and transform.translate to derive a new transform.
  /// Also see zoom.scaleBy, zoom.scaleTo and zoom.translateBy for convenience methods on the zoom behavior.
  external num get k;
  external set k(num v);

  /// Return the transformation of the specified point which is a two-element array of numbers [x, y].
  /// The returned point is equal to [x × k + tx, y × k + ty].
  external List<num> /*Tuple of <num,num>*/ apply(
      List<num> /*Tuple of <num,num>*/ point);

  /// Return the transformation of the specified x-coordinate, x × k + tx.
  external num applyX(num x);

  /// Return the transformation of the specified y-coordinate, y × k + ty.
  external num applyY(num y);

  /// Return the inverse transformation of the specified point which is a two-element array of numbers [x, y].
  /// The returned point is equal to [(x - tx) / k, (y - ty) / k].
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ point);

  /// Return the inverse transformation of the specified x-coordinate, (x - tx) / k.
  external num invertX(num x);

  /// Return the inverse transformation of the specified y-coordinate, (y - ty) / k.
  external num invertY(num y);

  /// Returns a copy of the continuous scale x whose domain is transformed.
  /// This is implemented by first applying the inverse x-transform on the scale’s range,
  /// and then applying the inverse scale to compute the corresponding domain
  /// The scale x must use d3.interpolateNumber; do not use continuous.rangeRound as this
  /// reduces the accuracy of continuous.invert and can lead to an inaccurate rescaled domain.
  /// This method does not modify the input scale x; x thus represents the untransformed scale,
  /// while the returned scale represents its transformed view.
  external dynamic/*=S*/ rescaleX/*<S extends ZoomScale>*/(
      dynamic/*=S*/ xScale);

  /// Returns a copy of the continuous scale y whose domain is transformed.
  /// This is implemented by first applying the inverse y-transform on the scale’s range,
  /// and then applying the inverse scale to compute the corresponding domain
  /// The scale y must use d3.interpolateNumber; do not use continuous.rangeRound as this
  /// reduces the accuracy of continuous.invert and can lead to an inaccurate rescaled domain.
  /// This method does not modify the input scale x; x thus represents the untransformed scale,
  /// while the returned scale represents its transformed view.
  external dynamic/*=S*/ rescaleY/*<S extends ZoomScale>*/(
      dynamic/*=S*/ yScale);

  /// Return a transform whose scale k1 is equal to k0 × k, where k0 is this transform’s scale.
  external ZoomTransform scale(num k);

  /// Return a string representing the SVG transform corresponding to this transform.
  external String toString();

  /// Return a transform whose translation tx1 and ty1 is equal to tx0 + x and ty0 + y,
  /// where tx0 and ty0 is this transform’s translation.
  external ZoomTransform translate(num x, num y);
}

/// Returns the current transform for the specified node. Note that node should typically be a DOM element, and not a selection.
/// (A selection may consist of multiple nodes, in different states, and this function only returns a single transform.) If you have a selection, call selection.node first.
/// In the context of an event listener, the node is typically the element that received the input event (which should be equal to event.transform), "this".
/// Internally, an element’s transform is stored as element.__zoom; however, you should use this method rather than accessing it directly. If the given node has no defined transform, returns the identity transformation.
/// The returned transform represents a two-dimensional transformation matrix
/// For details see [https://github.com/d3/d3-zoom#zoom-transforms]
@JS()
external ZoomTransform zoomTransform(Element node);

/// The identity transform, where k = 1, tx = ty = 0.
@JS()
external ZoomTransform get zoomIdentity;

