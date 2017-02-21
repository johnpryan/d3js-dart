@JS()
library node_modules._types.d3_selection;

import "package:js/js.dart";
import "dart:html" show Document, Node, Element, Window, HtmlElement, TouchList;
import "package:func/func.dart";
import "dart:svg" show SvgSvgElement, GElement;

/// Type definitions for D3JS d3-selection module 1.0
/// Project: https://github.com/d3/d3-selection/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.2
/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------
/// BaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-selection' trying to use properties internally which would otherwise not
/// be supported.
/*export type BaseType = Element | EnterElement | Document | Window | null;*/
/// A helper interface which covers arguments like NodeListOf<T> or HTMLCollectionOf<T>
/// argument types
@anonymous
@JS()
abstract class ArrayLike<T> {
  external num get length;
  external set length(num v);
  external T item(
      num index); /* Index signature is not yet supported by JavaScript interop. */
}

/// An interface describing the element type of the Enter Selection group elements
/// created when invoking selection.enter().
@anonymous
@JS()
abstract class EnterElement {
  external Document get ownerDocument;
  external set ownerDocument(Document v);
  external String get namespaceURI;
  external set namespaceURI(String v);
  external Node appendChild(Node newChild);
  external Node insertBefore(Node newChild, Node refChild);
  external Element querySelector(String selectors);
  external List<Element> querySelectorAll(String selectors);
}

/// Container element type usable for mouse/touch functions
/*export type ContainerElement = HTMLElement | SVGSVGElement | SVGGElement;*/
/// Interface for optional parameters map, when dispatching custom events
/// on a selection
@anonymous
@JS()
abstract class CustomEventParameters {
  /// If true, the event is dispatched to ancestors in reverse tree order
  external bool get bubbles;
  external set bubbles(bool v);

  /// If true, event.preventDefault is allowed
  external bool get cancelable;
  external set cancelable(bool v);

  /// Any custom data associated with the event
  external dynamic get detail;
  external set detail(dynamic v);
  external factory CustomEventParameters(
      {bool bubbles, bool cancelable, dynamic detail});
}

/// Callback type for selections and transitions
typedef Result ValueFn<
    T extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    Datum,
    Result>(/*T this*/ Datum datum, num index, dynamic /*List<T>|ArrayLike<T>*/ groups);

/// TransitionLike is a helper interface to represent a quasi-Transition, without specifying the full Transition  interface in this file.
/// For example, whereever d3-zoom allows a Transition to be passed in as an argument, it internally immediately invokes its `selection()`
/// method to retrieve the underlying Selection object before proceeding.
/// d3-brush uses a subset of Transition methods internally.
/// The use of this interface instead of the full imported Transition interface is [referred] to achieve
/// two things:
/// (1) the d3-transition module may not be required by a projects use case,
/// (2) it avoids possible complications from 'module augmentation' from d3-transition to Selection.
@anonymous
@JS()
abstract class TransitionLike<
    GElement extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    Datum> {
  external Selection<GElement, Datum, dynamic, dynamic> selection();
  /*external TransitionLike<GElement, Datum> on(String type, Null listener);*/
  /*external TransitionLike<GElement, Datum> on(
    String type, ValueFn<GElement, Datum, Null> listener);*/
  external TransitionLike<GElement, Datum> on(String type, listener);
  /*external TransitionLike<GElement, Datum> tween(String name, Null tweenFn);*/
  /*external TransitionLike<GElement, Datum> tween(
    String name, ValueFn<GElement, Datum, VoidFunc1<num>> tweenFn);*/
  external TransitionLike<GElement, Datum> tween(String name, tweenFn);
}

/// --------------------------------------------------------------------------
/// All Selection related interfaces and function
/// --------------------------------------------------------------------------
/// Select the first element that matches the specified selector string. If no elements match the selector, returns an empty selection.
/// If multiple elements match the selector, only the first matching element (in document order) will be selected.
/// The first generic  "GElement" refers to the type of element to be selected. The second generic "OldDatum" refers to the type of the
/// datum, on the selected element. This is useful when re-selecting an element with a previously set, know datum type.
/*external Selection<GElement,OldDatum,HtmlElement,dynamic> select<GElement extends Element|EnterElement|Document|Window|Null, OldDatum>(String selector);*/
/// Select the specified node element.
/// The first generic  "GElement" refers to the type of element to be selected. The second generic "OldDatum" refers to the type of the
/// datum, on the selected element. This is useful when re-selecting an element with a previously set, know datum type.
/*external Selection<GElement,OldDatum,Null,dynamic> select<GElement extends Element|EnterElement|Document|Window|Null, OldDatum>(GElement node);*/
@JS()
external Selection /*Selection<GElement,OldDatum,HtmlElement,dynamic>|Selection<GElement,OldDatum,Null,dynamic>*/ select/*<GElement, OldDatum>*/(
    dynamic /*String|GElement*/ selector_node);

/// Create an empty selection.
/*external Selection<Null, dynamic, Null, dynamic> selectAll();*/
/// Create an empty selection.
/*external Selection<Null, dynamic, Null, dynamic> selectAll(Null selector);*/
/// Create an empty selection.
/*external Selection<Null, dynamic, Null, dynamic> selectAll(dynamic selector);*/
/// Select all elements that match the specified selector string. The elements will be selected in document order (top-to-bottom).
/// If no elements in the document match the selector, returns an empty selection.
/// The first generic "GElement" refers to the type of element to be selected. The second generic "OldDatum" refers to the type of the
/// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
/*external Selection<GElement,OldDatum,HtmlElement,dynamic> selectAll<GElement extends Element|EnterElement|Document|Window|Null, OldDatum>(String selector);*/
/// Select the specified array of nodes.
/// The first generic "GElement" refers to the type of element to be selected. The second generic "OldDatum" refers to the type of the
/// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
/*external Selection<GElement,OldDatum,Null,dynamic> selectAll<GElement extends Element|EnterElement|Document|Window|Null, OldDatum>(List<GElement> nodes);*/
/// Select the specified nodes. This signature allows the selection of nodes contained in a NodeList, HTMLCollection or similar data structure.
/// The first generic "GElement" refers to the type of element to be selected. The second generic "OldDatum" refers to the type of the
/// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
/*external Selection<GElement,OldDatum,Null,dynamic> selectAll<GElement extends Element|EnterElement|Document|Window|Null, OldDatum>(ArrayLike<GElement> nodes);*/
@JS()
external Selection /*Selection<Null,dynamic,Null,dynamic>|Selection<GElement,OldDatum,HtmlElement,dynamic>|Selection<GElement,OldDatum,Null,dynamic>*/ selectAll/*<GElement, OldDatum>*/(
    [dynamic /*dynamic|String|List<GElement>|ArrayLike<GElement>*/ selector_nodes]);

/// A D3 Selection of elements.
/// The first generic "GElement" refers to the type of the selected element(s).
/// The second generic "Datum" refers to the type of the datum of a selected element(s).
/// The third generic "PElement" refers to the type of the parent element(s) in the D3 selection.
/// The fourth generic "PDatum" refers to the type of the datum of the parent element(s).
@anonymous
@JS()
abstract class Selection<
    GElement extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    Datum,
    PElement extends dynamic /*Element|EnterElement|Document|Window|Null*/,
    PDatum> {
  /// Sub-selection -------------------------
  /// For each selected element, select the first descendant element that matches the specified selector string.
  /// If no element matches the specified selector for the current element, the element at the current index will
  /// be null in the returned selection. If multiple elements match the selector, only the first matching element
  /// in document order is selected. Selection.select does not affect grouping: it preserves the existing group
  /// structure and indexes, and propagates data (if any) to selected children.
  /// If the current element has associated data, this data is propagated to the
  /// corresponding selected element.
  /// The generic represents the type of the descendant element to be selected.
  /*external Selection<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Document|Window|Null>(String selector);*/
  /// Create an empty sub-selection. Selection.select does not affect grouping: it preserves the existing group
  /// structure and indexes.
  /*external Selection<Null,dynamic,PElement,PDatum> select<DescElement extends Element|EnterElement|Document|Window|Null>(Null selector);*/
  /// For each selected element, select the descendant element returned by the selector function.
  /// If no element is returned by the selector function for the current element, the element at the
  /// current index will be null in the returned selection. Selection.select does not affect grouping:
  /// it preserves the existing group structure and indexes, and propagates data (if any) to selected children.
  /// If the current element has associated data, this data is propagated to the
  /// corresponding selected element.
  /// The generic represents the type of the descendant element to be selected.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// It must return an element, or null if there is no matching element.
  /*external Selection<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Document|Window|Null>(ValueFn<GElement,Datum,DescElement> selector);*/
  external Selection /*Selection<DescElement,Datum,PElement,PDatum>|Selection<Null,dynamic,PElement,PDatum>*/ select/*<DescElement>*/(
      String selector);

  /// Create an empty sub-selection. Selection.selectAll does affect grouping: The elements in the returned
  /// selection are grouped by their corresponding parent node in this selection, the group at the current index will be empty.
  /*external Selection<Null, dynamic, GElement, Datum> selectAll();*/
  /// Create an empty sub-selection. Selection.selectAll does affect grouping: The elements in the returned
  /// selection are grouped by their corresponding parent node in this selection, the group at the current index will be empty.
  /*external Selection<Null, dynamic, GElement, Datum> selectAll(Null selector);*/
  /// Create an empty sub-selection. Selection.selectAll does affect grouping: The elements in the returned
  /// selection are grouped by their corresponding parent node in this selection, the group at the current index will be empty.
  /*external Selection<Null, dynamic, GElement, Datum> selectAll(dynamic selector);*/
  /// For each selected element, selects the descendant elements that match the specified selector string. The elements in the returned
  /// selection are grouped by their corresponding parent node in this selection. If no element matches the specified selector
  /// for the current element, the group at the current index will be empty. Selection.selectAll does affect grouping: each selected descendant
  /// is grouped by the parent element in the originating selection.
  /// The selected elements do not inherit data from this selection; use selection.data to propagate data to children.
  /// The first generic "DescElement" refers to the type of descendant element to be selected. The second generic "OldDatum" refers to the type of the
  /// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
  /*external Selection<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Document|Window|Null, OldDatum>(String selector);*/
  /// For each selected element, selects the descendant elements returned by the selector function. The elements in the returned
  /// selection are grouped by their corresponding parent node in this selection. If no element matches the specified selector
  /// for the current element, the group at the current index will be empty. Selection.selectAll does affect grouping: each selected descendant
  /// is grouped by the parent element in the originating selection.
  /// The selected elements do not inherit data from this selection; use selection.data to propagate data to children.
  /// The first generic "DescElement" refers to the type of descendant element to be selected. The second generic "OldDatum" refers to the type of the
  /// datum, of a selected element. This is useful when re-selecting elements with a previously set, know datum type.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. It must return an array of elements
  /// (or a pseudo-array, such as a NodeList), or the empty array if there are no matching elements.
  /*external Selection<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Document|Window|Null, OldDatum>(ValueFn<GElement,Datum,List<DescElement>|ArrayLike<DescElement>> selector);*/
  external Selection /*Selection<Null,dynamic,GElement,Datum>|Selection<DescElement,OldDatum,GElement,Datum>*/ selectAll/*<DescElement, OldDatum>*/(
      [dynamic /*dynamic|String*/ selector]);

  /// Modifying -------------------------------
  /// Return the current value of the specified attribute for the first (non-null) element in the selection.
  /// This is generally useful only if you know that the selection contains exactly one element.
  /*external String attr(String name);*/
  /// Clear the attribute with the specified name for the selected elements and returns this selection.
  /*external Selection attr(String name, Null value);*/
  /// Sets the value of the attribute with the specified name for the selected elements and returns this selection.
  /// All elements are given the same attribute value.
  /*external Selection attr(String name, String|num|bool value);*/
  /// Sets the value of the attribute with the specified name for the selected elements and returns this selection.
  /// The value for the individual selected elements is determined by the value function.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.  A null value will clear the attribute.
  /*external Selection attr(String name, ValueFn<GElement,Datum,String|num|bool|Null> value);*/
  external dynamic /*String|Selection*/ attr(String name,
      [dynamic /*String|num|bool*/ value]);

  /// Returns true if and only if the first (non-null) selected element has the specified classes.
  /// This is generally useful only if you know the selection contains exactly one element.
  /*external bool classed(String names);*/
  /// Assigns or unassigns the specified CSS class names on the selected elements by setting
  /// the class attribute or modifying the classList property and returns this selection.
  /// If the constant value is truthy, then all elements are assigned the specified classes; otherwise, the classes are unassigned.
  /*external Selection classed(String names, bool value);*/
  /// Assigns or unassigns the specified CSS class names on the selected elements by setting
  /// the class attribute or modifying the classList property and returns this selection.
  /// The assign/unassign status for the individual selected elements is determined by the boolean return
  /// value of the value function.
  /// being passed the current datum (d), the current index (i), and the current group (nodes), with this as the current DOM element.
  /// The function’s return value is then used to assign or unassign classes on each element.
  /*external Selection classed(String names, ValueFn<GElement, Datum, bool> value);*/
  external dynamic /*bool|Selection*/ classed(String names, [bool value]);

  /// Returns the current computed value of the specified style for the first (non-null) element in the selection.
  /// This is generally useful only if you know that the selection contains exactly one element.
  /// The computed value may be different than the previously-set value, particularly if it was set using a
  /// shorthand property (such as the font style, which is shorthand for font-size, font-face, etc.).
  /*external String style(String name);*/
  /// Clear the style with the specified name for the selected elements and returns this selection.
  /*external Selection style(String name, Null value);*/
  /// Sets the value of the style with the specified name for the selected elements and returns this selection.
  /// All elements are given the same style value.
  /*external Selection style(String name, String|num|bool value, [Null|'important' priority]);*/
  /// Sets the value of the style with the specified name for the selected elements and returns this selection.
  /// The value for the individual selected elements is determined by the value function.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.  A null value will clear the style.
  /*external Selection style(String name, ValueFn<GElement,Datum,String|num|bool|Null> value, [Null|'important' priority]);*/
  external dynamic /*String|Selection*/ style(String name,
      [dynamic /*String|num|bool*/ value, String /*'important'*/ priority]);

  /// Return the current value of the specified property for the first (non-null) element in the selection.
  /// This is generally useful only if you know that the selection contains exactly one element.
  /*external dynamic property(String name);*/
  /// Look up a local variable on the first node of this selection. Note that this is not equivalent to `local.get(selection.node())` in that it will not look up locals set on the parent node(s).
  /*external T|dynamic property<T>(Local<T> name);*/
  /// Sets the value of the property with the specified name for the selected elements and returns this selection.
  /// The value for the individual selected elements is determined by the value function.
  /// Some HTML elements have special properties that are not addressable using attributes or styles,
  /// such as a form field’s text value and a checkbox’s checked boolean. Use this method to get or set these properties.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.  A null value will clear the property.
  /*external Selection property(
    String name, ValueFn<GElement, Datum, dynamic> value);*/
  /// Clears the property with the specified name for the selected elements and returns this selection.
  /*external Selection property(String name, Null value);*/
  /// Sets the value of the property with the specified name for the selected elements and returns this selection.
  /// All elements are given the same property value.
  /*external Selection property(String name, dynamic value);*/
  /// Store a value in a `d3.local` variable.
  /// This is equivalent to `selection.each(function (d, i, g) { name.set(this, value.call(this, d, i, g)); })` but more concise.
  /*external Selection property<T>(Local<T> name, ValueFn<GElement,Datum,T> value);*/
  /// Store a value in a `d3.local` variable for each node in the selection.
  /// This is equivalent to `selection.each(function () { name.set(this, value); })` but more concise.
  /*external Selection property<T>(Local<T> name, T value);*/
  external dynamic /*dynamic|T|Selection*/ property/*<T>*/(
      dynamic /*String|Local<T>*/ name,
      [dynamic /*dynamic|T*/ value]);

  /// Returns the text content for the first (non-null) element in the selection.
  /// This is generally useful only if you know the selection contains exactly one element.
  /*external String text();*/
  /// Clear the text content of the selected elements and return the selection.
  /*external Selection text(Null value);*/
  /// Sets the text content to the specified value on all selected elements, replacing any existing child elements.
  /// All elements are given the same text content.
  /*external Selection text(String|num|bool value);*/
  /// Sets the text content to the specified value on all selected elements, replacing any existing child elements.
  /// All elements are given the same text content.
  /// the current index (i), and the current group (nodes), with this as the current DOM element.
  /// The function’s return value is then used to set each element’s text content. A null value will clear the content.
  /*external Selection text(ValueFn<GElement,Datum,String|num|bool|Null> value);*/
  external dynamic /*String|Selection*/ text(
      [dynamic /*String|num|bool*/ value]);

  /// Returns a string representation of the inner HTML for the first (non-null) element in the selection.
  /// This is generally useful only if you know the selection contains exactly one element.
  /*external String html();*/
  /// Clear the html content of the selected elements and return the selection.
  /*external Selection html(Null value);*/
  /// Sets the inner HTML to the specified value on all selected elements, replacing any existing child elements.
  /// All elements are given the same inner HTML
  /*external Selection html(String value);*/
  /// Sets the inner HTML to the specified value on all selected elements, replacing any existing child elements.
  /// The inner HTML is determined for each individual element using a value function.
  /// datum (d), the current index (i), and the current group (nodes), with this as the current DOM element.
  /// The function’s return value is then used to set each element’s inner HTML. A null value will clear the content.
  /*external Selection html(ValueFn<GElement,Datum,String|Null> value);*/
  external dynamic /*String|Selection*/ html([String value]);

  /// Appends a new element of the specified type (tag name) as the last child of each selected element, or the next
  /// following sibling in the update selection if this is an enter selection.
  /// (The enter behavior allows you to insert elements into the DOM in an order consistent with bound data;
  /// however, the slower selection.order may still be required if updating elements change order.)
  /// This method returns a new selection containing the appended elements.
  /// Each new element inherits the data of the current elements, if any.
  /// The generic refers to the type of the child element to be appended.
  /// to specify a text attribute in the SVG namespace. If no namespace is specified, the namespace will be inherited
  /// from the parent element; or, if the name is one of the known prefixes, the corresponding namespace will be used
  /// (for example, svg implies svg:svg)
  /*external Selection<ChildElement,Datum,PElement,PDatum> append<ChildElement extends Element|EnterElement|Document|Window|Null>(String type);*/
  /// Appends a new element of the type provided by the element creator function as the last child of each selected element,
  /// or the next following sibling in the update selection if this is an enter selection.
  /// (The enter behavior allows you to insert elements into the DOM in an order consistent with bound data;
  /// however, the slower selection.order may still be required if updating elements change order.)
  /// This method returns a new selection containing the appended elements.
  /// Each new element inherits the data of the current elements, if any.
  /// The generic refers to the type of the child element to be appended.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. This function should return
  /// an element to be appended. (The function typically creates a new element, but it may instead return an existing element.)
  /*external Selection<ChildElement,Datum,PElement,PDatum> append<ChildElement extends Element|EnterElement|Document|Window|Null>(ValueFn<GElement,Datum,ChildElement> type);*/
  external Selection<dynamic/*=ChildElement*/, Datum, PElement, PDatum>
      append/*<ChildElement>*/(String type);

  /// Inserts a new element of the specified type (tag name) before the element matching the specified "before"
  /// selector string for each selected element.
  /// This method returns a new selection containing the appended elements.
  /// Each new element inherits the data of the current elements, if any.
  /// The generic refers to the type of the child element to be appended.
  /// * A string representing the tag name for the element type to be inserted. The specified name may have a namespace prefix,
  /// such as svg:text to specify a text attribute in the SVG namespace. If no namespace is specified, the namespace will be inherited
  /// from the parent element; or, if the name is one of the known prefixes, the corresponding namespace will be used
  /// (for example, svg implies svg:svg)
  /// * A creator function which is evaluated for each selected element, in order, being passed the current datum (d),
  /// the current index (i), and the current group (nodes), with this as the current DOM element. This function should return
  /// an element to be inserted. (The function typically creates a new element, but it may instead return an existing element.)
  /// * A CSS selector string for the element before which the insertion should occur.
  /// * A child selector function which is evaluated for each selected element, in order, being passed the current datum (d),
  /// the current index (i), and the current group (nodes), with this as the current DOM element. This function should return the child element
  /// before which the element should be inserted.
  external Selection<dynamic/*=ChildElement*/, Datum, PElement, PDatum> insert/*<ChildElement extends Element|EnterElement|Document|Window|Null>*/(
      String /*String|ValueFn<GElement,Datum,ChildElement>*/ type,
      [String /*String|ValueFn<GElement,Datum,Element|EnterElement|Document|Window|Null>*/ before]);

  /// Removes the selected elements from the document.
  /// Returns this selection (the removed elements) which are now detached from the DOM.
  external Selection remove();

  /// Returns a new selection merging this selection with the specified other selection.
  /// The returned selection has the same number of groups and the same parents as this selection.
  /// Any missing (null) elements in this selection are filled with the corresponding element,
  /// if present (not null), from the specified selection. (If the other selection has additional groups or parents,
  /// they are ignored.)
  /// This method is commonly used to merge the enter and update selections after a data-join.
  /// After modifying the entering and updating elements separately, you can merge the two selections and
  /// perform operations on both without duplicate code.
  /// This method is not intended for concatenating arbitrary selections, however: if both this selection
  /// and the specified other selection have (non-null) elements at the same index, this selection’s element
  /// is returned in the merge and the other selection’s element is ignored.
  external Selection<GElement, Datum, PElement, PDatum> merge(
      Selection<GElement, Datum, PElement, PDatum> other);

  /// Filters the selection, returning a new selection that contains only the elements for
  /// which the specified filter is true.
  /// The returned filtered selection preserves the parents of this selection, but like array.filter,
  /// it does not preserve indexes as some elements may be removed; use selection.select to preserve the index, if needed.
  /*external Selection<GElement, Datum, PElement, PDatum> filter(String selector);*/
  /// Filters the selection, returning a new selection that contains only the elements for
  /// which the specified filter is true.
  /// The returned filtered selection preserves the parents of this selection, but like array.filter,
  /// it does not preserve indexes as some elements may be removed; use selection.select to preserve the index, if needed.
  /// The generic refers to the type of element which will be selected after applying the filter, i.e. if the element types
  /// contained in a pre-filter selection are narrowed to a subset as part of the filtering.
  /*external Selection<FilteredElement,Datum,PElement,PDatum> filter<FilteredElement extends Element|EnterElement|Document|Window|Null>(String selector);*/
  /// Filter the selection, returning a new selection that contains only the elements for
  /// which the specified filter is true.
  /// The returned filtered selection preserves the parents of this selection, but like array.filter,
  /// it does not preserve indexes as some elements may be removed; use selection.select to preserve the index, if needed.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. This function should return true
  /// for an element to be included, and false otherwise.
  /*external Selection<GElement, Datum, PElement, PDatum> filter(
    ValueFn<GElement, Datum, bool> selector);*/
  /// Filter the selection, returning a new selection that contains only the elements for
  /// which the specified filter is true.
  /// The returned filtered selection preserves the parents of this selection, but like array.filter,
  /// it does not preserve indexes as some elements may be removed; use selection.select to preserve the index, if needed.
  /// the current index (i), and the current group (nodes), with this as the current DOM element. This function should return true
  /// for an element to be included, and false otherwise.
  /*external Selection<FilteredElement,Datum,PElement,PDatum> filter<FilteredElement extends Element|EnterElement|Document|Window|Null>(ValueFn<GElement,Datum,bool> selector);*/
  external Selection /*Selection<GElement,Datum,PElement,PDatum>|Selection<FilteredElement,Datum,PElement,PDatum>*/ filter/*<FilteredElement>*/(
      String selector);

  /// Return a new selection that contains a copy of each group in this selection sorted according
  /// to the compare function. After sorting, re-inserts elements to match the resulting order (per selection.order).
  /// Note that sorting is not guaranteed to be stable; however, it is guaranteed to have the same
  /// behavior as your browser’s built-in sort method on arrays.
  /// two elements’ data a and b to compare. It should return either a negative, positive, or zero value.
  /// If negative, then a should be before b; if positive, then a should be after b; otherwise, a and b are
  /// considered equal and the order is arbitrary.
  external Selection sort([num comparator(Datum a, Datum b)]);

  /// Re-insert elements into the document such that the document order of each group matches the selection order.
  /// This is equivalent to calling selection.sort if the data is already sorted, but much faster.
  external Selection order();

  /// Re-insert each selected element, in order, as the last child of its parent.
  external Selection raise();

  /// Re-insert each selected element, in order, as the first child of its parent.
  external Selection lower();

  /// Data Join ---------------------------------
  /// Returns the bound datum for the first (non-null) element in the selection.
  /// This is generally useful only if you know the selection contains exactly one element.
  /*external Datum datum();*/
  /// Delete the bound data for each element in the selection.
  /*external Selection<GElement, dynamic, PElement, PDatum> datum(Null value);*/
  /// Sets the element’s bound data using the specified value function on all selected elements.
  /// Unlike selection.data, this method does not compute a join and does not affect
  /// indexes or the enter and exit selections.
  /// The generic refers to the type of the new datum to be used for the selected elements.
  /// being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. The function is then used to set each element’s new data.
  /// A null value will delete the bound data.
  /*external Selection<GElement,NewDatum,PElement,PDatum> datum<NewDatum>(ValueFn<GElement,Datum,NewDatum> value);*/
  /// Sets the element’s bound data to the specified value on all selected elements.
  /// Unlike selection.data, this method does not compute a join and does not affect
  /// indexes or the enter and exit selections.
  /// The generic refers to the type of the new datum to be used for the selected elements.
  /*external Selection<GElement,NewDatum,PElement,PDatum> datum<NewDatum>(NewDatum value);*/
  external dynamic /*Datum|Selection<GElement,dynamic,PElement,PDatum>|Selection<GElement,NewDatum,PElement,PDatum>*/ datum/*<NewDatum>*/(
      [dynamic/*=NewDatum*/ value]);

  /// Returns the array of data for the selected elements.
  /*external List<Datum> data();*/
  /// Joins the specified array of data with the selected elements, returning a new selection that it represents
  /// the update selection: the elements successfully bound to data. Also defines the enter and exit selections on
  /// the returned selection, which can be used to add or remove elements to correspond to the new data.
  /// The data is specified for each group in the selection. If the selection has multiple groups
  /// (such as d3.selectAll followed by selection.selectAll), then data should typically be specified as a function.
  /// If a key function is not specified, then the first datum in data is assigned to the first selected element,
  /// the second datum to the second selected element, and so on.
  /// A key function may be specified to control which datum is assigned to which element, replacing the default join-by-index.
  /// The update and enter selections are returned in data order, while the exit selection preserves the selection
  /// order prior to the join. If a key function is specified, the order of elements in the selection may not match
  /// their order in the document; use selection.order or selection.sort as needed.
  /// This method cannot be used to clear bound data; use selection.datum instead.
  /// For details see: [https://github.com/d3/d3-selection#joining-data ]
  /// The generic refers to the type of the new datum to be used for the selected elements.
  /// current datum (d), the current index (i), and the current group (nodes), with this as the current DOM element.
  /// The key function is then also evaluated for each new datum in data, being passed the current datum (d),
  /// the current index (i), and the group’s new data, with this as the group’s parent DOM element.
  /// The datum for a given key is assigned to the element with the matching key. If multiple elements have the same key,
  /// the duplicate elements are put into the exit selection; if multiple data have the same key, the duplicate data are put into the enter selection.
  /*external Selection<GElement,NewDatum,PElement,PDatum> data<NewDatum>(List<NewDatum> data, [ValueFn<GElement|PElement,Datum|NewDatum,String> key]);*/
  /// Joins the data returned by the specified value function with the selected elements, returning a new selection that it represents
  /// the update selection: the elements successfully bound to data. Also defines the enter and exit selections on
  /// the returned selection, which can be used to add or remove elements to correspond to the new data.
  /// The data is specified for each group in the selection.
  /// If a key function is not specified, then the first datum in data is assigned to the first selected element,
  /// the second datum to the second selected element, and so on.
  /// A key function may be specified to control which datum is assigned to which element, replacing the default join-by-index.
  /// The update and enter selections are returned in data order, while the exit selection preserves the selection
  /// order prior to the join. If a key function is specified, the order of elements in the selection may not match
  /// their order in the document; use selection.order or selection.sort as needed.
  /// This method cannot be used to clear bound data; use selection.datum instead.
  /// For details see: [https://github.com/d3/d3-selection#joining-data ]
  /// The generic refers to the type of the new datum to be used for the selected elements.
  /// (d, which may be undefined), the group index (i), and the selection’s parent nodes (nodes),
  /// with this as the group’s parent element. The function returns an array of values for each group.
  /// current datum (d), the current index (i), and the current group (nodes), with this as the current DOM element.
  /// The key function is then also evaluated for each new datum in data, being passed the current datum (d),
  /// the current index (i), and the group’s new data, with this as the group’s parent DOM element.
  /// The datum for a given key is assigned to the element with the matching key. If multiple elements have the same key,
  /// the duplicate elements are put into the exit selection; if multiple data have the same key, the duplicate data are put into the enter selection.
  /*external Selection<GElement,NewDatum,PElement,PDatum> data<NewDatum>(ValueFn<PElement,PDatum,List<NewDatum>> data, [ValueFn<GElement|PElement,Datum|NewDatum,String> key]);*/
  external dynamic /*List<Datum>|Selection<GElement,NewDatum,PElement,PDatum>*/ data/*<NewDatum>*/(
      [List<dynamic/*=NewDatum*/ > data, key]);

  /// Return the enter selection: placeholder nodes for each datum that had no corresponding DOM element
  /// in the selection. The enter selection is determined by selection.data, and is empty on a selection that
  /// is not joined to data.
  external Selection<EnterElement, Datum, PElement, PDatum> enter();

  /// Return the exit selection: existing DOM elements in the selection for which no new datum was found.
  /// The exit selection is determined by the previous selection.data, and is thus empty until the selection is
  /// joined to data. If the exit selection is retrieved more than once after a data join, subsequent calls return
  /// the empty selection.
  /// IMPORTANT: The generic refers to the type of the old datum associated with the exit selection elements.
  /// Ensure you set the generic to the correct type, if you need to access the data on the exit selection in
  /// follow-up steps, e.g. to set styles as part of an exit transition before removing them.
  external Selection<GElement, dynamic/*=OldDatum*/, PElement, PDatum>
      exit/*<OldDatum>*/();

  /// Event Handling -------------------
  /// Return the currently-assigned listener for the specified event typename on the first (non-null) selected element,
  /// if any, If multiple typenames are specified, the first matching listener is returned.
  /// The type may be optionally followed by a period (.) and a name; the optional name allows multiple callbacks to be registered
  /// to receive events of the same type, such as click.foo and click.bar. To specify multiple typenames, separate typenames with spaces,
  /// such as "input change"" or "click.foo click.bar".
  /*external ValueFn<GElement,Datum,Null>|dynamic on(String typenames);*/
  /// Remove a listener for the specified event type names. To remove all listeners for a given name,
  /// pass null as the listener and ".foo" as the typename, where foo is the name; to remove all listeners with no name, specify "." as the typename.
  /// The type may be optionally followed by a period (.) and a name; the optional name allows multiple callbacks to be registered
  /// to receive events of the same type, such as click.foo and click.bar. To specify multiple typenames, separate typenames with spaces,
  /// such as "input change"" or "click.foo click.bar".
  /*external Selection on(String typenames, Null listener);*/
  /// Add an event listener for the specified event type names. If an event listener was previously registered for the same typename
  /// on a selected element, the old listener is removed before the new listener is added.
  /// When a specified event is dispatched on a selected node, the specified listener will be evaluated for each selected element.
  /// An optional capture flag may be specified which corresponds to the W3C useCapture flag:
  /// “After initiating capture, all events of the specified type will be dispatched to the registered EventListener before being
  /// dispatched to any EventTargets beneath them in the tree. Events which are bubbling upward through the tree will not
  /// trigger an EventListener designated to use capture.”
  /// The type may be optionally followed by a period (.) and a name; the optional name allows multiple callbacks to be registered
  /// to receive events of the same type, such as click.foo and click.bar. To specify multiple typenames, separate typenames with spaces,
  /// such as "input change"" or "click.foo click.bar".
  /// and the current group (nodes), with this as the current DOM element. Listeners always see the latest datum for their element,
  /// but the index is a property of the selection and is fixed when the listener is assigned; to update the index, re-assign the listener.
  /// To access the current event within a listener, use d3.event.
  /*external Selection on(String typenames, ValueFn<GElement, Datum, Null> listener,
    [bool capture]);*/
  external dynamic /*dynamic|Selection*/ on(String typenames,
      [listener, bool capture]);

  /// Dispatches a custom event of the specified type to each selected element, in order.
  /// An optional parameters map may be specified to set additional properties of the event.
  /*external Selection dispatch(String type, [CustomEventParameters parameters]);*/
  /// Dispatches a custom event of the specified type to each selected element, in order.
  /// An optional value function returning a parameters map for each element in the selection may be specified to set additional properties of the event.
  /// being passed the current datum (d), the current index (i), and the current group (nodes),
  /// with this as the current DOM element. It must return the parameters map for the current element.
  /*external Selection dispatch(String type,
    [ValueFn<GElement, Datum, CustomEventParameters> parameters]);*/
  external Selection dispatch(String type, [CustomEventParameters parameters]);

  /// Control Flow ----------------------
  /// Invoke the specified function for each selected element, passing in the current datum (d),
  /// the current index (i), and the current group (nodes), with this of the current DOM element.
  /// This method can be used to invoke arbitrary code for each selected element, and is useful for creating a context to access parent and child data simultaneously.
  external Selection each(ValueFn<GElement, Datum, Null> func);

  /// Invoke the specified function exactly once, passing in this selection along with any optional arguments.
  /// Returns this selection.
  external Selection JS$call(
      Function /*(selection: Selection<GElement, Datum, PElement, PDatum>, ...args: any[]) => void*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Return true if this selection contains no (non-null) elements.
  external bool empty();

  /// Return the first (non-null) element in this selection. If the selection is empty, returns null.
  external GElement /*GElement|Null*/ node();

  /// Return an array of all (non-null) elements in this selection.
  external List<GElement> nodes();

  /// Returns the total number of elements in this selection.
  external num size();
}

/// Selects the root element, document.documentElement. This function can also be used to test for selections
/// (instanceof d3.selection) or to extend the selection prototype.
typedef Selection<HtmlElement, dynamic, Null, dynamic> SelectionFn();

/// Selects the root element, document.documentElement. This function can also be used to test for selections
/// (instanceof d3.selection) or to extend the selection prototype.
@JS()
external SelectionFn get selection;
@JS()
external set selection(SelectionFn v);

/// ---------------------------------------------------------------------------
/// on.js event and customEvent related
/// ---------------------------------------------------------------------------
/// A D3 Base Event
@anonymous
@JS()
abstract class BaseEvent {
  /// Event type
  external String get type;
  external set type(String v);

  /// The prior value of d3.event, allowing custom events to retain a reference to the originating native event.
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory BaseEvent({String type, dynamic sourceEvent});
}

/// The current event, if any. This is set during the invocation of an event listener, and is reset after the listener terminates.
/// Use this to access standard event fields such as event.timeStamp and methods such as event.preventDefault.
/// While you can use the native event.pageX and event.pageY, it is often more convenient to transform the event position to
/// the local coordinate system of the container that received the event using d3.mouse, d3.touch or d3.touches.
/// If you use Babel, Webpack, or another ES6-to-ES5 bundler, be aware that the value of d3.event changes during an event!
/// An import of d3.event must be a live binding, so you may need to configure the bundler to import from D3’s ES6 modules
/// rather than from the generated UMD bundle; not all bundlers observe jsnext:main.
/// Also beware of conflicts with the window.event global.
@JS()
external dynamic get event;
@JS()
external set event(dynamic v);

/// Invokes the specified listener, using the specified "that" as "this" context and passing the specified arguments, if any.
/// During the invocation, d3.event is set to the specified event; after the listener returns (or throws an error),
/// d3.event is restored to its previous value.
/// In addition, sets event.sourceEvent to the prior value of d3.event, allowing custom events to retain a reference to the originating native event.
/// Returns the value returned by the listener.
/// The first generic "Context" refers to the "this" context type in which the listener will be invoked.
/// The second generic "Result" specifies the return type of the listener.
/// by the "that" argument of customEvent(...). It will be passed all optional arguments passed to customEvent(...). The function returns
/// a value corresponding to the type of the second generic type.
@JS()
external dynamic/*=Result*/ customEvent/*<Context, Result>*/(
    BaseEvent event,
    Function /*(this: Context, ...args: any[]) => Result*/ listener,
    dynamic/*=Context*/ that,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);

/// ---------------------------------------------------------------------------
/// mouse.js related
/// ---------------------------------------------------------------------------
/// Get (x, y)-coordinates of the current event relative to the specified container element.
/// The container may be an HTML or SVG container element, such as a G element or an SVG element.
/// The coordinates are returned as a two-element array of numbers [x, y].
@JS()
external List<num> /*Tuple of <num,num>*/ mouse(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container);

/// ---------------------------------------------------------------------------
/// touch.js and touches.js related
/// ---------------------------------------------------------------------------
/// Returns the x and y coordinates of the touch with the specified identifier associated
/// with the current event relative to the specified container.
/// The container may be an HTML or SVG container element, such as a G element or an SVG element.
/// The coordinates are returned as a two-element array of numbers [x, y] or null if there is no touch with
/// the specified identifier in touches, returns null; this can be useful for ignoring touchmove events
/// where the only some touches have moved.
/// If touches is not specified, it defaults to the current event’s changedTouches property.
/*external Tuple of <num,num>|Null touch(HtmlElement|SvgSvgElement|GElement container, num identifier);*/
/// Return the x and y coordinates of the touch with the specified identifier associated
/// with the current event relative to the specified container.
/// The container may be an HTML or SVG container element, such as a G element or an SVG element.
/// The coordinates are returned as a two-element array of numbers [x, y] or null if there is no touch with
/// the specified identifier in touches, returns null; this can be useful for ignoring touchmove events
/// where the only some touches have moved.
/// If touches is not specified, it defaults to the current event’s changedTouches property.
/*external Tuple of <num,num>|Null touch(HtmlElement|SvgSvgElement|GElement container, TouchList touches, num identifier);*/
@JS()
external List<num> /*Tuple of <num,num>*/ touch(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container,
    dynamic /*num|TouchList*/ identifier_touches,
    [num identifier]);

/// Return the x and y coordinates of the touches associated with the current event relative to the specified container.
/// The container may be an HTML or SVG container element, such as a G element or an SVG element.
/// The coordinates are returned as an array of two-element arrays of numbers [[x1, y1], [x2, y2], …].
/// If touches is not specified, it defaults to the current event’s touches property.
@JS()
external List<List<num> /*Tuple of <num,num>*/ > touches(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container,
    [TouchList touches]);

/// ---------------------------------------------------------------------------
/// local.js related
/// ---------------------------------------------------------------------------
@anonymous
@JS()
abstract class Local<T> {
  /// Retrieves a local variable stored on the node (or one of its parents).
  external dynamic /*T|dynamic*/ JS$get(Element node);

  /// Deletes the value associated with the given node. Values stored on ancestors are not affected, meaning that child nodes will still see inherited values.
  /// This function returns true if there was a value stored directly on the node, and false otherwise.
  external bool remove(Element node);

  /// Store a value for this local variable. Calling `.get()` on children of this node will also retrieve the variable's value.
  external Element JS$set(Element node, T value);

  /// Obtain a string with the internally assigned property name for the local
  /// which is used to store the value on a node
  external String toString();
}

/// Obtain a new local variable
/// The generic refers to the type of the variable to store locally.
@JS()
external Local<dynamic/*=T*/ > local/*<T>*/();

/// ---------------------------------------------------------------------------
/// namespace.js related
/// ---------------------------------------------------------------------------
/// Interface for object literal containing local name with related fully qualified namespace
@anonymous
@JS()
abstract class NamespaceLocalObject {
  /// Fully qualified namespace
  external String get space;
  external set space(String v);

  /// Name of the local to be namespaced.
  external String get local;
  external set local(String v);
  external factory NamespaceLocalObject({String space, String local});
}

/// Obtain an object with properties of fully qualified namespace string and
/// name of local by parsing a shorthand string "prefix:local". If the prefix
/// does not exist in the "namespaces" object provided by d3-selection, then
/// the local name is returned as a simple string.
/// name separated by colon, e.g. "svg:text".
@JS()
external dynamic /*NamespaceLocalObject|String*/ namespace(
    String prefixedLocal);

/// ---------------------------------------------------------------------------
/// namespaces.js related
/// ---------------------------------------------------------------------------
/// Interface for maps of namespace prefixes to corresponding fully qualified namespace strings
@anonymous
@JS()
abstract class NamespaceMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

/// Map of namespace prefixes to corresponding fully qualified namespace strings
@JS()
external NamespaceMap get namespaces;
@JS()
external set namespaces(NamespaceMap v);

/// ---------------------------------------------------------------------------
/// window.js related
/// ---------------------------------------------------------------------------
/// Returns the owner window for the specified node. If node is a node, returns the owner document’s default view;
/// if node is a document, returns its default view; otherwise returns the node.
@JS()
external Window window(dynamic /*Window|Document|Element*/ DOMNode);

/// ---------------------------------------------------------------------------
/// creator.js and matcher.js Complex helper closure generating functions
/// for explicit bound-context dependent use
/// ---------------------------------------------------------------------------
/// Given the specified element name, returns a function which creates an element of the given name,
/// assuming that "this" is the parent element.
/// The generic refers to the type of the new element to be returned by the creator function.
/// such as for SVG elements.
@JS()
external Func0<dynamic/*=NewGElement*/ >
    creator/*<NewGElement extends Element>*/(String name);

/// Given the specified selector, returns a function which returns true if "this" element matches the specified selector.
@JS()
external Func0<bool> matcher(String selector);

/// ----------------------------------------------------------------------------
/// selector.js and selectorAll.js related functions
/// ----------------------------------------------------------------------------
/// Given the specified selector, returns a function which returns the first descendant of "this" element
/// that matches the specified selector.
/// The generic refers to the type of the returned descendant element.
@JS()
external Func0<dynamic/*=DescElement*/ >
    selector/*<DescElement extends Element>*/(String selector);

/// Given the specified selector, returns a function which returns all descendants of "this" element that match the specified selector.
/// The generic refers to the type of the returned descendant element.
@JS()
external Func0<List<dynamic/*=DescElement*/ >>
    selectorAll/*<DescElement extends Element>*/(String selector);

