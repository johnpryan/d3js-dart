@JS()
library node_modules._types.d3_transition;

import "package:js/js.dart";
import "d3-selection.dart" show Selection, ValueFn, ArrayLike;
import "dart:html" show Element, Document, Window, HtmlElement;
import "package:func/func.dart";

/// Type definitions for D3JS d3-transition module 1.0
/// Project: https://github.com/d3/d3-transition/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.3
/// Extend interface 'Selection' by declaration merging with 'd3-selection'

/// Return the active transition on the specified node with the specified name, if any.
/// If no name is specified, null is used. Returns null if there is no such active transition on the specified node.
/// This method is useful for creating chained transitions.
/// The first generic "GElement" refers to the type of element on which the returned active transition was defined. The second generic "Datum" refers to the type of the
/// datum, of a selected element on which the transition is defined. The third generic refers to the type of the parent elements in the returned Transition.
/// The fourth generic refers to the type of the datum defined on the parent elements in the returned Transition.
@JS()
external Transition<dynamic, dynamic, dynamic,
    dynamic> /*Transition<GElement,Datum,PElement,PDatum>|Null*/ active/*<GElement extends Element|EnterElement|Document|Window|Null, Datum, PElement extends Element|EnterElement|Document|Window|Null, PDatum>*/(dynamic/*=GElement*/ node, [String name]);

/// Interrupts the active transition of the specified name on the specified node, and cancels any pending transitions with the specified name, if any.
/// If a name is not specified, null is used.
@JS()
external void interrupt(
    dynamic /*Element|EnterElement|Document|Window|Null*/ node,
    [String name]);

/// A D3 Transition.
/// The first generic "GElement" refers to the type of the selected element(s) in the Transition.
/// The second generic "Datum" refers to the type of the datum of a selected element(s) in the Transition.
/// The third generic "PElement" refers to the type of the parent element(s) in the D3 selection in the Transition.
/// The fourth generic "PDatum" refers to the type of the datum of the parent element(s) in the Transition.
@anonymous
@JS()
abstract class Transition<
    GElement extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    Datum,
    PElement extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    PDatum> {
  /// Sub-selection -------------------------
  /// For each selected element, select the first descendant element that matches the specified selector string, if any,
  /// and returns a transition on the resulting selection. The new transition has the same id, name and timing as this transition;
  /// however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /// The generic represents the type of the descendant element to be selected.
  /*external Transition<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Document|Window|Null>(String selector);*/
  /// For each selected element, select the descendant element returned by the selector function, if any,
  /// and returns a transition on the resulting selection. The new transition has the same id, name and timing as this transition;
  /// however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /// The generic represents the type of the descendant element to be selected.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// It must return an element, or null if there is no matching element.
  /*external Transition<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Document|Window|Null>(ValueFn<GElement,Datum,DescElement> selector);*/
  external Transition<dynamic/*=DescElement*/, Datum, PElement, PDatum>
      select/*<DescElement>*/(String selector);

  /// For each selected element, select all descendant elements that match the specified selector string, if any,
  /// and returns a transition on the resulting selection. The new transition has the same id, name and timing as this transition;
  /// however, if a transition with the same id already exists on a selected element, the existing transition is returned for that element.
  /// The first generic "DescElement" refers to the type of descendant element to be selected. The second generic "OldDatum" refers to the type of the
  /// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
  /*external Transition<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Document|Window|Null, OldDatum>(String selector);*/
  /// For each selected element, select all descendant elements returned by the selector function, if any,
  /// and returns a transition on the resulting selection. The new transition has the same id, name and timing as this transition;
  /// however, if a transition with the same id already exists on a selected element, the existing transition is returned for that element.
  /// The first generic "DescElement" refers to the type of descendant element to be selected. The second generic "OldDatum" refers to the type of the
  /// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. It must return an array of elements
  /// (or a pseudo-array, such as a NodeList), or the empty array if there are no matching elements.
  /*external Transition<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Document|Window|Null, OldDatum>(ValueFn<GElement,Datum,List<DescElement>|ArrayLike<DescElement>> selector);*/
  external Transition<dynamic/*=DescElement*/, dynamic/*=OldDatum*/, GElement,
      Datum> selectAll/*<DescElement, OldDatum>*/(String selector);

  /// Return the selection corresponding to this transition.
  external Selection<GElement, Datum, PElement, PDatum> selection();

  /// Returns a new transition on the same selected elements as this transition, scheduled to start when this transition ends.
  /// The new transition inherits a reference time equal to this transition’s time plus its delay and duration.
  /// The new transition also inherits this transition’s name, duration, and easing.
  /// This method can be used to schedule a sequence of chained transitions.
  /// A delay configured for the new transition will be relative to the previous transition.
  external Transition<GElement, Datum, PElement, PDatum> transition();

  /// Modifying -------------------------------
  /// For each selected element, the attribute with the specified name will be cleared at the start of the transition.
  /*external Transition attr(String name, Null value);*/
  /// For each selected element, assigns the attribute tween for the attribute with the specified name to the specified target value.
  /// The starting value of the tween is the attribute’s value when the transition starts.
  /// The target value is the specified constant value for all elements.
  /// An interpolator is chosen based on the type of the target value, using the following algorithm:
  /// 1.) If value is a number, use interpolateNumber.
  /// 2.) If value is a color or a string coercible to a color, use interpolateRgb.
  /// 3.) Use interpolateString.
  /// To apply a different interpolator, use transition.attrTween.
  /*external Transition attr(String name, String|num|bool value);*/
  /// For each selected element, assigns the attribute tween for the attribute with the specified name to the specified target value.
  /// The starting value of the tween is the attribute’s value when the transition starts.
  /// The target value is return value of the value function evaluated for the selected element.
  /// An interpolator is chosen based on the type of the target value, using the following algorithm:
  /// 1.) If value is a number, use interpolateNumber.
  /// 2.) If value is a color or a string coercible to a color, use interpolateRgb.
  /// 3.) Use interpolateString.
  /// To apply a different interpolator, use transition.attrTween.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// A null value will clear the attribute at the start of the transition.
  /*external Transition attr(String name, ValueFn<GElement,Datum,String|num|bool|Null> value);*/
  external Transition attr(String name, dynamic /*String|num|bool*/ value);

  /// Return the current interpolator factory for attribute with the specified name, or undefined if no such tween exists.
  /*external ValueFn<GElement,Datum,Func1<num, String>>|dynamic attrTween(String name);*/
  /// Remove the previously-assigned attribute tween of the specified name, if any.
  /*external Transition attrTween(String name, Null JS$factory);*/
  /// Assign the attribute tween for the attribute with the specified name to the specified interpolator factory.
  /// An interpolator factory is a function that returns an interpolator; when the transition starts, the factory is evaluated for each selected element.
  /// The returned interpolator will then be invoked for each frame of the transition, in order,
  /// being passed the eased time t, typically in the range [0, 1]. Lastly, the return value of the interpolator will be used to set the attribute value.
  /// The interpolator must return a string.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. The interpolator factory returns a string interpolator,
  /// which takes as its argument eased time t, typically in the range [0, 1] and returns the interpolated string.
  /*external Transition attrTween(
    String name, ValueFn<GElement, Datum, Func1<num, String>> JS$factory);*/
  external dynamic /*dynamic|Transition*/ attrTween(String name, [JS$factory]);

  /// For each selected element, the style with the specified name will be cleared at the start of the transition.
  /*external Transition style(String name, Null value);*/
  /// For each selected element, assigns the style tween for the style with the specified name to the specified target value.
  /// The starting value of the tween is the style’s value when the transition starts.
  /// The target value is the specified constant value for all elements.
  /// An interpolator is chosen based on the type of the target value, using the following algorithm:
  /// 1.) If value is a number, use interpolateNumber.
  /// 2.) If value is a color or a string coercible to a color, use interpolateRgb.
  /// 3.) Use interpolateString.
  /// To apply a different interpolator, use transition.attrTween.
  /*external Transition style(String name, String|num|bool value, [Null|'important' priority]);*/
  /// For each selected element, assigns the style tween for the style with the specified name to the specified target value.
  /// The starting value of the tween is the style's value when the transition starts.
  /// The target value is return value of the value function evaluated for the selected element.
  /// An interpolator is chosen based on the type of the target value, using the following algorithm:
  /// 1.) If value is a number, use interpolateNumber.
  /// 2.) If value is a color or a string coercible to a color, use interpolateRgb.
  /// 3.) Use interpolateString.
  /// To apply a different interpolator, use transition.attrTween.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// A null value will clear the style at the start of the transition.
  /*external Transition style(String name, ValueFn<GElement,Datum,String|num|bool|Null> value, [Null|'important' priority]);*/
  external Transition style(String name, dynamic /*String|num|bool*/ value,
      [String /*'important'*/ priority]);

  /// Return the current interpolator factory for style with the specified name, or undefined if no such tween exists.
  /*external ValueFn<GElement,Datum,Func1<num, String>>|dynamic styleTween(String name);*/
  /// Remove the previously-assigned style tween of the specified name, if any.
  /*external Transition styleTween(String name, Null JS$factory);*/
  /// Assign the style tween for the style with the specified name to the specified interpolator factory.
  /// An interpolator factory is a function that returns an interpolator; when the transition starts, the factory is evaluated for each selected element.
  /// The returned interpolator will then be invoked for each frame of the transition, in order,
  /// being passed the eased time t, typically in the range [0, 1]. Lastly, the return value of the interpolator will be used to set the style value.
  /// The interpolator must return a string.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. The interpolator factory returns a string interpolator,
  /// which takes as its argument eased time t, typically in the range [0, 1] and returns the interpolated string.
  /*external Transition styleTween(String name, ValueFn<GElement,Datum,Func1<num, String>> JS$factory, [Null|'important' priority]);*/
  external dynamic /*dynamic|Transition*/ styleTween(String name,
      [JS$factory, String /*'important'*/ priority]);

  /// For each selected element, the text content will be cleared, replacing any existing child elements.
  /*external Transition text(Null value);*/
  /// For each selected element, sets the text content to the specified target value when the transition starts.
  /// To interpolate text rather than to set it on start, use transition.tween (for example) or
  /// append a replacement element and cross-fade opacity (for example). Text is not interpolated by default because it is usually undesirable.
  /*external Transition text(String|num|bool value);*/
  /// For each selected element, sets the text content returned by the value function for each selected element when the transition starts.
  /// To interpolate text rather than to set it on start, use transition.tween (for example) or
  /// append a replacement element and cross-fade opacity (for example). Text is not interpolated by default because it is usually undesirable.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// A null value will clear the text content at the start of the transition.
  /*external Transition text(ValueFn<GElement,Datum,String|num|bool> value);*/
  external Transition text(dynamic /*String|num|bool*/ value);

  /// Returns the tween with the specified name, or undefined, if no tween was previously assigned to
  /// that name.
  /*external ValueFn<GElement,Datum,VoidFunc1<num>>|dynamic tween(String name);*/
  /// Removes the tween with the specified name, if a tween was previously assigned to
  /// that name.
  /*external Transition tween(String name, Null tweenFn);*/
  /// For each selected element, assigns the tween with the specified name with the specified value function.
  /// The value must be specified as a function that returns a function.
  /// When the transition starts, the value function is evaluated for each selected element.
  /// The returned function is then invoked for each frame of the transition, in order,
  /// being passed the eased time t, typically in the range [0, 1].
  /// the current index (i), and the current group (nodes), with this as the current DOM element. The tween function returns a function
  /// which takes as its argument eased time t, typically in the range [0, 1] and performs the tweening activities for each transition frame.
  /*external Transition tween(
    String name, ValueFn<GElement, Datum, VoidFunc1<num>> tweenFn);*/
  external dynamic /*dynamic|Transition*/ tween(String name, [tweenFn]);

  /// For each selected element, removes the element when the transition ends, as long as the element has no other active or pending transitions.
  /// If the element has other active or pending transitions, does nothing.
  external Transition remove();

  /// Returns a new transition merging this transition with the specified other transition,
  /// which must have the same id as this transition. The returned transition has the same number of groups,
  /// the same parents, the same name and the same id as this transition.
  /// Any missing (null) elements in this transition are filled with the corresponding element, if present (not null), from the other transition.
  external Transition<GElement, Datum, PElement, PDatum> merge(
      Transition<GElement, Datum, PElement, PDatum> other);

  /// For each selected element, selects only the elements that match the specified filter, and returns a transition on the resulting selection.
  /// The new transition has the same id, name and timing as this transition; however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /*external Transition<GElement, Datum, PElement, PDatum> filter(String filter);*/
  /// For each selected element, selects only the elements that match the specified filter, and returns a transition on the resulting selection.
  /// The new transition has the same id, name and timing as this transition; however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /// The generic refers to the type of element which will be selected after applying the filter, i.e. if the element types
  /// contained in a pre-filter selection are narrowed to a subset as part of the filtering.
  /*external Transition<FilteredElement,Datum,PElement,PDatum> filter<FilteredElement extends Element|EnterElement|Document|Window|Null>(String filter);*/
  /// For each selected element, selects only the elements that match the specified filter, and returns a transition on the resulting selection.
  /// The new transition has the same id, name and timing as this transition; however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. The filter function returns a boolean indicating,
  /// whether the selected element matches.
  /*external Transition<GElement, Datum, PElement, PDatum> filter(
    ValueFn<GElement, Datum, bool> filter);*/
  /// For each selected element, selects only the elements that match the specified filter, and returns a transition on the resulting selection.
  /// The new transition has the same id, name and timing as this transition; however, if a transition with the same id already exists on a selected element,
  /// the existing transition is returned for that element.
  /// The generic refers to the type of element which will be selected after applying the filter, i.e. if the element types
  /// contained in a pre-filter selection are narrowed to a subset as part of the filtering.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. The filter function returns a boolean indicating,
  /// whether the selected element matches.
  /*external Transition<FilteredElement,Datum,PElement,PDatum> filter<FilteredElement extends Element|EnterElement|Document|Window|Null>(ValueFn<GElement,Datum,bool> filter);*/
  external Transition /*Transition<GElement,Datum,PElement,PDatum>|Transition<FilteredElement,Datum,PElement,PDatum>*/ filter/*<FilteredElement>*/(
      String filter);

  /// Event Handling -------------------
  /// Return the currently-assigned listener for the specified event typename on the first (non-null) selected element, if any.
  /// If multiple typenames are specified, the first matching listener is returned.
  /// interrupt (when the transition is interrupted.) Note that these are not native DOM events. The type may be optionally followed by a period (.) and a name;
  /// the optional name allows multiple callbacks to be registered to receive events of the same type, such as "start.foo"" and "start.bar".
  /// To specify multiple typenames, separate typenames with spaces, such as "interrupt end"" or "start.foo start.bar".
  /*external ValueFn<GElement,Datum,Null>|dynamic on(String type);*/
  /// Remove all listeners for a given name.
  /// as the typename, where foo is the name; to remove all listeners with no name, specify "." as the typename.
  /*external Transition on(String typenames, Null listener);*/
  /// Add a listener to each selected element for the specified event typenames.
  /// When a specified transition event is dispatched on a selected node, the specified listener will be invoked for each transitioning element.
  /// Listeners always see the latest datum for their element, but the index is a property of the selection and is fixed when the listener is assigned;
  /// to update the index, re-assign the listener.
  /// interrupt (when the transition is interrupted.) Note that these are not native DOM events. The type may be optionally followed by a period (.) and a name;
  /// the optional name allows multiple callbacks to be registered to receive events of the same type, such as "start.foo"" and "start.bar".
  /// To specify multiple typenames, separate typenames with spaces, such as "interrupt end"" or "start.foo start.bar".
  /// and the current group (nodes), with this as the current DOM element. Listeners always see the latest datum for their element,
  /// but the index is a property of the selection and is fixed when the listener is assigned; to update the index, re-assign the listener.
  /*external Transition on(String type, ValueFn<GElement, Datum, Null> listener);*/
  external dynamic /*dynamic|Transition*/ on(String type_typenames, [listener]);

  /// Control Flow ----------------------
  /// Invoke the specified function for each selected element, passing the current datum (d),
  /// the current index (i), and the current group (nodes), with this of the current DOM element.
  /// This method can be used to invoke arbitrary code for each selected element, and is useful for creating a context to access parent and child data simultaneously.
  external Transition each(ValueFn<GElement, Datum, Null> func);

  /// Invoke the specified function exactly once, passing in this transition along with any optional arguments.
  /// Returns this transition.
  external Transition JS$call(
      Function /*(transition: Transition<GElement, Datum, PElement, PDatum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Return true if this transition contains no (non-null) elements.
  external bool empty();

  /// Return the first (non-null) element in this transition. If the transition is empty, returns null.
  external GElement /*GElement|Null*/ node();

  /// Return an array of all (non-null) elements in this transition.
  external List<GElement> nodes();

  /// Returns the total number of elements in this transition.
  external num size();

  /// Transition Configuration ----------------------
  /// Returns the current value of the delay for the first (non-null) element in the transition.
  /// This is generally useful only if you know that the transition contains exactly one element.
  /*external num delay();*/
  /// For each selected element, sets the transition delay to the specified value in milliseconds.
  /// If a delay is not specified, it defaults to zero.
  /*external Transition delay(num milliseconds);*/
  /// For each selected element, sets the transition delay to the value in milliseconds returned by the
  /// value function.
  /// the current index (i), and the current group (nodes), with this of the current DOM element. The return value is a number
  /// specifying the delay in milliseconds.
  /*external Transition delay(ValueFn<GElement, Datum, num> milliseconds);*/
  external dynamic /*num|Transition*/ delay([num milliseconds]);

  /// Returns the current value of the duration for the first (non-null) element in the transition.
  /// This is generally useful only if you know that the transition contains exactly one element.
  /*external num duration();*/
  /// For each selected element, sets the transition duration to the specified value in milliseconds.
  /// If a duration is not specified, it defaults to 250ms.
  /*external Transition duration(num milliseconds);*/
  /// For each selected element, sets the transition duration to the value in milliseconds returned by the
  /// value function.
  /// the current index (i), and the current group (nodes), with this of the current DOM element. The return value is a number
  /// specifying the duration in milliseconds.
  /*external Transition duration(ValueFn<GElement, Datum, num> milliseconds);*/
  external dynamic /*num|Transition*/ duration([num milliseconds]);

  /// Returns the current easing function for the first (non-null) element in the transition.
  /// This is generally useful only if you know that the transition contains exactly one element.
  /*external Func1<num, num> ease();*/
  /// Specifies the transition easing function for all selected elements. The value must be specified as a function.
  /// The easing function is invoked for each frame of the animation, being passed the normalized time t in the range [0, 1];
  /// it must then return the eased time tʹ which is typically also in the range [0, 1].
  /// A good easing function should return 0 if t = 0 and 1 if t = 1. If an easing function is not specified,
  /// it defaults to d3.easeCubic.
  /// it must then return the eased time tʹ which is typically also in the range [0, 1].
  /// A good easing function should return 0 if t = 0 and 1 if t = 1.
  /*external Transition ease(num easingFn(num normalizedTime));*/
  external dynamic /*Func1<num, num>|Transition*/ ease(
      [num easingFn(num normalizedTime)]);
}

/// Returns a new transition with the specified name. If a name is not specified, null is used.
/// The new transition is only exclusive with other transitions of the same name.
/// The generic "OldDatum" refers to the type of a previously-set datum of the selected HTML element in the Transition.
/*external Transition<HtmlElement,OldDatum,Null,dynamic> transition<OldDatum>(String name);*/
/// Returns a new transition from an existing transition.
/// When using a transition instance, the returned transition has the same id and name as the specified transition.
/// The generic "OldDatum" refers to the type of a previously-set datum of the selected HTML element in the Transition.
/*external Transition<HtmlElement,OldDatum,Null,dynamic> transition<OldDatum>(Transition<Element|EnterElement|Document|Window|Null,dynamic,Element|EnterElement|Document|Window|Null,dynamic> transition);*/
@JS()
external Transition<HtmlElement, dynamic/*=OldDatum*/, Null, dynamic> transition/*<OldDatum>*/(
    dynamic /*String|Transition<Element|EnterElement|Document|Window|Null,dynamic,Element|EnterElement|Document|Window|Null,dynamic>*/ name_transition);

