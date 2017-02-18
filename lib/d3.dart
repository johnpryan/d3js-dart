@JS("d3")
library lib.d3;

import "package:js/js.dart";
import "dart:html"
    show
        EventTarget,
        NodeList,
        Node,
        Event,
        CanvasRenderingContext2D,
        HttpRequest,
        DocumentFragment;
import "package:func/func.dart";

/// Type definitions for d3JS 3.5
/// Project: http://d3js.org/
/// Definitions by: Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// tslint:disable

/// Latest patch version of module validated against: 3.5.17
/* WARNING: export assignment not yet supported. */

// Module d3
/// The current version of D3.js.
@JS("d3.version")
external String get version;
@JS("d3.version")
external set version(String v);

/// Find the first element that matches the given selector string.
/*external Selection<dynamic> select(String selector);*/
/// Create a selection from the given node reference.
/*external Selection<dynamic> select(EventTarget node);*/
@JS("d3.select")
external Selection<dynamic> select(
    dynamic /*String|EventTarget*/ selector_node);

/// Find all elements that match the given selector string.
/*external Selection<dynamic> selectAll(String selector);*/
/// Create a selection from the given list of nodes.
/*external Selection<dynamic> selectAll(List<EventTarget> nodes);*/
@JS("d3.selectAll")
external Selection<dynamic> selectAll(
    dynamic /*String|List<EventTarget>*/ selector_nodes);

/// Returns the root selection (as if by d3.select(document.documentElement)). This function may be used for 'instanceof' tests, and extending its prototype will add properties to all selections.
@JS("d3.selection")
external Selection<dynamic> selection();
// Module selection
@JS("d3.selection.prototype")
external Selection<dynamic> get prototype;
@JS("d3.selection.prototype")
external set prototype(Selection<dynamic> v);

/// Selections are grouped into arrays of nodes, with the parent tracked in the 'parentNode' property.
@anonymous
@JS()
abstract class Group implements List<EventTarget> {
  external EventTarget get parentNode;
  external set parentNode(EventTarget v);
}

@anonymous
@JS()
abstract class Update<Datum> {
  /// Retrieve a grouped selection.
  /* Index signature is not yet supported by JavaScript interop. */
  /// The number of groups in this selection.
  external num get length;
  external set length(num v);

  /// Retrieve the value of the given attribute for the first node in the selection.
  /*external String attr(String name);*/
  /// For all nodes, set the attribute to the specified constant value. Use null to remove.
  /*external Update<Datum> attr(String name, num|String|bool value);*/
  /// Derive an attribute value for each node in the selection based on bound data.
  /*external Update<Datum> attr(String name, num|String|bool value(Datum datum, num index, num outerIndex));*/
  /// Set multiple properties at once using an Object. D3 iterates over all enumerable properties and either sets or computes the attribute's value based on the corresponding entry in the Object.
  /*external Update<Datum> attr(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj);*/
  external dynamic /*String|Update<Datum>*/ attr(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value]);

  /// Returns true if the first node in this selection has the given class list. If multiple classes are specified (i.e., "foo bar"), then returns true only if all classes match.
  /*external bool classed(String name);*/
  /// Adds (or removes) the given class list.
  /*external Update<Datum> classed(String name, bool value);*/
  /// Determine if the given class list should be toggled for each node in the selection.
  /*external Update<Datum> classed(
    String name, bool value(Datum datum, num index, num outerIndex));*/
  /// Set or derive classes for multiple class lists at once.
  /*external Update<Datum> classed(JSMap of <String,bool|Func3<Datum, num, num, bool>> obj);*/
  external dynamic /*bool|Update<Datum>*/ classed(
      dynamic /*String|JSMap of <String,bool|Func3<Datum, num, num, bool>>*/ name_obj,
      [dynamic /*bool|Func3<Datum, num, num, bool>*/ value]);

  /// Retrieve the computed style value for the first node in the selection.
  /*external String style(String name);*/
  /// Set a style property for all nodes in the selection.
  /*external Update<Datum> style(String name, num|String|bool value, [String priority]);*/
  /// Derive a property value for each node in the selection.
  /*external Update<Datum> style(String name, num|String|bool value(Datum datum, num index, num outerIndex), [String priority]);*/
  /// Set a large number of CSS properties from an object.
  /*external Update<Datum> style(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj, [String priority]);*/
  external dynamic /*String|Update<Datum>*/ style(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value_priority,
      String priority]);

  /// Retrieve an arbitrary node property such as the 'checked' property of checkboxes, or the 'value' of text boxes.
  /*external dynamic property(String name);*/
  /// For each node, set the property value. Internally, this sets the node property directly (e.g., node[name] = value), so take care not to mutate special properties like __proto__.
  /*external Update<Datum> property(String name, dynamic value);*/
  /// For each node, derive the property value. Internally, this sets the node property directly (e.g., node[name] = value), so take care not to mutate special properties like __proto__.
  /*external Update<Datum> property(
    String name, dynamic value(Datum datum, num index, num outerIndex));*/
  /// Set multiple node properties. Caveats apply: take care not to mutate special properties like __proto__.
  /*external Update<Datum> property(JSMap of <String,dynamic|Func3<Datum, num, num, dynamic>> obj);*/
  external dynamic /*dynamic|Update<Datum>*/ property(
      dynamic /*String|JSMap of <String,dynamic|Func3<Datum, num, num, dynamic>>*/ name_obj,
      [dynamic /*dynamic|Func3<Datum, num, num, dynamic>*/ value]);

  /// Retrieve the textContent of the first node in the selection.
  /*external String text();*/
  /// Set the textContent of each node in the selection.
  /*external Update<Datum> text(num|String|bool value);*/
  /// Compute the textContent of each node in the selection.
  /*external Update<Datum> text(num|String|bool value(Datum datum, num index, num outerIndex));*/
  external dynamic /*String|Update<Datum>*/ text(
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value]);

  /// Retrieve the HTML content of the first node in the selection. Uses 'innerHTML' internally and will not work with SVG or other elements without a polyfill.
  /*external String html();*/
  /// Set the HTML content of every node in the selection. Uses 'innerHTML' internally and thus will not work with SVG or other elements without a polyfill.
  /*external Selection<Datum> html(String value);*/
  /// Compute the HTML content for each node in the selection. Uses 'innerHTML' internally and thus will not work with SVG or other elements without a polyfill.
  /*external Selection<Datum> html(
    String value(Datum datum, num index, num outerIndex));*/
  external dynamic /*String|Selection<Datum>*/ html(
      [dynamic /*String|Func3<Datum, num, num, String>*/ value]);

  /// Appends a new child to each node in the selection. This child will inherit the parent's data (if available). Returns a fresh selection consisting of the newly-appended children.
  /*external Selection<Datum> append(String name);*/
  /// Appends a new child to each node in the selection by computing a new node. This child will inherit the parent's data (if available). Returns a fresh selection consisting of the newly-appended children.
  /*external Update<Datum> append(
    EventTarget name(Datum datum, num index, num outerIndex));*/
  external dynamic /*Selection<Datum>|Update<Datum>*/ append(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name);

  /// Inserts a new child to each node in the selection. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Update<Datum> insert(String name, String before);*/
  /// Inserts a new child to each node in the selection. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Update<Datum> insert(
    String name, EventTarget before(Datum datum, num index, num outerIndex));*/
  /// Inserts a new child to the end of each node in the selection by computing a new node. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Update<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex), String before);*/
  /// Inserts a new child to the end of each node in the selection by computing a new node. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Update<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex),
    EventTarget before(Datum datum, num index, num outerIndex));*/
  external Update<Datum> insert(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name,
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ before);

  /// Removes the elements from the DOM. They are in a detached state and may be re-added (though there is currently no dedicated API for doing so).
  external Update<Datum> remove();

  /// Retrieves the data bound to the first group in this selection.
  /*external List<Datum> data();*/
  /// Binds data to this selection.
  /*external Update<NewDatum> data<NewDatum>(List<NewDatum> data, [String key(NewDatum datum, num index, num outerIndex)]);*/
  /// Derives data to bind to this selection.
  /*external Update<NewDatum> data<NewDatum>(List<NewDatum> data(Datum datum, num index, num outerIndex), [String key(NewDatum datum, num index, num outerIndex)]);*/
  external dynamic /*List<Datum>|Update<NewDatum>*/ data/*<NewDatum>*/(
      [dynamic /*List<NewDatum>|Func3<Datum, num, num, List<NewDatum>>*/ data,
      String key(dynamic/*=NewDatum*/ datum, num index, num outerIndex)]);

  /// Filters the selection, returning only those nodes that match the given CSS selector.
  /*external Update<Datum> filter(String selector);*/
  /// Filters the selection, returning only those nodes for which the given function returned true.
  /*external Update<Datum> filter(
    bool selector(Datum datum, num index, num outerIndex));*/
  external Update<Datum> filter(
      dynamic /*String|Func3<Datum, num, num, bool>*/ selector);

  /// Return the data item bound to the first element in the selection.
  /*external Datum datum();*/
  /// Derive the data item for each node in the selection. Useful for situations such as the HTML5 'dataset' attribute.
  /*external Update<NewDatum> datum<NewDatum>(NewDatum value(Datum datum, num index, num outerIndex));*/
  /// Set the data item for each node in the selection.
  /*external Update<NewDatum> datum<NewDatum>(NewDatum value);*/
  external dynamic /*Datum|Update<NewDatum>*/ datum/*<NewDatum>*/(
      [dynamic /*Func3<Datum, num, num, NewDatum>|NewDatum*/ value]);

  /// Reorders nodes in the selection based on the given comparator. Nodes are re-inserted into the document once sorted.
  external Update<Datum> sort([num comparator(Datum a, Datum b)]);

  /// Reorders nodes in the document to match the selection order. More efficient than calling sort() if the selection is already ordered.
  external Update<Datum> order();

  /// Returns the listener (if any) for the given event.
  /*external Func3<Datum, num, num, dynamic> on(String type);*/
  /// Adds a listener for the specified event. If one was already registered, it is removed before the new listener is added. The return value of the listener function is ignored.
  /*external Update<Datum> on(
    String type, dynamic listener(Datum datum, num index, num outerIndex),
    [bool capture]);*/
  external dynamic /*Func3<Datum, num, num, dynamic>|Update<Datum>*/ on(
      String type,
      [dynamic listener(Datum datum, num index, num outerIndex),
      bool capture]);

  /// Begins a new transition. Interrupts any active transitions of the same name.
  external Transition<Datum> transition([String name]);

  /// Interrupts the active transition of the provided name. Does not cancel scheduled transitions.
  external Update<Datum> interrupt([String name]);

  /// Creates a subselection by finding the first descendent matching the selector string. Bound data is inherited.
  /*external Update<Datum> select(String selector);*/
  /// Creates a subselection by using a function to find descendent elements. Bound data is inherited.
  /*external Update<Datum> select(
    EventTarget selector(Datum datum, num index, num outerIndex));*/
  external Update<Datum> select(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ selector);

  /// Creates a subselection by finding all descendents that match the given selector. Bound data is not inherited.
  /*external Update<Datum> selectAll(String selector);*/
  /// Creates a subselection by using a function to find descendent elements. Bound data is not inherited.
  /*external Update<dynamic> selectAll(List<EventTarget>|NodeList selector(Datum datum, num index, num outerIndex));*/
  external Update /*Update<Datum>|Update<dynamic>*/ selectAll(
      dynamic /*String|Func3<Datum, num, num, List<EventTarget>|NodeList>*/ selector);

  /// Invoke the given function for each element in the selection. The return value of the function is ignored.
  external Update<Datum> each(
      dynamic func(Datum datum, num index, num outerIndex));

  /// Call a function on the selection. sel.call(foo) is equivalent to foo(sel).
  external Update<Datum> JS$call(
      Function /*(sel: Update<Datum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Returns true if the current selection is empty.
  external bool empty();

  /// Returns the first non-null element in the selection, or null otherwise.
  external Node node();

  /// Returns the total number of elements in the selection.
  external num size();

  /// Returns the placeholder nodes for each data element for which no corresponding DOM element was found.
  external Enter<Datum> enter();

  /// Returns a selection for those DOM nodes for which no new data element was found.
  external Selection<Datum> exit();
}

@anonymous
@JS()
abstract class Enter<Datum> {
  /*external Selection<Datum> append(String name);*/
  /*external Selection<Datum> append(
    EventTarget name(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> append(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name);
  /*external Selection<Datum> insert(String name, [String before]);*/
  /*external Selection<Datum> insert(
    String name, EventTarget before(Datum datum, num index, num outerIndex));*/
  /*external Selection<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex),
    [String before]);*/
  /*external Selection<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex),
    EventTarget before(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> insert(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name,
      [dynamic /*String|Func3<Datum, num, num, EventTarget>*/ before]);
  external Selection<Datum> select(
      EventTarget name(Datum datum, num index, num outerIndex));
  external Enter<Datum> JS$call(
      Function /*(selection: Enter<Datum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external bool empty();
  external num size();
}

// End module selection
/// Administrivia: JavaScript primitive types, or "things that toString() predictably".
/*export type Primitive = number | string | boolean;*/
/// Administrivia: anything with a valueOf(): number method is comparable, so we allow it in numeric operations
@anonymous
@JS()
abstract class Numeric {
  external num valueOf();
}

/// A grouped array of nodes.
@anonymous
@JS()
abstract class Selection<Datum> {
  /// Retrieve a grouped selection.
  /* Index signature is not yet supported by JavaScript interop. */
  /// The number of groups in this selection.
  external num get length;
  external set length(num v);

  /// Retrieve the value of the given attribute for the first node in the selection.
  /*external String attr(String name);*/
  /// For all nodes, set the attribute to the specified constant value. Use null to remove.
  /*external Selection<Datum> attr(String name, num|String|bool value);*/
  /// Derive an attribute value for each node in the selection based on bound data.
  /*external Selection<Datum> attr(String name, num|String|bool value(Datum datum, num index, num outerIndex));*/
  /// Set multiple properties at once using an Object. D3 iterates over all enumerable properties and either sets or computes the attribute's value based on the corresponding entry in the Object.
  /*external Selection<Datum> attr(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj);*/
  external dynamic /*String|Selection<Datum>*/ attr(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value]);

  /// Returns true if the first node in this selection has the given class list. If multiple classes are specified (i.e., "foo bar"), then returns true only if all classes match.
  /*external bool classed(String name);*/
  /// Adds (or removes) the given class list.
  /*external Selection<Datum> classed(String name, bool value);*/
  /// Determine if the given class list should be toggled for each node in the selection.
  /*external Selection<Datum> classed(
    String name, bool value(Datum datum, num index, num outerIndex));*/
  /// Set or derive classes for multiple class lists at once.
  /*external Selection<Datum> classed(JSMap of <String,bool|Func3<Datum, num, num, bool>> obj);*/
  external dynamic /*bool|Selection<Datum>*/ classed(
      dynamic /*String|JSMap of <String,bool|Func3<Datum, num, num, bool>>*/ name_obj,
      [dynamic /*bool|Func3<Datum, num, num, bool>*/ value]);

  /// Retrieve the computed style value for the first node in the selection.
  /*external String style(String name);*/
  /// Set a style property for all nodes in the selection.
  /*external Selection<Datum> style(String name, num|String|bool value, [String priority]);*/
  /// Derive a property value for each node in the selection.
  /*external Selection<Datum> style(String name, num|String|bool value(Datum datum, num index, num outerIndex), [String priority]);*/
  /// Set a large number of CSS properties from an object.
  /*external Selection<Datum> style(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj, [String priority]);*/
  external dynamic /*String|Selection<Datum>*/ style(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value_priority,
      String priority]);

  /// Retrieve an arbitrary node property such as the 'checked' property of checkboxes, or the 'value' of text boxes.
  /*external dynamic property(String name);*/
  /// For each node, set the property value. Internally, this sets the node property directly (e.g., node[name] = value), so take care not to mutate special properties like __proto__.
  /*external Selection<Datum> property(String name, dynamic value);*/
  /// For each node, derive the property value. Internally, this sets the node property directly (e.g., node[name] = value), so take care not to mutate special properties like __proto__.
  /*external Selection<Datum> property(
    String name, dynamic value(Datum datum, num index, num outerIndex));*/
  /// Set multiple node properties. Caveats apply: take care not to mutate special properties like __proto__.
  /*external Selection<Datum> property(JSMap of <String,dynamic|Func3<Datum, num, num, dynamic>> obj);*/
  external dynamic /*dynamic|Selection<Datum>*/ property(
      dynamic /*String|JSMap of <String,dynamic|Func3<Datum, num, num, dynamic>>*/ name_obj,
      [dynamic /*dynamic|Func3<Datum, num, num, dynamic>*/ value]);

  /// Retrieve the textContent of the first node in the selection.
  /*external String text();*/
  /// Set the textContent of each node in the selection.
  /*external Selection<Datum> text(num|String|bool value);*/
  /// Compute the textContent of each node in the selection.
  /*external Selection<Datum> text(num|String|bool value(Datum datum, num index, num outerIndex));*/
  external dynamic /*String|Selection<Datum>*/ text(
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value]);

  /// Retrieve the HTML content of the first node in the selection. Uses 'innerHTML' internally and will not work with SVG or other elements without a polyfill.
  /*external String html();*/
  /// Set the HTML content of every node in the selection. Uses 'innerHTML' internally and thus will not work with SVG or other elements without a polyfill.
  /*external Selection<Datum> html(String value);*/
  /// Compute the HTML content for each node in the selection. Uses 'innerHTML' internally and thus will not work with SVG or other elements without a polyfill.
  /*external Selection<Datum> html(
    String value(Datum datum, num index, num outerIndex));*/
  external dynamic /*String|Selection<Datum>*/ html(
      [dynamic /*String|Func3<Datum, num, num, String>*/ value]);

  /// Appends a new child to each node in the selection. This child will inherit the parent's data (if available). Returns a fresh selection consisting of the newly-appended children.
  /*external Selection<Datum> append(String name);*/
  /// Appends a new child to each node in the selection by computing a new node. This child will inherit the parent's data (if available). Returns a fresh selection consisting of the newly-appended children.
  /*external Selection<Datum> append(
    EventTarget name(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> append(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name);

  /// Inserts a new child to each node in the selection. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Selection<Datum> insert(String name, String before);*/
  /// Inserts a new child to each node in the selection. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Selection<Datum> insert(
    String name, EventTarget before(Datum datum, num index, num outerIndex));*/
  /// Inserts a new child to the end of each node in the selection by computing a new node. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Selection<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex), String before);*/
  /// Inserts a new child to the end of each node in the selection by computing a new node. This child will inherit its parent's data (if available). Returns a fresh selection consisting of the newly-inserted children.
  /*external Selection<Datum> insert(
    EventTarget name(Datum datum, num index, num outerIndex),
    EventTarget before(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> insert(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ name,
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ before);

  /// Removes the elements from the DOM. They are in a detached state and may be re-added (though there is currently no dedicated API for doing so).
  external Selection<Datum> remove();

  /// Retrieves the data bound to the first group in this selection.
  /*external List<Datum> data();*/
  /// Binds data to this selection.
  /*external Update<NewDatum> data<NewDatum>(List<NewDatum> data, [String key(NewDatum datum, num index, num outerIndex)]);*/
  /// Derives data to bind to this selection.
  /*external Update<NewDatum> data<NewDatum>(List<NewDatum> data(Datum datum, num index, num outerIndex), [String key(NewDatum datum, num index, num outerIndex)]);*/
  external dynamic /*List<Datum>|Update<NewDatum>*/ data/*<NewDatum>*/(
      [dynamic /*List<NewDatum>|Func3<Datum, num, num, List<NewDatum>>*/ data,
      String key(dynamic/*=NewDatum*/ datum, num index, num outerIndex)]);

  /// Filters the selection, returning only those nodes that match the given CSS selector.
  /*external Selection<Datum> filter(String selector);*/
  /// Filters the selection, returning only those nodes for which the given function returned true.
  /*external Selection<Datum> filter(
    bool selector(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> filter(
      dynamic /*String|Func3<Datum, num, num, bool>*/ selector);

  /// Return the data item bound to the first element in the selection.
  /*external Datum datum();*/
  /// Derive the data item for each node in the selection. Useful for situations such as the HTML5 'dataset' attribute.
  /*external Selection<NewDatum> datum<NewDatum>(NewDatum value(Datum datum, num index, num outerIndex));*/
  /// Set the data item for each node in the selection.
  /*external Selection<NewDatum> datum<NewDatum>(NewDatum value);*/
  external dynamic /*Datum|Selection<NewDatum>*/ datum/*<NewDatum>*/(
      [dynamic /*Func3<Datum, num, num, NewDatum>|NewDatum*/ value]);

  /// Reorders nodes in the selection based on the given comparator. Nodes are re-inserted into the document once sorted.
  external Selection<Datum> sort([num comparator(Datum a, Datum b)]);

  /// Reorders nodes in the document to match the selection order. More efficient than calling sort() if the selection is already ordered.
  external Selection<Datum> order();

  /// Returns the listener (if any) for the given event.
  /*external Func3<Datum, num, num, dynamic> on(String type);*/
  /// Adds a listener for the specified event. If one was already registered, it is removed before the new listener is added. The return value of the listener function is ignored.
  /*external Selection<Datum> on(
    String type, dynamic listener(Datum datum, num index, num outerIndex),
    [bool capture]);*/
  external dynamic /*Func3<Datum, num, num, dynamic>|Selection<Datum>*/ on(
      String type,
      [dynamic listener(Datum datum, num index, num outerIndex),
      bool capture]);

  /// Begins a new transition. Interrupts any active transitions of the same name.
  external Transition<Datum> transition([String name]);

  /// Interrupts the active transition of the provided name. Does not cancel scheduled transitions.
  external Selection<Datum> interrupt([String name]);

  /// Creates a subselection by finding the first descendent matching the selector string. Bound data is inherited.
  /*external Selection<Datum> select(String selector);*/
  /// Creates a subselection by using a function to find descendent elements. Bound data is inherited.
  /*external Selection<Datum> select(
    EventTarget selector(Datum datum, num index, num outerIndex));*/
  external Selection<Datum> select(
      dynamic /*String|Func3<Datum, num, num, EventTarget>*/ selector);

  /// Creates a subselection by finding all descendents that match the given selector. Bound data is not inherited.
  /*external Selection<dynamic> selectAll(String selector);*/
  /// Creates a subselection by finding all descendants that match the given selector. Bound data is not inherited.
  /// Use this overload when data-binding a subselection (that is, sel.selectAll('.foo').data(d => ...)). The type will carry over.
  /*external Selection<T> selectAll<T>(String selector);*/
  /// Creates a subselection by using a function to find descendent elements. Bound data is not inherited.
  /*external Selection<dynamic> selectAll(List<EventTarget>|NodeList selector(Datum datum, num index, num outerIndex));*/
  /// Creates a subselection by using a function to find descendent elements. Bound data is not inherited.
  /// Use this overload when data-binding a subselection (that is, sel.selectAll('.foo').data(d => ...)). The type will carry over.
  /*external Selection<T> selectAll<T>(List<EventTarget>|NodeList selector(Datum datum, num index, num outerIndex));*/
  external Selection<dynamic> /*Selection<dynamic>|Selection<T>*/ selectAll/*<T>*/(
      dynamic /*String|Func3<Datum, num, num, List<EventTarget>|NodeList>*/ selector);

  /// Invoke the given function for each element in the selection. The return value of the function is ignored.
  external Selection<Datum> each(
      dynamic func(Datum datum, num index, num outerIndex));

  /// Call a function on the selection. sel.call(foo) is equivalent to foo(sel).
  external Selection<Datum> JS$call(
      Function /*(sel: Selection<Datum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Returns true if the current selection is empty.
  external bool empty();

  /// Returns the first non-null element in the selection, or null otherwise.
  external Node node();

  /// Returns the total number of elements in the selection.
  external num size();
}

@JS("d3.transition")
external Transition<dynamic> transition();
// Module transition
@JS("d3.transition.prototype")
external Transition<dynamic> get transition_prototype;
@JS("d3.transition.prototype")
external set transition_prototype(Transition<dynamic> v);

// End module transition
@anonymous
@JS()
abstract class Transition<Datum> {
  external Transition<Datum> transition();
  /*external num delay();*/
  /*external Transition<Datum> delay(num delay);*/
  /*external Transition<Datum> delay(
    num delay(Datum datum, num index, num outerIndex));*/
  external dynamic /*num|Transition<Datum>*/ delay(
      [dynamic /*num|Func3<Datum, num, num, num>*/ delay]);
  /*external num duration();*/
  /*external Transition<Datum> duration(num duration);*/
  /*external Transition<Datum> duration(
    num duration(Datum datum, num index, num outerIndex));*/
  external dynamic /*num|Transition<Datum>*/ duration(
      [dynamic /*num|Func3<Datum, num, num, num>*/ duration]);
  /*external Func1<num, num> ease();*/
  /*external Transition<Datum> ease(String value,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);*/
  /*external Transition<Datum> ease(num value(num t));*/
  external dynamic /*Func1<num, num>|Transition<Datum>*/ ease(
      [dynamic /*String|Func1<num, num>*/ value, List<dynamic> args]);
  /*external Transition<Datum> attr(String name, num|String|bool value);*/
  /*external Transition<Datum> attr(String name, num|String|bool value(Datum datum, num index, num outerIndex));*/
  /*external Transition<Datum> attr(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj);*/
  external Transition<Datum> attr(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value]);
  external Transition<Datum> attrTween(
      String name,
      Func1<num, dynamic /*num|String|bool*/ > tween(
          Datum datum, num index, String attr));
  /*external Transition<Datum> style(String name, num|String|bool value, [String priority]);*/
  /*external Transition<Datum> style(String name, num|String|bool value(Datum datum, num index, num outerIndex), [String priority]);*/
  /*external Transition<Datum> style(JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>> obj, [String priority]);*/
  external Transition<Datum> style(
      dynamic /*String|JSMap of <String,num|String|bool|Func3<Datum, num, num, num|String|bool>>*/ name_obj,
      [dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value_priority,
      String priority]);
  external Transition<Datum> styleTween(
      String name,
      Func1<num, dynamic /*num|String|bool*/ > tween(
          Datum datum, num index, String attr),
      [String priority]);
  /*external Transition<Datum> text(num|String|bool value);*/
  /*external Transition<Datum> text(num|String|bool value(Datum datum, num index, num outerIndex));*/
  external Transition<Datum> text(
      dynamic /*num|String|bool|Func3<Datum, num, num, num|String|bool>*/ value);
  external Transition<Datum> tween(
      String name, Func1<num, dynamic> JS$factory());
  external Transition<Datum> remove();
  /*external Transition<Datum> select(String selector);*/
  /*external Transition<Datum> select(EventTarget selector(Datum d, num i));*/
  external Transition<Datum> select(
      dynamic /*String|Func2<Datum, num, EventTarget>*/ selector);
  /*external Transition<dynamic> selectAll(String selector);*/
  /*external Transition<dynamic> selectAll(
    List<EventTarget> selector(Datum d, num i));*/
  external Transition<dynamic> selectAll(
      dynamic /*String|Func2<Datum, num, List<EventTarget>>*/ selector);
  /*external Transition<Datum> filter(String selector);*/
  /*external Transition<Datum> filter(bool selector(Datum d, num i));*/
  external Transition<Datum> filter(
      dynamic /*String|Func2<Datum, num, bool>*/ selector);
  /*external Transition<Datum> each(String type, dynamic listener(Datum d, num i));*/
  /*external Transition<Datum> each(dynamic listener(Datum d, num i));*/
  external Transition<Datum> each(
      dynamic /*String|Func2<Datum, num, dynamic>*/ type_listener,
      [dynamic listener(Datum d, num i)]);
  external Transition<Datum> JS$call(
      Function /*(transition: Transition<Datum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external bool empty();
  external Node node();
  external num size();
}

/*external Func1<num, num> ease('linear' type);*/
/*external Func1<num, num> ease('linear-in' type);*/
/*external Func1<num, num> ease('linear-out' type);*/
/*external Func1<num, num> ease('linear-in-out' type);*/
/*external Func1<num, num> ease('linear-out-in' type);*/
/*external Func1<num, num> ease('poly' type, num k);*/
/*external Func1<num, num> ease('poly-in' type, num k);*/
/*external Func1<num, num> ease('poly-out' type, num k);*/
/*external Func1<num, num> ease('poly-in-out' type, num k);*/
/*external Func1<num, num> ease('poly-out-in' type, num k);*/
/*external Func1<num, num> ease('quad' type);*/
/*external Func1<num, num> ease('quad-in' type);*/
/*external Func1<num, num> ease('quad-out' type);*/
/*external Func1<num, num> ease('quad-in-out' type);*/
/*external Func1<num, num> ease('quad-out-in' type);*/
/*external Func1<num, num> ease('cubic' type);*/
/*external Func1<num, num> ease('cubic-in' type);*/
/*external Func1<num, num> ease('cubic-out' type);*/
/*external Func1<num, num> ease('cubic-in-out' type);*/
/*external Func1<num, num> ease('cubic-out-in' type);*/
/*external Func1<num, num> ease('sin' type);*/
/*external Func1<num, num> ease('sin-in' type);*/
/*external Func1<num, num> ease('sin-out' type);*/
/*external Func1<num, num> ease('sin-in-out' type);*/
/*external Func1<num, num> ease('sin-out-in' type);*/
/*external Func1<num, num> ease('circle' type);*/
/*external Func1<num, num> ease('circle-in' type);*/
/*external Func1<num, num> ease('circle-out' type);*/
/*external Func1<num, num> ease('circle-in-out' type);*/
/*external Func1<num, num> ease('circle-out-in' type);*/
/*external Func1<num, num> ease('elastic' type, [num a, num b]);*/
/*external Func1<num, num> ease('elastic-in' type, [num a, num b]);*/
/*external Func1<num, num> ease('elastic-out' type, [num a, num b]);*/
/*external Func1<num, num> ease('elastic-in-out' type, [num a, num b]);*/
/*external Func1<num, num> ease('elastic-out-in' type, [num a, num b]);*/
/*external Func1<num, num> ease('back' type, num s);*/
/*external Func1<num, num> ease('back-in' type, num s);*/
/*external Func1<num, num> ease('back-out' type, num s);*/
/*external Func1<num, num> ease('back-in-out' type, num s);*/
/*external Func1<num, num> ease('back-out-in' type, num s);*/
/*external Func1<num, num> ease('bounce' type);*/
/*external Func1<num, num> ease('bounce-in' type);*/
/*external Func1<num, num> ease('bounce-out' type);*/
/*external Func1<num, num> ease('bounce-in-out' type);*/
/*external Func1<num, num> ease('bounce-out-in' type);*/
/*external Func1<num, num> ease(String type,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);*/
@JS("d3.ease")
external Func1<num, num> ease(
    String /*'linear'|'linear-in'|'linear-out'|'linear-in-out'|'linear-out-in'|'poly'|'poly-in'|'poly-out'|'poly-in-out'|'poly-out-in'|'quad'|'quad-in'|'quad-out'|'quad-in-out'|'quad-out-in'|'cubic'|'cubic-in'|'cubic-out'|'cubic-in-out'|'cubic-out-in'|'sin'|'sin-in'|'sin-out'|'sin-in-out'|'sin-out-in'|'circle'|'circle-in'|'circle-out'|'circle-in-out'|'circle-out-in'|'elastic'|'elastic-in'|'elastic-out'|'elastic-in-out'|'elastic-out-in'|'back'|'back-in'|'back-out'|'back-in-out'|'back-out-in'|'bounce'|'bounce-in'|'bounce-out'|'bounce-in-out'|'bounce-out-in'|String*/ type,
    [dynamic /*num|List<dynamic>*/ k_a_s_args,
    num b]);
@JS("d3.timer")
external void timer(dynamic func(), [num delay, num time]);
// Module timer
@JS("d3.timer.flush")
external void flush();

// End module timer
@anonymous
@JS()
abstract class BaseEvent {
  external String get type;
  external set type(String v);
  external Event get sourceEvent;
  external set sourceEvent(Event v);
  external factory BaseEvent({String type, Event sourceEvent});
}

/// Define a D3-specific ZoomEvent per https://github.com/mbostock/d3/wiki/Zoom-Behavior#event
@anonymous
@JS()
abstract class ZoomEvent implements BaseEvent {
  external num get scale;
  external set scale(num v);
  external List<num> /*Tuple of <num,num>*/ get translate;
  external set translate(List<num> /*Tuple of <num,num>*/ v);
  external factory ZoomEvent(
      {num scale,
      List<num> /*Tuple of <num,num>*/ translate,
      String type,
      Event sourceEvent});
}

/// Define a D3-specific DragEvent per https://github.com/mbostock/d3/wiki/Drag-Behavior#on
@anonymous
@JS()
abstract class DragEvent implements BaseEvent {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get dx;
  external set dx(num v);
  external num get dy;
  external set dy(num v);
  external factory DragEvent(
      {num x, num y, num dx, num dy, String type, Event sourceEvent});
}

/// The current event's value. Use this variable in a handler registered with `selection.on`.
@JS("d3.event")
external dynamic /*Event|BaseEvent*/ get event;
@JS("d3.event")
external set event(dynamic /*Event|BaseEvent*/ v);

/// Returns the x and y coordinates of the mouse relative to the provided container element, using d3.event for the mouse's position on the page.
@JS("d3.mouse")
external List<num> /*Tuple of <num,num>*/ mouse(EventTarget container);

/// Given a container element and a touch identifier, determine the x and y coordinates of the touch.
/*external Tuple of <num,num> touch(EventTarget container, num identifer);*/
/// Given a container element, a list of touches, and a touch identifier, determine the x and y coordinates of the touch.
/*external Tuple of <num,num> touch(EventTarget container, TouchList touches, num identifer);*/
@JS("d3.touch")
external List<num> /*Tuple of <num,num>*/ touch(
    EventTarget container, dynamic /*num|TouchList*/ identifer_touches,
    [num identifer]);

/// Given a container element and an optional list of touches, return the position of every touch relative to the container.
@JS("d3.touches")
external List<List<num> /*Tuple of <num,num>*/ > touches(EventTarget container,
    [TouchList touches]);

/// NB. this is limited to primitive values due to D3's use of the <, >, and >= operators. Results get weird for object instances.
/// Compares two primitive values for sorting (in ascending order).
@JS("d3.ascending")
external num ascending(
    dynamic /*num|String|bool*/ a, dynamic /*num|String|bool*/ b);

/// Compares two primitive values for sorting (in ascending order).
@JS("d3.descending")
external num descending(
    dynamic /*num|String|bool*/ a, dynamic /*num|String|bool*/ b);

/// Return the minimum value in the array using natural order.
/*external num min(List<num> array);*/
/// Return the minimum value in the array using natural order.
/*external String min(List<String> array);*/
/// Return the minimum value in the array using natural order.
/*external T min<T extends Numeric>(List<T> array);*/
/// Return the minimum value in the array using natural order.
/*external num min<T>(List<T> array, num accessor(T datum, num index));*/
/// Return the minimum value in the array using natural order.
/*external String min<T>(List<T> array, String accessor(T datum, num index));*/
/// Return the minimum value in the array using natural order.
/*external U min<T, U extends Numeric>(List<T> array, U accessor(T datum, num index));*/
@JS("d3.min")
external dynamic /*num|String|T|U*/ min/*<T extends Numeric, U extends Numeric>*/(
    List<dynamic> /*List<num>|List<String>|List<T>*/ array,
    [Function /*Func2<T, num, num>|Func2<T, num, String>|Func2<T, num, U>*/ accessor]);

/// Return the maximum value in the array of numbers using natural order.
/*external num max(List<num> array);*/
/// Return the maximum value in the array of strings using natural order.
/*external String max(List<String> array);*/
/// Return the maximum value in the array of numbers using natural order.
/*external T max<T extends Numeric>(List<T> array);*/
/// Return the maximum value in the array using natural order and a projection function to map values to numbers.
/*external num max<T>(List<T> array, num accessor(T datum, num index));*/
/// Return the maximum value in the array using natural order and a projection function to map values to strings.
/*external String max<T>(List<T> array, String accessor(T datum, num index));*/
/// Return the maximum value in the array using natural order and a projection function to map values to easily-sorted values.
/*external U max<T, U extends Numeric>(List<T> array, U accessor(T datum, num index));*/
@JS("d3.max")
external dynamic /*num|String|T|U*/ max/*<T extends Numeric, U extends Numeric>*/(
    List<dynamic> /*List<num>|List<String>|List<T>*/ array,
    [Function /*Func2<T, num, num>|Func2<T, num, String>|Func2<T, num, U>*/ accessor]);

/// Return the min and max simultaneously.
/*external Tuple of <num,num> extent(List<num> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <String,String> extent(List<String> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <T,T> extent<T extends Numeric>(List<T> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <T|num|String|bool,T|num|String|bool> extent<T extends Numeric>(List<T|num|String|bool> array);*/
/// Return the min and max simultaneously.
/*external Tuple of <num,num> extent<T>(List<T> array, num accessor(T datum, num index));*/
/// Return the min and max simultaneously.
/*external Tuple of <String,String> extent<T>(List<T> array, String accessor(T datum, num index));*/
/// Return the min and max simultaneously.
/*external Tuple of <DateTime,DateTime> extent<T>(List<T> array, DateTime accessor(T datum, num index));*/
/// Return the min and max simultaneously.
/*external Tuple of <U|num|String|bool,U|num|String|bool> extent<T, U extends Numeric>(List<T> array, U accessor(T datum, num index));*/
@JS("d3.extent")
external dynamic /*Tuple of <num,num>|Tuple of <String,String>|Tuple of <T,T>|Tuple of <T|num|String|bool,T|num|String|bool>|Tuple of <DateTime,DateTime>|Tuple of <U|num|String|bool,U|num|String|bool>*/ extent/*<T extends Numeric, U extends Numeric>*/(
    List<
        dynamic> /*List<num>|List<String>|List<T>|List<T|num|String|bool>*/ array,
    [Function /*Func2<T, num, num>|Func2<T, num, String>|Func2<T, num, DateTime>|Func2<T, num, U>*/ accessor]);

/// Compute the sum of an array of numbers.
/*external num sum(List<num> array);*/
/// Compute the sum of an array, using the given accessor to convert values to numbers.
/*external num sum<T>(List<T> array, num accessor(T datum, num index));*/
@JS("d3.sum")
external num sum/*<T>*/(List<dynamic> /*List<num>|List<T>*/ array,
    [num accessor(dynamic/*=T*/ datum, num index)]);
/*external num mean(List<num> array);*/
/*external num mean<T>(List<T> array, num accessor(T datum, num index));*/
@JS("d3.mean")
external num mean/*<T>*/(List<dynamic> /*List<num>|List<T>*/ array,
    [num accessor(dynamic/*=T*/ datum, num index)]);

/// Compute the median of an array of numbers (the 0.5-quantile).
/*external num median(List<num> array);*/
/*external num median<T>(List<T> datum, num accessor(T datum, num index));*/
@JS("d3.median")
external num median/*<T>*/(List<dynamic> /*List<num>|List<T>*/ array_datum,
    [num accessor(dynamic/*=T*/ datum, num index)]);
@JS("d3.quantile")
external num quantile(List<num> array, num p);
/*external num variance(List<num> array);*/
/*external num variance<T>(List<T> array, num accessor(T datum, num index));*/
@JS("d3.variance")
external num variance/*<T>*/(List<dynamic> /*List<num>|List<T>*/ array,
    [num accessor(dynamic/*=T*/ datum, num index)]);
/*external num deviation(List<num> array);*/
/*external num deviation<T>(List<T> array, num accessor(T datum, num index));*/
@JS("d3.deviation")
external num deviation/*<T>*/(List<dynamic> /*List<num>|List<T>*/ array,
    [num accessor(dynamic/*=T*/ datum, num index)]);
@JS("d3.bisectLeft")
external num bisectLeft/*<T>*/(List<dynamic/*=T*/ > array, dynamic/*=T*/ x,
    [num lo, num hi]);
@JS("d3.bisect")
external dynamic get bisect;
@JS("d3.bisect")
external set bisect(dynamic v);
@JS("d3.bisectRight")
external num bisectRight/*<T>*/(List<dynamic/*=T*/ > array, dynamic/*=T*/ x,
    [num lo, num hi]);
/*external {
        left: (array: T[], x: U, lo?: number, hi?: number) => number;
        right: (array: T[], x: U, lo?: number, hi?: number) => number;
    } bisector<T, U>(U accessor(T x));*/
/*external {
        left: (array: T[], x: U, lo?: number, hi?: number) => number;
        right: (array: T[], x: U, lo?: number, hi?: number) => number;
    } bisector<T, U>(num comparator(T a, U b));*/
@JS("d3.bisector")
external dynamic
    /*{
        left: (array: T[], x: U, lo?: number, hi?: number) => number;
        right: (array: T[], x: U, lo?: number, hi?: number) => number;
    }*/
    bisector/*<T, U>*/(Function /*Func1<T, U>|Func2<T, U, num>*/ accessor_comparator);
@JS("d3.shuffle")
external List<dynamic/*=T*/ > shuffle/*<T>*/(List<dynamic/*=T*/ > array,
    [num lo, num hi]);

/// Returns the enumerable property names of the specified object.
@JS("d3.keys")
external List<String> keys(Object object);

/// Returns an array containing the property values of the specified object.
/*external List<T> values<T>(JSMap of <String,T> object);*/
/// Returns an array containing the property values of the specified object.
/*external List<T> values<T>(JSMap of <num,T> object);*/
/// Returns an array containing the property values of the specified object.
/*external List<dynamic> values(Object object);*/
@JS("d3.values")
external List<dynamic> /*List<T>|List<dynamic>*/ values/*<T>*/(
    dynamic /*JSMap of <String,T>|JSMap of <num,T>|Object*/ object);

/// Returns an array of key-value pairs containing the property values of the specified object.
/*external List<{ key: string; value: T }> entries<T>(JSMap of <String,T> object);*/
/// Returns an array of key-value pairs containing the property values of the specified object.
/*external List<{ key: string; value: T }> entries<T>(JSMap of <num,T> object);*/
/// Returns an array of key-value pairs containing the property values of the specified object.
/*external List<{ key: string; value: any }> entries(Object object);*/
@JS("d3.entries")
external List<dynamic> /*List<{ key: string; value: T }>|List<{ key: string; value: any }>*/ entries/*<T>*/(
    dynamic /*JSMap of <String,T>|JSMap of <num,T>|Object*/ object);

/// A shim for ES6 maps. The implementation uses a JavaScript object internally, and thus keys are limited to strings.
@anonymous
@JS()
abstract class Map<T> {
  /// Does the map contain the given key?
  external bool has(String key);

  /// Retrieve the value for the given key. Returns undefined if there is no value stored.
  external T JS$get(String key);

  /// Set the value for the given key. Returns the new value.
  external T JS$set(String key, T value);

  /// Remove the value for the given key. Returns true if there was a value and false otherwise.
  external bool remove(String key);

  /// Returns an array of all keys in arbitrary order.
  external List<String> keys();

  /// Returns an array of all values in arbitrary order.
  external List<T> values();

  /// Returns an array of key-value objects in arbitrary order.
  external List<dynamic /*{ key: string; value: T }*/ > entries();

  /// Calls the function for each key and value pair in the map. The 'this' context is the map itself.
  external void forEach(dynamic func(String key, T value));

  /// Is this map empty?
  external bool empty();

  /// Returns the number of elements stored in the map.
  external num size();
}

/// Constructs an initially empty map.
/*external Map<T> map<T>();*/
/// Construct a new map by copying keys and values from the given one.
/*external Map<T> map<T>(Map<T> object);*/
/// Construct a new map by copying enumerable properties and values from the given object.
/*external Map<T> map<T>(JSMap of <String,T> object);*/
/// Construct a new map by copying enumerable properties and values from the given object.
/*external Map<T> map<T>(JSMap of <num,T> object);*/
/// Construct a new map by copying elements from the array. The key function is used to identify each object.
/*external Map<T> map<T>(List<T> array, String key(T datum, num index));*/
/// Construct a new map by copying enumerable properties and values from the given object.
/*external Map<dynamic> map(Object object);*/
@JS("d3.map")
external Map<dynamic> /*Map<T>|Map<dynamic>*/ map/*<T>*/(
    [dynamic /*Map<T>|JSMap of <String,T>|JSMap of <num,T>|List<T>|Object*/ object_array,
    String key(dynamic/*=T*/ datum, num index)]);

/// A shim for ES6 sets. Is only able to store strings.
@anonymous
@JS()
abstract class Set {
  /// Is the given string stored in this set?
  external bool has(String value);

  /// Add the string to this set. Returns the value.
  external String add(String value);

  /// Remove the given value from the set. Returns true if it was stored, and false otherwise.
  external bool remove(String value);

  /// Returns an array of the strings stored in this set.
  external List<String> values();

  /// Calls a given function for each value in the set. The return value of the function is ignored. The this context of the function is the set itself.
  external void forEach(dynamic func(String value));

  /// Is this set empty?
  external bool empty();

  /// Returns the number of values stored in this set.
  external num size();
}

/// Creates an initially-empty set.
/*external Set JS$set();*/
/// Initializes a set from the given array of strings.
/*external Set JS$set(List<String> array);*/
@JS("d3.set")
external Set JS$set([List<String> array]);

/// Merges the specified arrays into a single array.
@JS("d3.merge")
external List<dynamic/*=T*/ > merge/*<T>*/(List<List<dynamic/*=T*/ >> arrays);

/// Generates a 0-based numeric sequence. The output range does not include 'stop'.
/*external List<num> range(num stop);*/
/// Generates a numeric sequence starting from the given start and stop values. 'step' defaults to 1. The output range does not include 'stop'.
/*external List<num> range(num start, num stop, [num step]);*/
@JS("d3.range")
external List<num> range(num stop_start, [num stop, num step]);

/// Given the specified array, return an array corresponding to the list of indices in 'keys'.
/*external List<T> permute<T>(JSMap of <num,T> array, List<num> keys);*/
/// Given the specified object, return an array corresponding to the list of property names in 'keys'.
/*external List<T> permute<T>(JSMap of <String,T> object, List<String> keys);*/
@JS("d3.permute")
external List<dynamic/*=T*/ > permute/*<T>*/(
    dynamic /*JSMap of <num,T>|JSMap of <String,T>*/ array_object,
    List<dynamic> /*List<num>|List<String>*/ keys);

/// TODO construct n-tuples from n input arrays
@JS("d3.zip")
external List<List<dynamic/*=T*/ >> zip/*<T>*/(
    [List<dynamic/*=T*/ > arrays1,
    List<dynamic/*=T*/ > arrays2,
    List<dynamic/*=T*/ > arrays3,
    List<dynamic/*=T*/ > arrays4,
    List<dynamic/*=T*/ > arrays5]);
@JS("d3.transpose")
external List<List<dynamic/*=T*/ >> transpose/*<T>*/(
    List<List<dynamic/*=T*/ >> matrix);

/// For each adjacent pair of elements in the specified array, returns a new array of tuples of elements i and i - 1.
/// Returns the empty array if the input array has fewer than two elements.
@JS("d3.pairs")
external List<List<dynamic/*=T*/ > /*Tuple of <T,T>*/ > pairs/*<T>*/(
    List<dynamic/*=T*/ > array);

@anonymous
@JS()
abstract class Nest<T> {
  external Nest<T> key(String func(T datum));
  external Nest<T> sortKeys(num comparator(String a, String b));
  external Nest<T> sortValues(num comparator(T a, T b));
  external Nest<T> rollup/*<U>*/(dynamic/*=U*/ func(List<T> values));
  /*external JSMap of <String,dynamic> map(List<T> array);*/
  /*external Map<dynamic> map(List<T> array, dynamic mapType);*/
  external dynamic /*JSMap of <String,dynamic>|Map<dynamic>*/ map(List<T> array,
      [dynamic mapType]);
  external List<dynamic /*{ key: string; values: any }*/ > entries(
      List<T> array);
}

@JS("d3.nest")
external Nest<dynamic/*=T*/ > nest/*<T>*/();
// Module random
@JS("d3.random.normal")
external Func0<num> normal([num mean, num deviation]);
@JS("d3.random.logNormal")
external Func0<num> logNormal([num mean, num deviation]);
@JS("d3.random.bates")
external Func0<num> bates(num count);
@JS("d3.random.irwinHall")
external Func0<num> irwinHall(num count);

// End module random
@anonymous
@JS()
abstract class Transform {
  external num get rotate;
  external set rotate(num v);
  external List<num> /*Tuple of <num,num>*/ get translate;
  external set translate(List<num> /*Tuple of <num,num>*/ v);
  external num get skew;
  external set skew(num v);
  external List<num> /*Tuple of <num,num>*/ get scale;
  external set scale(List<num> /*Tuple of <num,num>*/ v);
  external String toString();
}

@JS("d3.transform")
external Transform transform(String transform);
@JS("d3.format")
external Func1<num, String> format(String specifier);

@anonymous
@JS()
abstract class FormatPrefix {
  external String get symbol;
  external set symbol(String v);
  external num scale(num n);
}

@JS("d3.formatPrefix")
external FormatPrefix formatPrefix(num value, [num precision]);
@JS("d3.round")
external num round(num x, [num n]);
@JS("d3.requote")
external String requote(String string);

@JS("d3.rgb")
class rgb {
  // @Ignore
  rgb.fakeConstructor$();
  /*external factory rgb(num r, num g, num b);*/
  /*external factory rgb(String color);*/
  external factory rgb(dynamic /*num|String*/ r_color, [num g, num b]);
  /*external Rgb call(num r, num g, num b);*/
  /*external Rgb call(String color);*/
  external Rgb call(dynamic /*num|String*/ r_color, [num g, num b]);
}

@anonymous
@JS()
abstract class Rgb implements Color {
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external Rgb brighter([num k]);
  external Rgb darker([num k]);
  external Hsl hsl();
  external String toString();
}

@JS("d3.hsl")
class hsl {
  // @Ignore
  hsl.fakeConstructor$();
  /*external factory hsl(num h, num s, num l);*/
  /*external factory hsl(String color);*/
  external factory hsl(dynamic /*num|String*/ h_color, [num s, num l]);
  /*external Hsl call(num h, num s, num l);*/
  /*external Hsl call(String color);*/
  external Hsl call(dynamic /*num|String*/ h_color, [num s, num l]);
}

@anonymous
@JS()
abstract class Hsl implements Color {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get l;
  external set l(num v);
  external Hsl brighter([num k]);
  external Hsl darker([num k]);
  external Rgb rgb();
  external String toString();
}

@JS("d3.hcl")
class hcl {
  // @Ignore
  hcl.fakeConstructor$();
  /*external factory hcl(num h, num c, num l);*/
  /*external factory hcl(String color);*/
  external factory hcl(dynamic /*num|String*/ h_color, [num c, num l]);
  /*external Hcl call(num h, num c, num l);*/
  /*external Hcl call(String color);*/
  external Hcl call(dynamic /*num|String*/ h_color, [num c, num l]);
}

@anonymous
@JS()
abstract class Hcl implements Color {
  external num get h;
  external set h(num v);
  external num get c;
  external set c(num v);
  external num get l;
  external set l(num v);
  external Hcl brighter([num k]);
  external Hcl darker([num k]);
}

@JS("d3.lab")
class lab {
  // @Ignore
  lab.fakeConstructor$();
  /*external factory lab(num l, num a, num b);*/
  /*external factory lab(String color);*/
  external factory lab(dynamic /*num|String*/ l_color, [num a, num b]);
  /*external Lab call(num l, num a, num b);*/
  /*external Lab call(String color);*/
  external Lab call(dynamic /*num|String*/ l_color, [num a, num b]);
}

@anonymous
@JS()
abstract class Lab implements Color {
  external num get l;
  external set l(num v);
  external num get a;
  external set a(num v);
  external num get b;
  external set b(num v);
  external Lab brighter([num k]);
  external Lab darker([num k]);
  external Rgb rgb();
  external String toString();
}

@JS("d3.color")
class color {
  // @Ignore
  color.fakeConstructor$();
  external Color call();
  external factory color();
}

@anonymous
@JS()
abstract class Color {
  external Rgb rgb();
}

// Module ns
@anonymous
@JS()
abstract class Qualified {
  external String get space;
  external set space(String v);
  external String get local;
  external set local(String v);
  external factory Qualified({String space, String local});
}

@JS("d3.ns.prefix")
external dynamic /*JSMap of <String,String>*/ get prefix;
@JS("d3.ns.prefix")
external set prefix(dynamic /*JSMap of <String,String>*/ v);
@JS("d3.ns.qualify")
external dynamic /*Qualified|String*/ qualify(String name);
// End module ns
/*external T functor<T extends Function>(T value);*/
/*external Func0<T> functor<T>(T value);*/
@JS("d3.functor")
external dynamic /*T|Func0<T>*/ functor/*<T extends Function>*/(
    dynamic/*=T*/ value);
@JS("d3.rebind")
external dynamic rebind(dynamic /*{}*/ target, dynamic /*{}*/ source,
    [String names1,
    String names2,
    String names3,
    String names4,
    String names5]);
@JS("d3.dispatch")
external Dispatch dispatch(
    [String names1,
    String names2,
    String names3,
    String names4,
    String names5]);

@anonymous
@JS()
abstract class Dispatch {
  /*external (...args: any[]) => void on(String type);*/
  /*external Dispatch on(String type, (...args: any[]) => any listener);*/
  external dynamic /*(...args: any[]) => void|Dispatch*/ on(String type,
      [Function /*(...args: any[]) => any*/ listener]); /* Index signature is not yet supported by JavaScript interop. */
}

// Module scale
@JS("d3.scale.identity")
external Identity identity();

@anonymous
@JS()
abstract class Identity {
  external num call(num n);
  external num invert(num n);
  /*external List<num> domain();*/
  /*external Identity domain(List<num> numbers);*/
  external dynamic /*List<num>|Identity*/ domain([List<num> numbers]);
  /*external List<num> range();*/
  /*external Identity range(List<num> numbers);*/
  external dynamic /*List<num>|Identity*/ range([List<num> numbers]);
  external List<num> ticks([num count]);
  external Func1<num, String> tickFormat([num count, String format]);
  external Identity copy();
}

/*external Linear<num, num> linear();*/
/*external Linear<Output,Output> linear<Output>();*/
/*external Linear<Range,Output> linear<Range, Output>();*/
@JS("d3.scale.linear")
external Linear /*Linear<num,num>|Linear<Output,Output>|Linear<Range,Output>*/ linear/*<Output, Range>*/();

@anonymous
@JS()
abstract class Linear<Range, Output> {
  external Output call(num x);
  external num invert(num y);
  /*external List<num> domain();*/
  /*external Linear<Range, Output> domain(List<num> numbers);*/
  external dynamic /*List<num>|Linear<Range,Output>*/ domain(
      [List<num> numbers]);
  /*external List<Range> range();*/
  /*external Linear<Range, Output> range(List<Range> values);*/
  external dynamic /*List<Range>|Linear<Range,Output>*/ range(
      [List<Range> values]);
  external Linear<num, num> rangeRound(List<num> values);
  /*external Func2<Range, Range, Func1<num, Output>> interpolate();*/
  /*external Linear<Range, Output> interpolate(
    Func1<num, Output> JS$factory(Range a, Range b));*/
  external Function /*Func2<Range, Range, Func1<num, Output>>|Linear<Range,Output>*/ interpolate(
      [Func1<num, Output> JS$factory(Range a, Range b)]);
  /*external bool clamp();*/
  /*external Linear<Range, Output> clamp(bool clamp);*/
  external dynamic /*bool|Linear<Range,Output>*/ clamp([bool clamp]);
  external Linear<Range, Output> nice([num count]);
  external List<num> ticks([num count]);
  external Func1<num, String> tickFormat([num count, String format]);
  external Linear<Range, Output> copy();
}

/*external Pow<num, num> sqrt();*/
/*external Pow<Output,Output> sqrt<Output>();*/
/*external Pow<Range,Output> sqrt<Range, Output>();*/
@JS("d3.scale.sqrt")
external Pow /*Pow<num,num>|Pow<Output,Output>|Pow<Range,Output>*/ sqrt/*<Output, Range>*/();
/*external Pow<num, num> pow();*/
/*external Pow<Output,Output> pow<Output>();*/
/*external Pow<Range,Output> pow<Range, Output>();*/
@JS("d3.scale.pow")
external Pow /*Pow<num,num>|Pow<Output,Output>|Pow<Range,Output>*/ pow/*<Output, Range>*/();

@anonymous
@JS()
abstract class Pow<Range, Output> {
  external Output call(num x);
  external num invert(num y);
  /*external List<num> domain();*/
  /*external Pow<Range, Output> domain(List<num> numbers);*/
  external dynamic /*List<num>|Pow<Range,Output>*/ domain([List<num> numbers]);
  /*external List<Range> range();*/
  /*external Pow<Range, Output> range(List<Range> values);*/
  external dynamic /*List<Range>|Pow<Range,Output>*/ range(
      [List<Range> values]);
  external Pow<num, num> rangeRound(List<num> values);
  /*external num exponent();*/
  /*external Pow<Range, Output> exponent(num k);*/
  external dynamic /*num|Pow<Range,Output>*/ exponent([num k]);
  /*external Func2<Range, Range, Func1<num, Output>> interpolate();*/
  /*external Pow<Range, Output> interpolate(
    Func1<num, Output> JS$factory(Range a, Range b));*/
  external Function /*Func2<Range, Range, Func1<num, Output>>|Pow<Range,Output>*/ interpolate(
      [Func1<num, Output> JS$factory(Range a, Range b)]);
  /*external bool clamp();*/
  /*external Pow<Range, Output> clamp(bool clamp);*/
  external dynamic /*bool|Pow<Range,Output>*/ clamp([bool clamp]);
  external Pow<Range, Output> nice([num m]);
  external List<num> ticks([num count]);
  external Func1<num, String> tickFormat([num count, String format]);
  external Pow<Range, Output> copy();
}

/*external Log<num, num> log();*/
/*external Log<Output,Output> log<Output>();*/
/*external Log<Range,Output> log<Range, Output>();*/
@JS("d3.scale.log")
external Log /*Log<num,num>|Log<Output,Output>|Log<Range,Output>*/ log/*<Output, Range>*/();

@anonymous
@JS()
abstract class Log<Range, Output> {
  external Output call(num x);
  external num invert(num y);
  /*external List<num> domain();*/
  /*external Log<Range, Output> domain(List<num> numbers);*/
  external dynamic /*List<num>|Log<Range,Output>*/ domain([List<num> numbers]);
  /*external List<Range> range();*/
  /*external Log<Range, Output> range(List<Range> values);*/
  external dynamic /*List<Range>|Log<Range,Output>*/ range(
      [List<Range> values]);
  external Log<num, num> rangeRound(List<num> values);
  /*external num base();*/
  /*external Log<Range, Output> base(num base);*/
  external dynamic /*num|Log<Range,Output>*/ base([num base]);
  /*external Func2<Range, Range, Func1<num, Output>> interpolate();*/
  /*external Log<Range, Output> interpolate(
    Func1<num, Output> JS$factory(Range a, Range b));*/
  external Function /*Func2<Range, Range, Func1<num, Output>>|Log<Range,Output>*/ interpolate(
      [Func1<num, Output> JS$factory(Range a, Range b)]);
  /*external bool clamp();*/
  /*external Log<Range, Output> clamp(bool clamp);*/
  external dynamic /*bool|Log<Range,Output>*/ clamp([bool clamp]);
  external Log<Range, Output> nice();
  external List<num> ticks();
  external Func1<num, String> tickFormat([num count, String format]);
  external Log<Range, Output> copy();
}

@JS("d3.scale.quantize")
external Quantize<dynamic/*=T*/ > quantize/*<T>*/();

@anonymous
@JS()
abstract class Quantize<T> {
  external T call(num x);
  external List<num> /*Tuple of <num,num>*/ invertExtent(T y);
  /*external List<num> domain();*/
  /*external Quantize<T> domain(List<num> numbers);*/
  external dynamic /*List<num>|Quantize<T>*/ domain([List<num> numbers]);
  /*external List<T> range();*/
  /*external Quantize<T> range(List<T> values);*/
  external dynamic /*List<T>|Quantize<T>*/ range([List<T> values]);
  external Quantize<T> copy();
}

@JS("d3.scale.quantile")
external Quantile<dynamic/*=T*/ > scale_quantile/*<T>*/();

@anonymous
@JS()
abstract class Quantile<T> {
  external T call(num x);
  external List<num> /*Tuple of <num,num>*/ invertExtent(T y);
  /*external List<num> domain();*/
  /*external Quantile<T> domain(List<num> numbers);*/
  external dynamic /*List<num>|Quantile<T>*/ domain([List<num> numbers]);
  /*external List<T> range();*/
  /*external Quantile<T> range(List<T> values);*/
  external dynamic /*List<T>|Quantile<T>*/ range([List<T> values]);
  external List<num> quantiles();
  external Quantile<T> copy();
}

/*external Threshold<num,Range> threshold<Range>();*/
/*external Threshold<Domain,Range> threshold<Domain, Range>();*/
@JS("d3.scale.threshold")
external Threshold /*Threshold<num,Range>|Threshold<Domain,Range>*/ threshold/*<Range, Domain>*/();

@anonymous
@JS()
abstract class Threshold<Domain, Range> {
  external Range call(num x);
  external List<Domain> /*Tuple of <Domain,Domain>*/ invertExtent(Range y);
  /*external List<Domain> domain();*/
  /*external Threshold<Domain, Range> domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|Threshold<Domain,Range>*/ domain(
      [List<Domain> domain]);
  /*external List<Range> range();*/
  /*external Threshold<Domain, Range> range(List<Range> values);*/
  external dynamic /*List<Range>|Threshold<Domain,Range>*/ range(
      [List<Range> values]);
  external Threshold<Domain, Range> copy();
}

/*external Ordinal<String,Range> ordinal<Range>();*/
/*external Ordinal<Domain,Range> ordinal<Domain extends { toString(): string }, Range>();*/
@JS("d3.scale.ordinal")
external Ordinal /*Ordinal<String,Range>|Ordinal<Domain,Range>*/ ordinal/*<Range, Domain extends { toString(): string }>*/();
/*external Ordinal<String, String> category10();*/
/*external Ordinal<Domain,String> category10<Domain extends { toString(): string }>();*/
@JS("d3.scale.category10")
external Ordinal /*Ordinal<String,String>|Ordinal<Domain,String>*/ category10/*<Domain extends { toString(): string }>*/();
/*external Ordinal<String, String> category20();*/
/*external Ordinal<Domain,String> category20<Domain extends { toString(): string }>();*/
@JS("d3.scale.category20")
external Ordinal /*Ordinal<String,String>|Ordinal<Domain,String>*/ category20/*<Domain extends { toString(): string }>*/();
/*external Ordinal<String, String> category20b();*/
/*external Ordinal<Domain,String> category20b<Domain extends { toString(): string }>();*/
@JS("d3.scale.category20b")
external Ordinal /*Ordinal<String,String>|Ordinal<Domain,String>*/ category20b/*<Domain extends { toString(): string }>*/();
/*external Ordinal<String, String> category20c();*/
/*external Ordinal<Domain,String> category20c<Domain extends { toString(): string }>();*/
@JS("d3.scale.category20c")
external Ordinal /*Ordinal<String,String>|Ordinal<Domain,String>*/ category20c/*<Domain extends { toString(): string }>*/();

@anonymous
@JS()
abstract class Ordinal<Domain extends dynamic /*{ toString(): string }*/,
    Range> {
  external Range call(Domain x);
  /*external List<Domain> domain();*/
  /*external Ordinal<Domain, Range> domain(List<Domain> values);*/
  external dynamic /*List<Domain>|Ordinal<Domain,Range>*/ domain(
      [List<Domain> values]);
  /*external List<Range> range();*/
  /*external Ordinal<Domain, Range> range(List<Range> values);*/
  external dynamic /*List<Range>|Ordinal<Domain,Range>*/ range(
      [List<Range> values]);
  external Ordinal<Domain, num> rangePoints(
      List<num> /*Tuple of <num,num>*/ interval,
      [num padding]);
  external Ordinal<Domain, num> rangeRoundPoints(
      List<num> /*Tuple of <num,num>*/ interval,
      [num padding]);
  external Ordinal<Domain, num> rangeBands(
      List<num> /*Tuple of <num,num>*/ interval,
      [num padding,
      num outerPadding]);
  external Ordinal<Domain, num> rangeRoundBands(
      List<num> /*Tuple of <num,num>*/ interval,
      [num padding,
      num outerPadding]);
  external num rangeBand();
  external List<num> /*Tuple of <num,num>*/ rangeExtent();
  external Ordinal<Domain, Range> copy();
}

// End module scale
/*external Func1<num, num> interpolate(num a, num b);*/
/*external Func1<num, String> interpolate(String a, String b);*/
/*external Func1<num, String> interpolate(String|Color a, Color b);*/
/*external Func1<num, String> interpolate(List<String|Color> a, List<Color> b);*/
/*external Func1<num, List<Output>> interpolate<Range, Output>(List<Range> a, List<Output> b);*/
/*external Func1<num, List<Output>> interpolate<Range, Output>(List<Range> a, List<Range> b);*/
/*external Func1<num, JSMap of <String,String>> interpolate(JSMap of <String,String|Color> a, JSMap of <String,Color> b);*/
/*external Func1<num, JSMap of <String,Output>> interpolate<Range, Output>(JSMap of <String,Range> a, JSMap of <String,Output> b);*/
/*external Func1<num, JSMap of <String,Output>> interpolate<Range, Output>(JSMap of <String,Range> a, JSMap of <String,Range> b);*/
@JS("d3.interpolate")
external Function /*Func1<num, num>|Func1<num, String>|Func1<num, List<Output>>|Func1<num, JSMap of <String,String>>|Func1<num, JSMap of <String,Output>>*/ interpolate/*<Range, Output>*/(
    dynamic /*num|String|Color|List<String|Color>|List<Range>|JSMap of <String,String|Color>|JSMap of <String,Range>*/ a,
    dynamic /*num|String|Color|List<Color>|List<Output>|List<Range>|JSMap of <String,Color>|JSMap of <String,Output>|JSMap of <String,Range>*/ b);
@JS("d3.interpolateNumber")
external Func1<num, num> interpolateNumber(num a, num b);
@JS("d3.interpolateRound")
external Func1<num, num> interpolateRound(num a, num b);
@JS("d3.interpolateString")
external Func1<num, String> interpolateString(String a, String b);
@JS("d3.interpolateRgb")
external Func1<num, String> interpolateRgb(
    dynamic /*String|Color*/ a, dynamic /*String|Color*/ b);
@JS("d3.interpolateHsl")
external Func1<num, String> interpolateHsl(
    dynamic /*String|Color*/ a, dynamic /*String|Color*/ b);
@JS("d3.interpolateLab")
external Func1<num, String> interpolateLab(
    dynamic /*String|Color*/ a, dynamic /*String|Color*/ b);
@JS("d3.interpolateHcl")
external Func1<num, String> interpolateHcl(
    dynamic /*String|Color*/ a, dynamic /*String|Color*/ b);
/*external Func1<num, List<String>> interpolateArray(List<String|Color> a, List<Color> b);*/
/*external Func1<num, List<Output>> interpolateArray<Range, Output>(List<Range> a, List<Range> b);*/
/*external Func1<num, List<Output>> interpolateArray<Range, Output>(List<Range> a, List<Output> b);*/
@JS("d3.interpolateArray")
external Function /*Func1<num, List<String>>|Func1<num, List<Output>>*/ interpolateArray/*<Range, Output>*/(
    List<dynamic> /*List<String|Color>|List<Range>*/ a,
    List<dynamic> /*List<Color>|List<Range>|List<Output>*/ b);
/*external Func1<num, JSMap of <String,String>> interpolateObject(JSMap of <String,String|Color> a, JSMap of <String,Color> b);*/
/*external Func1<num, JSMap of <String,Output>> interpolateObject<Range, Output>(JSMap of <String,Range> a, JSMap of <String,Output> b);*/
/*external Func1<num, JSMap of <String,Output>> interpolateObject<Range, Output>(JSMap of <String,Range> a, JSMap of <String,Range> b);*/
@JS("d3.interpolateObject")
external Func1<num, dynamic> /*Func1<num, JSMap of <String,String>>|Func1<num, JSMap of <String,Output>>*/ interpolateObject/*<Range, Output>*/(
    dynamic /*JSMap of <String,String|Color>|JSMap of <String,Range>*/ a,
    dynamic /*JSMap of <String,Color>|JSMap of <String,Output>|JSMap of <String,Range>*/ b);
@JS("d3.interpolateTransform")
external Func1<num, String> interpolateTransform(
    dynamic /*String|Transform*/ a, dynamic /*String|Transform*/ b);
@JS("d3.interpolateZoom")
external dynamic
    /*{
        (t: number): [number, number, number];
        duration: number;
    }*/
    interpolateZoom(List<num> /*Tuple of <num,num,num>*/ a, List<num> /*Tuple of <num,num,num>*/ b);
@JS("d3.interpolators")
external List<Func2<dynamic, dynamic, Func1<num, dynamic>>> get interpolators;
@JS("d3.interpolators")
external set interpolators(
    List<Func2<dynamic, dynamic, Func1<num, dynamic>>> v);
// Module time
@JS("d3.time.second")
external Interval get second;
@JS("d3.time.second")
external set second(Interval v);
@JS("d3.time.minute")
external Interval get minute;
@JS("d3.time.minute")
external set minute(Interval v);
@JS("d3.time.hour")
external Interval get hour;
@JS("d3.time.hour")
external set hour(Interval v);
@JS("d3.time.day")
external Interval get day;
@JS("d3.time.day")
external set day(Interval v);
@JS("d3.time.week")
external Interval get week;
@JS("d3.time.week")
external set week(Interval v);
@JS("d3.time.sunday")
external Interval get sunday;
@JS("d3.time.sunday")
external set sunday(Interval v);
@JS("d3.time.monday")
external Interval get monday;
@JS("d3.time.monday")
external set monday(Interval v);
@JS("d3.time.tuesday")
external Interval get tuesday;
@JS("d3.time.tuesday")
external set tuesday(Interval v);
@JS("d3.time.wednesday")
external Interval get wednesday;
@JS("d3.time.wednesday")
external set wednesday(Interval v);
@JS("d3.time.thursday")
external Interval get thursday;
@JS("d3.time.thursday")
external set thursday(Interval v);
@JS("d3.time.friday")
external Interval get friday;
@JS("d3.time.friday")
external set friday(Interval v);
@JS("d3.time.saturday")
external Interval get saturday;
@JS("d3.time.saturday")
external set saturday(Interval v);
@JS("d3.time.month")
external Interval get month;
@JS("d3.time.month")
external set month(Interval v);
@JS("d3.time.year")
external Interval get year;
@JS("d3.time.year")
external set year(Interval v);

@anonymous
@JS()
abstract class Interval {
  external DateTime call(DateTime d);
  external DateTime floor(DateTime d);
  external DateTime round(DateTime d);
  external DateTime ceil(DateTime d);
  external List<DateTime> range(DateTime start, DateTime stop, [num step]);
  external DateTime offset(DateTime date, num step);
  external dynamic
      /*{
                (d: Date): Date;

                floor(d: Date): Date;

                round(d: Date): Date;

                ceil(d: Date): Date;

                range(start: Date, stop: Date, step?: number): Date[];

                offset(date: Date, step: number): Date;
            }*/
      get utc;
  external set utc(
      dynamic /*{
                (d: Date): Date;

                floor(d: Date): Date;

                round(d: Date): Date;

                ceil(d: Date): Date;

                range(start: Date, stop: Date, step?: number): Date[];

                offset(date: Date, step: number): Date;
            }*/
      v);
}

@JS("d3.time.seconds")
external List<DateTime> seconds(DateTime start, DateTime stop, [num step]);
@JS("d3.time.minutes")
external List<DateTime> minutes(DateTime start, DateTime stop, [num step]);
@JS("d3.time.hours")
external List<DateTime> hours(DateTime start, DateTime stop, [num step]);
@JS("d3.time.days")
external List<DateTime> days(DateTime start, DateTime stop, [num step]);
@JS("d3.time.weeks")
external List<DateTime> weeks(DateTime start, DateTime stop, [num step]);
@JS("d3.time.sundays")
external List<DateTime> sundays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.mondays")
external List<DateTime> mondays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.tuesdays")
external List<DateTime> tuesdays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.wednesdays")
external List<DateTime> wednesdays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.thursdays")
external List<DateTime> thursdays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.fridays")
external List<DateTime> fridays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.saturdays")
external List<DateTime> saturdays(DateTime start, DateTime stop, [num step]);
@JS("d3.time.months")
external List<DateTime> months(DateTime start, DateTime stop, [num step]);
@JS("d3.time.years")
external List<DateTime> years(DateTime start, DateTime stop, [num step]);
@JS("d3.time.dayOfYear")
external num dayOfYear(DateTime d);
@JS("d3.time.weekOfYear")
external num weekOfYear(DateTime d);
@JS("d3.time.sundayOfYear")
external num sundayOfYear(DateTime d);
@JS("d3.time.mondayOfYear")
external num mondayOfYear(DateTime d);
@JS("d3.time.tuesdayOfYear")
external num tuesdayOfYear(DateTime d);
@JS("d3.time.wednesdayOfYear")
external num wednesdayOfYear(DateTime d);
@JS("d3.time.fridayOfYear")
external num fridayOfYear(DateTime d);
@JS("d3.time.saturdayOfYear")
external num saturdayOfYear(DateTime d);
@JS("d3.time.format")
external Format time_format(String specifier);
// Module format
@JS("d3.time.format.multi")
external Format multi(
    List<
        List<
            dynamic /*String|Func1<DateTime, bool|num>*/ > /*Tuple of <String,Func1<DateTime, bool|num>>*/ > formats);
@JS("d3.time.format.utc")
external Format utc(String specifier);
// Module utc
@JS("d3.time.format.utc.multi")
external Format utc_multi(
    List<
        List<
            dynamic /*String|Func1<DateTime, bool|num>*/ > /*Tuple of <String,Func1<DateTime, bool|num>>*/ > formats);
// End module utc
@JS("d3.time.format.iso")
external Format get iso;
@JS("d3.time.format.iso")
external set iso(Format v);

// End module format
@anonymous
@JS()
abstract class Format {
  external String call(DateTime d);
  external DateTime parse(String input);
}

/*external Scale<num, num> scale();*/
/*external Scale<Output,Output> scale<Output>();*/
/*external Scale<Range,Output> scale<Range, Output>();*/
@JS("d3.time.scale")
external Scale /*Scale<num,num>|Scale<Output,Output>|Scale<Range,Output>*/ scale/*<Output, Range>*/();
// Module scale
/*external Scale<num, num> scale_utc();*/
/*external Scale<Output,Output> scale_utc<Output>();*/
/*external Scale<Range,Output> scale_utc<Range, Output>();*/
@JS("d3.time.scale.utc")
external Scale /*Scale<num,num>|Scale<Output,Output>|Scale<Range,Output>*/ scale_utc/*<Output, Range>*/();

// End module scale
@anonymous
@JS()
abstract class Scale<Range, Output> {
  external Output call(DateTime x);
  external DateTime invert(num y);
  /*external List<DateTime> domain();*/
  /*external Scale<Range, Output> domain(List<num> dates);*/
  /*external Scale<Range, Output> domain(List<DateTime> dates);*/
  external dynamic /*List<DateTime>|Scale<Range,Output>*/ domain(
      [List<dynamic> /*List<num>|List<DateTime>*/ dates]);
  /*external Scale<Range, Output> nice();*/
  /*external Scale<Range, Output> nice(Interval interval, [num step]);*/
  external Scale<Range, Output> nice([Interval interval, num step]);
  /*external List<Range> range();*/
  /*external Scale<Range, Output> range(List<Range> values);*/
  external dynamic /*List<Range>|Scale<Range,Output>*/ range(
      [List<Range> values]);
  external Scale<num, num> rangeRound(List<num> values);
  /*external Func2<Range, Range, Func1<num, Output>> interpolate();*/
  /*external Scale<Range, Output> interpolate(
    Func1<num, Output> JS$factory(Range a, Range b));*/
  external Function /*Func2<Range, Range, Func1<num, Output>>|Scale<Range,Output>*/ interpolate(
      [Func1<num, Output> JS$factory(Range a, Range b)]);
  /*external bool clamp();*/
  /*external Scale<Range, Output> clamp(bool clamp);*/
  external dynamic /*bool|Scale<Range,Output>*/ clamp([bool clamp]);
  /*external List<DateTime> ticks();*/
  /*external List<DateTime> ticks(Interval interval, [num step]);*/
  /*external List<DateTime> ticks(num count);*/
  external List<DateTime> ticks(
      [dynamic /*Interval|num*/ interval_count, num step]);
  external Func1<DateTime, String> tickFormat(num count);
  external Scale<Range, Output> copy();
}

// End module time

// Module behavior
@JS("d3.behavior.drag")
external Drag<dynamic/*=Datum*/ > drag/*<Datum>*/();

@anonymous
@JS()
abstract class Drag<Datum> {
  external void call(Selection<Datum> selection);
  /*external Func2<Datum, num, dynamic> on(String type);*/
  /*external Drag<Datum> on(String type, dynamic listener(Datum d, num i));*/
  external Function /*Func2<Datum, num, dynamic>|Drag<Datum>*/ on(String type,
      [dynamic listener(Datum d, num i)]);
  /*external Func2<Datum, num, { x: number; y: number }> origin();*/
  /*external Drag<Datum> origin({ x: number; y: number } accessor(Datum d, num i));*/
  external Function /*Func2<Datum, num, { x: number; y: number }>|Drag<Datum>*/ origin(
      [dynamic /*{ x: number; y: number }*/ accessor(Datum d, num i)]);
}

@JS("d3.behavior.zoom")
external Zoom<dynamic/*=Datum*/ > zoom/*<Datum>*/();

// Module zoom
@anonymous
@JS()
abstract class zoom_Scale {
  /*external List<num> domain();*/
  /*external zoom_Scale domain(List<num> values);*/
  external dynamic /*List<num>|zoom_Scale*/ domain([List<num> values]);
  external num invert(num y);
  /*external zoom_Scale range(List<num> values);*/
  /*external List<num> range();*/
  external dynamic /*zoom_Scale|List<num>*/ range([List<num> values]);
}

// End module zoom
@anonymous
@JS()
abstract class Zoom<Datum> {
  external void call(Selection<Datum> selection);
  /*external Tuple of <num,num> translate();*/
  /*external Zoom<Datum> translate(Tuple of <num,num> translate);*/
  external dynamic /*Tuple of <num,num>|Zoom<Datum>*/ translate(
      [List<num> /*Tuple of <num,num>*/ translate]);
  /*external num scale();*/
  /*external Zoom<Datum> scale(num scale);*/
  external dynamic /*num|Zoom<Datum>*/ scale([num scale]);
  /*external Tuple of <num,num> scaleExtent();*/
  /*external Zoom<Datum> scaleExtent(Tuple of <num,num> extent);*/
  external dynamic /*Tuple of <num,num>|Zoom<Datum>*/ scaleExtent(
      [List<num> /*Tuple of <num,num>*/ extent]);
  /*external Tuple of <num,num> center();*/
  /*external Zoom<Datum> center(Tuple of <num,num> center);*/
  external dynamic /*Tuple of <num,num>|Zoom<Datum>*/ center(
      [List<num> /*Tuple of <num,num>*/ center]);
  /*external Tuple of <num,num> size();*/
  /*external Zoom<Datum> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Zoom<Datum>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external zoom_Scale x();*/
  /*external Zoom<Datum> x(zoom_Scale x);*/
  external dynamic /*zoom_Scale|Zoom<Datum>*/ x([zoom_Scale x]);
  /*external zoom_Scale y();*/
  /*external Zoom<Datum> y(zoom_Scale y);*/
  external dynamic /*zoom_Scale|Zoom<Datum>*/ y([zoom_Scale y]);
  /*external Func2<Datum, num, dynamic> on(String type);*/
  /*external Zoom<Datum> on(String type, dynamic listener(Datum d, num i));*/
  external Function /*Func2<Datum, num, dynamic>|Zoom<Datum>*/ on(String type,
      [dynamic listener(Datum d, num i)]);
  /*external void event(Selection<Datum> selection);*/
  /*external void event(Transition<Datum> transition);*/
  external void event(
      dynamic /*Selection<Datum>|Transition<Datum>*/ selection_transition);
}

// End module behavior

// Module geo
@JS("d3.geo.path")
external Path path();

@anonymous
@JS()
abstract class Path {
  external String call(dynamic feature, [num index]);
  external num area(dynamic feature);
  external List<num> /*Tuple of <num,num>*/ centroid(dynamic feature);
  external List<
      List<
          num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ bounds(
      dynamic feature);
  /*external geo_Transform|Func1<Tuple of <num,num>, Tuple of <num,num>> projection();*/
  /*external Path projection(geo_Transform stream);*/
  /*external Path projection(Tuple of <num,num> projection(Tuple of <num,num> coordinates));*/
  external dynamic /*geo_Transform|Func1<Tuple of <num,num>, Tuple of <num,num>>|Path*/ projection(
      [dynamic /*geo_Transform|Func1<Tuple of <num,num>, Tuple of <num,num>>*/ stream_projection]);
  /*external num|Func2<dynamic, num, num> pointRadius();*/
  /*external Path pointRadius(num radius);*/
  /*external Path pointRadius(num radius(dynamic datum, num index));*/
  external dynamic /*num|Func2<dynamic, num, num>|Path*/ pointRadius(
      [dynamic /*num|Func2<dynamic, num, num>*/ radius]);
  /*external CanvasRenderingContext2D context();*/
  /*external Path context(CanvasRenderingContext2D context);*/
  external dynamic /*CanvasRenderingContext2D|Path*/ context(
      [CanvasRenderingContext2D context]);
}

@JS("d3.geo.graticule")
external Graticule graticule();

@anonymous
@JS()
abstract class Graticule {
  external dynamic call();
  external List<dynamic> lines();
  external dynamic outline();
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external Graticule extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Graticule*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> majorExtent();*/
  /*external Graticule majorExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Graticule*/ majorExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> minorExtent();*/
  /*external Graticule minorExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Graticule*/ minorExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <num,num> step();*/
  /*external Graticule step(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|Graticule*/ step(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external Tuple of <num,num> majorStep();*/
  /*external Graticule majorStep(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|Graticule*/ majorStep(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external Tuple of <num,num> minorStep();*/
  /*external Graticule minorStep(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|Graticule*/ minorStep(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external num precision();*/
  /*external Graticule precision(num precision);*/
  external dynamic /*num|Graticule*/ precision([num precision]);
}

@JS("d3.geo.circle")
external Circle circle();

@anonymous
@JS()
abstract class Circle {
  external dynamic call(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external Tuple of <num,num>|(...args: any[]) => [number, number] origin();*/
  /*external Circle origin(Tuple of <num,num> origin);*/
  /*external Circle origin((...args: any[]) => [number, number] origin);*/
  external dynamic /*Tuple of <num,num>|(...args: any[]) => [number, number]|Circle*/ origin(
      [dynamic /*Tuple of <num,num>|(...args: any[]) => [number, number]*/ origin]);
  /*external num angle();*/
  /*external Circle angle(num angle);*/
  external dynamic /*num|Circle*/ angle([num angle]);
  /*external num precision();*/
  /*external Circle precision(num precision);*/
  external dynamic /*num|Circle*/ precision([num precision]);
}

@JS("d3.geo.area")
external num area(dynamic feature);
@JS("d3.geo.centroid")
external List<num> /*Tuple of <num,num>*/ centroid(dynamic feature);
@JS("d3.geo.bounds")
external List<
    List<
        num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ bounds(
    dynamic feature);
@JS("d3.geo.distance")
external num distance(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);
@JS("d3.geo.length")
external num length(dynamic feature);
@JS("d3.geo.interpolate")
external Func1<num, List<num> /*Tuple of <num,num>*/ > geo_interpolate(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);
@JS("d3.geo.rotation")
external Rotation rotation(
    List<num> /*Tuple of <num,num>|Tuple of <num,num,num>*/ rotate);

@anonymous
@JS()
abstract class Rotation {
  external List<num> /*Tuple of <num,num>*/ call(
      List<num> /*Tuple of <num,num>*/ location);
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ location);
}

@JS("d3.geo.stream")
external void stream(dynamic object, Listener listener);

@anonymous
@JS()
abstract class Listener {
  external void point(num x, num y, num z);
  external void lineStart();
  external void lineEnd();
  external void polygonStart();
  external void polygonEnd();
  external void sphere();
}

@JS("d3.geo.transform")
external geo_Transform geo_transform(TransformMethods methods);

@anonymous
@JS()
abstract class TransformMethods {
  external void point(num x, num y, num z);
  external void lineStart();
  external void lineEnd();
  external void polygonStart();
  external void polygonEnd();
  external void sphere();
}

@anonymous
@JS()
abstract class geo_Transform {
  external Listener stream(Listener stream);
}

@JS("d3.geo.clipExtent")
external ClipExtent clipExtent();

@anonymous
@JS()
abstract class ClipExtent implements geo_Transform {
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external ClipExtent extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|ClipExtent*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
}

/*external InvertibleProjection projection(RawInvertibleProjection raw);*/
/*external Projection projection(RawProjection raw);*/
@JS("d3.geo.projection")
external Function /*InvertibleProjection|Projection*/ projection(
    Function /*RawInvertibleProjection|RawProjection*/ raw);
/*external (...args: any[]) => InvertibleProjection projectionMutator((...args: any[]) => RawInvertibleProjection JS$factory);*/
/*external (...args: any[]) => Projection projectionMutator((...args: any[]) => RawProjection JS$factory);*/
@JS("d3.geo.projectionMutator")
external Function /*(...args: any[]) => InvertibleProjection|(...args: any[]) => Projection*/ projectionMutator(
    Function /*(...args: any[]) => RawInvertibleProjection|(...args: any[]) => RawProjection*/ JS$factory);
@JS("d3.geo.albers")
external ConicProjection albers();
@JS("d3.geo.albersUsa")
external ConicProjection albersUsa();
@JS("d3.geo.azimuthalEqualArea")
external InvertibleProjection azimuthalEqualArea();
// Module azimuthalEqualArea
@JS("d3.geo.azimuthalEqualArea.raw")
external List<num> /*Tuple of <num,num>*/ raw(num lambda, num phi);
// Module raw
@JS("d3.geo.azimuthalEqualArea.raw.invert")
external List<num> /*Tuple of <num,num>*/ invert(num x, num y);
// End module raw

// End module azimuthalEqualArea
@JS("d3.geo.azimuthalEquidistant")
external InvertibleProjection azimuthalEquidistant();
// Module azimuthalEquidistant
@JS("d3.geo.azimuthalEquidistant.raw")
external List<num> /*Tuple of <num,num>*/ azimuthalEquidistant_raw(
    num lambda, num phi);
// Module raw
@JS("d3.geo.azimuthalEquidistant.raw.invert")
external List<num> /*Tuple of <num,num>*/ raw_invert(num x, num y);
// End module raw

// End module azimuthalEquidistant
@JS("d3.geo.conicConformal")
external ConicProjection conicConformal();
// Module conicConformal
@JS("d3.geo.conicConformal.raw")
external RawInvertibleProjection conicConformal_raw(num phi0, num phi1);
// End module conicConformal
@JS("d3.geo.conicEqualArea")
external ConicProjection conicEqualArea();
// Module conicEqualArea
@JS("d3.geo.conicEqualArea.raw")
external RawInvertibleProjection conicEqualArea_raw(num phi0, num phi1);
// End module conicEqualArea
@JS("d3.geo.conicEquidistant")
external ConicProjection conicEquidistant();
// Module conicEquidistant
@JS("d3.geo.conicEquidistant.raw")
external RawInvertibleProjection conicEquidistant_raw(num phi0, num phi1);
// End module conicEquidistant
@JS("d3.geo.equirectangular")
external InvertibleProjection equirectangular();
// Module equirectangular
@JS("d3.geo.equirectangular.raw")
external List<num> /*Tuple of <num,num>*/ equirectangular_raw(
    num lambda, num phi);
// Module raw
@JS("d3.geo.equirectangular.raw.invert")
external List<num> /*Tuple of <num,num>*/ equirectangular_raw_invert(
    num x, num y);
// End module raw

// End module equirectangular
@JS("d3.geo.gnomonic")
external InvertibleProjection gnomonic();
// Module gnomonic
@JS("d3.geo.gnomonic.raw")
external List<num> /*Tuple of <num,num>*/ gnomonic_raw(num lambda, num phi);
// Module raw
@JS("d3.geo.gnomonic.raw.invert")
external List<num> /*Tuple of <num,num>*/ gnomonic_raw_invert(num x, num y);
// End module raw

// End module gnomonic
@JS("d3.geo.mercator")
external InvertibleProjection mercator();
// Module mercator
@JS("d3.geo.mercator.raw")
external List<num> /*Tuple of <num,num>*/ mercator_raw(num lambda, num phi);
// Module raw
@JS("d3.geo.mercator.raw.invert")
external List<num> /*Tuple of <num,num>*/ mercator_raw_invert(num x, num y);
// End module raw

// End module mercator
@JS("d3.geo.orthographic")
external InvertibleProjection orthographic();
// Module orthographic
@JS("d3.geo.orthographic.raw")
external List<num> /*Tuple of <num,num>*/ orthographic_raw(num lambda, num phi);
// Module raw
@JS("d3.geo.orthographic.raw.invert")
external List<num> /*Tuple of <num,num>*/ orthographic_raw_invert(num x, num y);
// End module raw

// End module orthographic
@JS("d3.geo.stereographic")
external InvertibleProjection stereographic();
// Module stereographic
@JS("d3.geo.stereographic.raw")
external List<num> /*Tuple of <num,num>*/ stereographic_raw(
    num lambda, num phi);
// Module raw
@JS("d3.geo.stereographic.raw.invert")
external List<num> /*Tuple of <num,num>*/ stereographic_raw_invert(
    num x, num y);
// End module raw

// End module stereographic
@JS("d3.geo.transverseMercator")
external InvertibleProjection transverseMercator();
// Module transverseMercator
@JS("d3.geo.transverseMercator.raw")
external List<num> /*Tuple of <num,num>*/ transverseMercator_raw(
    num lambda, num phi);
// Module raw
@JS("d3.geo.transverseMercator.raw.invert")
external List<num> /*Tuple of <num,num>*/ transverseMercator_raw_invert(
    num x, num y);
// End module raw

// End module transverseMercator
@anonymous
@JS()
abstract class Projection {
  external List<num> /*Tuple of <num,num>*/ call(
      List<num> /*Tuple of <num,num>*/ location);
  /*external Tuple of <num,num,num> rotate();*/
  /*external Projection rotate(Tuple of <num,num,num> rotation);*/
  external dynamic /*Tuple of <num,num,num>|Projection*/ rotate(
      [List<num> /*Tuple of <num,num,num>*/ rotation]);
  /*external Tuple of <num,num> center();*/
  /*external Projection center(Tuple of <num,num> location);*/
  external dynamic /*Tuple of <num,num>|Projection*/ center(
      [List<num> /*Tuple of <num,num>*/ location]);
  /*external Tuple of <num,num> translate();*/
  /*external Projection translate(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|Projection*/ translate(
      [List<num> /*Tuple of <num,num>*/ point]);
  /*external num scale();*/
  /*external Projection scale(num scale);*/
  external dynamic /*num|Projection*/ scale([num scale]);
  /*external num clipAngle();*/
  /*external Projection clipAngle(num angle);*/
  external dynamic /*num|Projection*/ clipAngle([num angle]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> clipExtent();*/
  /*external Projection clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Projection*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external num precision();*/
  /*external Projection precision(num precision);*/
  external dynamic /*num|Projection*/ precision([num precision]);
  external Listener stream(Listener listener);
}

@anonymous
@JS()
abstract class InvertibleProjection implements Projection {
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ point);
}

@anonymous
@JS()
abstract class ConicProjection implements InvertibleProjection {
  /*external Tuple of <num,num> parallels();*/
  /*external ConicProjection parallels(Tuple of <num,num> parallels);*/
  external dynamic /*Tuple of <num,num>|ConicProjection*/ parallels(
      [List<num> /*Tuple of <num,num>*/ parallels]);
  /*external Tuple of <num,num,num> rotate();*/
  /*external ConicProjection rotate(Tuple of <num,num,num> rotation);*/
  external dynamic /*Tuple of <num,num,num>|ConicProjection*/ rotate(
      [List<num> /*Tuple of <num,num,num>*/ rotation]);
  /*external Tuple of <num,num> center();*/
  /*external ConicProjection center(Tuple of <num,num> location);*/
  external dynamic /*Tuple of <num,num>|ConicProjection*/ center(
      [List<num> /*Tuple of <num,num>*/ location]);
  /*external Tuple of <num,num> translate();*/
  /*external ConicProjection translate(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|ConicProjection*/ translate(
      [List<num> /*Tuple of <num,num>*/ point]);
  /*external num scale();*/
  /*external ConicProjection scale(num scale);*/
  external dynamic /*num|ConicProjection*/ scale([num scale]);
  /*external num clipAngle();*/
  /*external ConicProjection clipAngle(num angle);*/
  external dynamic /*num|ConicProjection*/ clipAngle([num angle]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> clipExtent();*/
  /*external ConicProjection clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|ConicProjection*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external num precision();*/
  /*external ConicProjection precision(num precision);*/
  external dynamic /*num|ConicProjection*/ precision([num precision]);
}

typedef List<num> /*Tuple of <num,num>*/ RawProjection(num lambda, num phi);

@anonymous
@JS()
abstract class RawInvertibleProjection implements Function/*=RawProjection*/ {
  external List<num> /*Tuple of <num,num>*/ invert(num x, num y);
}

// End module geo

// Module svg
/*external Line<Tuple of <num,num>> line();*/
/*external Line<T> line<T>();*/
@JS("d3.svg.line")
external Line /*Line<Tuple of <num,num>>|Line<T>*/ line/*<T>*/();

@anonymous
@JS()
abstract class Line<T> {
  external String call(List<T> data);
  /*external num|Func2<T, num, num> x();*/
  /*external Line<T> x(num x);*/
  /*external Line<T> x(num x(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Line<T>*/ x(
      [dynamic /*num|Func2<T, num, num>*/ x]);
  /*external num|Func2<T, num, num> y();*/
  /*external Line<T> y(num x);*/
  /*external Line<T> y(num y(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Line<T>*/ y(
      [dynamic /*num|Func2<T, num, num>*/ x_y]);
  /*external String|Func1<List<Tuple of <num,num>>, String> interpolate();*/
  /*external Line<T> interpolate('linear' interpolate);*/
  /*external Line<T> interpolate('linear-closed' interpolate);*/
  /*external Line<T> interpolate('step' interpolate);*/
  /*external Line<T> interpolate('step-before' interpolate);*/
  /*external Line<T> interpolate('step-after' interpolate);*/
  /*external Line<T> interpolate('basis' interpolate);*/
  /*external Line<T> interpolate('basis-open' interpolate);*/
  /*external Line<T> interpolate('basis-closed' interpolate);*/
  /*external Line<T> interpolate('bundle' interpolate);*/
  /*external Line<T> interpolate('cardinal' interpolate);*/
  /*external Line<T> interpolate('cardinal-open' interpolate);*/
  /*external Line<T> interpolate('cardinal-closed' interpolate);*/
  /*external Line<T> interpolate('monotone' interpolate);*/
  /*external Line<T> interpolate(String|Func1<List<Tuple of <num,num>>, String> interpolate);*/
  external dynamic /*String|Func1<List<Tuple of <num,num>>, String>|Line<T>*/ interpolate(
      [dynamic /*'linear'|'linear-closed'|'step'|'step-before'|'step-after'|'basis'|'basis-open'|'basis-closed'|'bundle'|'cardinal'|'cardinal-open'|'cardinal-closed'|'monotone'|String|Func1<List<Tuple of <num,num>>, String>*/ interpolate]);
  /*external num tension();*/
  /*external Line<T> tension(num tension);*/
  external dynamic /*num|Line<T>*/ tension([num tension]);
  /*external Func2<T, num, bool> defined();*/
  /*external Line<T> defined(bool defined(T d, num i));*/
  external Function /*Func2<T, num, bool>|Line<T>*/ defined(
      [bool defined(T d, num i)]);
}

// Module line
/*external Radial<Tuple of <num,num>> radial();*/
/*external Radial<T> radial<T>();*/
@JS("d3.svg.line.radial")
external Radial /*Radial<Tuple of <num,num>>|Radial<T>*/ radial/*<T>*/();

@anonymous
@JS()
abstract class Radial<T> {
  external String call(List<T> data);
  /*external num|Func2<T, num, num> radius();*/
  /*external Radial<T> radius(num radius);*/
  /*external Radial<T> radius(num radius(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Radial<T>*/ radius(
      [dynamic /*num|Func2<T, num, num>*/ radius]);
  /*external num|Func2<T, num, num> angle();*/
  /*external Radial<T> angle(num angle);*/
  /*external Radial<T> angle(num angle(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Radial<T>*/ angle(
      [dynamic /*num|Func2<T, num, num>*/ angle]);
  /*external String|Func1<List<Tuple of <num,num>>, String> interpolate();*/
  /*external Radial<T> interpolate('linear' interpolate);*/
  /*external Radial<T> interpolate('linear-closed' interpolate);*/
  /*external Radial<T> interpolate('step' interpolate);*/
  /*external Radial<T> interpolate('step-before' interpolate);*/
  /*external Radial<T> interpolate('step-after' interpolate);*/
  /*external Radial<T> interpolate('basis' interpolate);*/
  /*external Radial<T> interpolate('basis-open' interpolate);*/
  /*external Radial<T> interpolate('basis-closed' interpolate);*/
  /*external Radial<T> interpolate('bundle' interpolate);*/
  /*external Radial<T> interpolate('cardinal' interpolate);*/
  /*external Radial<T> interpolate('cardinal-open' interpolate);*/
  /*external Radial<T> interpolate('cardinal-closed' interpolate);*/
  /*external Radial<T> interpolate('monotone' interpolate);*/
  /*external Radial<T> interpolate(String|Func1<List<Tuple of <num,num>>, String> interpolate);*/
  external dynamic /*String|Func1<List<Tuple of <num,num>>, String>|Radial<T>*/ interpolate(
      [dynamic /*'linear'|'linear-closed'|'step'|'step-before'|'step-after'|'basis'|'basis-open'|'basis-closed'|'bundle'|'cardinal'|'cardinal-open'|'cardinal-closed'|'monotone'|String|Func1<List<Tuple of <num,num>>, String>*/ interpolate]);
  /*external num tension();*/
  /*external Radial<T> tension(num tension);*/
  external dynamic /*num|Radial<T>*/ tension([num tension]);
  /*external Func2<T, num, bool> defined();*/
  /*external Radial<T> defined(bool defined(T d, num i));*/
  external Function /*Func2<T, num, bool>|Radial<T>*/ defined(
      [bool defined(T d, num i)]);
}

// End module line
/*external Area<Tuple of <num,num>> svg_area();*/
/*external Area<T> svg_area<T>();*/
@JS("d3.svg.area")
external Area /*Area<Tuple of <num,num>>|Area<T>*/ svg_area/*<T>*/();

@anonymous
@JS()
abstract class Area<T> {
  external String call(List<T> data);
  /*external num|Func2<T, num, num> x();*/
  /*external Area<T> x(num x);*/
  /*external Area<T> x(num x(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ x(
      [dynamic /*num|Func2<T, num, num>*/ x]);
  /*external num|Func2<T, num, num> x0();*/
  /*external Area<T> x0(num x0);*/
  /*external Area<T> x0(num x0(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ x0(
      [dynamic /*num|Func2<T, num, num>*/ x0]);
  /*external num|Func2<T, num, num> x1();*/
  /*external Area<T> x1(num x1);*/
  /*external Area<T> x1(num x1(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ x1(
      [dynamic /*num|Func2<T, num, num>*/ x1]);
  /*external num|Func2<T, num, num> y();*/
  /*external Area<T> y(num y);*/
  /*external Area<T> y(num y(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ y(
      [dynamic /*num|Func2<T, num, num>*/ y]);
  /*external num|Func2<T, num, num> y0();*/
  /*external Area<T> y0(num y0);*/
  /*external Area<T> y0(num y0(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ y0(
      [dynamic /*num|Func2<T, num, num>*/ y0]);
  /*external num|Func2<T, num, num> y1();*/
  /*external Area<T> y1(num y1);*/
  /*external Area<T> y1(num y1(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|Area<T>*/ y1(
      [dynamic /*num|Func2<T, num, num>*/ y1]);
  /*external String|Func1<List<Tuple of <num,num>>, String> interpolate();*/
  /*external Area<T> interpolate('linear' interpolate);*/
  /*external Area<T> interpolate('step' interpolate);*/
  /*external Area<T> interpolate('step-before' interpolate);*/
  /*external Area<T> interpolate('step-after' interpolate);*/
  /*external Area<T> interpolate('basis' interpolate);*/
  /*external Area<T> interpolate('basis-open' interpolate);*/
  /*external Area<T> interpolate('cardinal' interpolate);*/
  /*external Area<T> interpolate('cardinal-open' interpolate);*/
  /*external Area<T> interpolate('monotone' interpolate);*/
  /*external Area<T> interpolate(String|Func1<List<Tuple of <num,num>>, String> interpolate);*/
  external dynamic /*String|Func1<List<Tuple of <num,num>>, String>|Area<T>*/ interpolate(
      [dynamic /*'linear'|'step'|'step-before'|'step-after'|'basis'|'basis-open'|'cardinal'|'cardinal-open'|'monotone'|String|Func1<List<Tuple of <num,num>>, String>*/ interpolate]);
  /*external num tension();*/
  /*external Area<T> tension(num tension);*/
  external dynamic /*num|Area<T>*/ tension([num tension]);
  /*external Func2<T, num, bool> defined();*/
  /*external Area<T> defined(bool defined(T d, num i));*/
  external Function /*Func2<T, num, bool>|Area<T>*/ defined(
      [bool defined(T d, num i)]);
}

// Module area
/*external area_Radial<Tuple of <num,num>> area_radial();*/
/*external area_Radial<T> area_radial<T>();*/
@JS("d3.svg.area.radial")
external area_Radial /*area_Radial<Tuple of <num,num>>|area_Radial<T>*/ area_radial/*<T>*/();

@anonymous
@JS()
abstract class area_Radial<T> {
  external String call(List<T> data);
  /*external num|Func2<T, num, num> radius();*/
  /*external area_Radial<T> radius(num radius);*/
  /*external area_Radial<T> radius(num radius(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ radius(
      [dynamic /*num|Func2<T, num, num>*/ radius]);
  /*external num|Func2<T, num, num> innerRadius();*/
  /*external area_Radial<T> innerRadius(num innerRadius);*/
  /*external area_Radial<T> innerRadius(num innerRadius(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ innerRadius(
      [dynamic /*num|Func2<T, num, num>*/ innerRadius]);
  /*external num|Func2<T, num, num> outerRadius();*/
  /*external area_Radial<T> outerRadius(num outerRadius);*/
  /*external area_Radial<T> outerRadius(num outerRadius(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ outerRadius(
      [dynamic /*num|Func2<T, num, num>*/ outerRadius]);
  /*external num|Func2<T, num, num> angle();*/
  /*external area_Radial<T> angle(num angle);*/
  /*external area_Radial<T> angle(num angle(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ angle(
      [dynamic /*num|Func2<T, num, num>*/ angle]);
  /*external num|Func2<T, num, num> startAngle();*/
  /*external area_Radial<T> startAngle(num startAngle);*/
  /*external area_Radial<T> startAngle(num startAngle(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ startAngle(
      [dynamic /*num|Func2<T, num, num>*/ startAngle]);
  /*external num|Func2<T, num, num> endAngle();*/
  /*external area_Radial<T> endAngle(num endAngle);*/
  /*external area_Radial<T> endAngle(num endAngle(T d, num i));*/
  external dynamic /*num|Func2<T, num, num>|area_Radial<T>*/ endAngle(
      [dynamic /*num|Func2<T, num, num>*/ endAngle]);
  /*external String|Func1<List<Tuple of <num,num>>, String> interpolate();*/
  /*external area_Radial<T> interpolate('linear' interpolate);*/
  /*external area_Radial<T> interpolate('step' interpolate);*/
  /*external area_Radial<T> interpolate('step-before' interpolate);*/
  /*external area_Radial<T> interpolate('step-after' interpolate);*/
  /*external area_Radial<T> interpolate('basis' interpolate);*/
  /*external area_Radial<T> interpolate('basis-open' interpolate);*/
  /*external area_Radial<T> interpolate('cardinal' interpolate);*/
  /*external area_Radial<T> interpolate('cardinal-open' interpolate);*/
  /*external area_Radial<T> interpolate('monotone' interpolate);*/
  /*external area_Radial<T> interpolate(String|Func1<List<Tuple of <num,num>>, String> interpolate);*/
  external dynamic /*String|Func1<List<Tuple of <num,num>>, String>|area_Radial<T>*/ interpolate(
      [dynamic /*'linear'|'step'|'step-before'|'step-after'|'basis'|'basis-open'|'cardinal'|'cardinal-open'|'monotone'|String|Func1<List<Tuple of <num,num>>, String>*/ interpolate]);
  /*external num tension();*/
  /*external area_Radial<T> tension(num tension);*/
  external dynamic /*num|area_Radial<T>*/ tension([num tension]);
  /*external Func2<T, num, bool> defined();*/
  /*external area_Radial<T> defined(bool defined(T d, num i));*/
  external Function /*Func2<T, num, bool>|area_Radial<T>*/ defined(
      [bool defined(T d, num i)]);
}

// End module area
/*external Arc<arc_Arc> arc();*/
/*external Arc<T> arc<T>();*/
@JS("d3.svg.arc")
external Arc /*Arc<arc_Arc>|Arc<T>*/ arc/*<T>*/();

// Module arc
@anonymous
@JS()
abstract class arc_Arc {
  external num get innerRadius;
  external set innerRadius(num v);
  external num get outerRadius;
  external set outerRadius(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get padAngle;
  external set padAngle(num v);
  external factory arc_Arc(
      {num innerRadius,
      num outerRadius,
      num startAngle,
      num endAngle,
      num padAngle});
}

// End module arc
@anonymous
@JS()
abstract class Arc<T> {
  external String call(T d, [num i]);
  /*external Func2<T, num, num> innerRadius();*/
  /*external Arc<T> innerRadius(num radius);*/
  /*external Arc<T> innerRadius(num radius(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ innerRadius(
      [dynamic /*num|Func2<T, num, num>*/ radius]);
  /*external Func2<T, num, num> outerRadius();*/
  /*external Arc<T> outerRadius(num radius);*/
  /*external Arc<T> outerRadius(num radius(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ outerRadius(
      [dynamic /*num|Func2<T, num, num>*/ radius]);
  /*external Func2<T, num, num> cornerRadius();*/
  /*external Arc<T> cornerRadius(num radius);*/
  /*external Arc<T> cornerRadius(num radius(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ cornerRadius(
      [dynamic /*num|Func2<T, num, num>*/ radius]);
  /*external String|Func2<T, num, num> padRadius();*/
  /*external Arc<T> padRadius('auto' radius);*/
  /*external Arc<T> padRadius(String radius);*/
  /*external Arc<T> padRadius(num radius(T d, num i));*/
  external dynamic /*String|Func2<T, num, num>|Arc<T>*/ padRadius(
      [dynamic /*'auto'|String|Func2<T, num, num>*/ radius]);
  /*external Func2<T, num, num> startAngle();*/
  /*external Arc<T> startAngle(num angle);*/
  /*external Arc<T> startAngle(num angle(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ startAngle(
      [dynamic /*num|Func2<T, num, num>*/ angle]);
  /*external Func2<T, num, num> endAngle();*/
  /*external Arc<T> endAngle(num angle);*/
  /*external Arc<T> endAngle(num angle(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ endAngle(
      [dynamic /*num|Func2<T, num, num>*/ angle]);
  /*external Func2<T, num, num> padAngle();*/
  /*external Arc<T> padAngle(num angle);*/
  /*external Arc<T> padAngle(num angle(T d, num i));*/
  external Function /*Func2<T, num, num>|Arc<T>*/ padAngle(
      [dynamic /*num|Func2<T, num, num>*/ angle]);
  external List<num> /*Tuple of <num,num>*/ centroid(T d, [num i]);
}

/*external Symbol<{}> symbol();*/
/*external Symbol<T> symbol<T>();*/
@JS("d3.svg.symbol")
external Symbol<dynamic> /*Symbol<{}>|Symbol<T>*/ symbol/*<T>*/();

@anonymous
@JS()
abstract class Symbol<T> {
  external String call(T d, [num i]);
  /*external Func2<T, num, String> type();*/
  /*external Symbol<T> type(String type);*/
  /*external Symbol<T> type(String type(T d, num i));*/
  external Function /*Func2<T, num, String>|Symbol<T>*/ type(
      [dynamic /*String|Func2<T, num, String>*/ type]);
  /*external Func2<T, String, num> size();*/
  /*external Symbol<T> size(num size);*/
  /*external Symbol<T> size(num size(T d, num i));*/
  external Function /*Func2<T, String, num>|Symbol<T>*/ size(
      [dynamic /*num|Func2<T, num, num>*/ size]);
}

@JS("d3.svg.symbolTypes")
external List<String> get symbolTypes;
@JS("d3.svg.symbolTypes")
external set symbolTypes(List<String> v);
/*external Chord<Link<Node>, Node> chord();*/
/*external Chord<Link<Node>,Node> chord<Node>();*/
/*external Chord<Link,Node> chord<Link, Node>();*/
@JS("d3.svg.chord")
external Chord /*Chord<Link<Node>,Node>|Chord<Link,Node>*/ chord/*<Node, Link>*/();

// Module chord
@anonymous
@JS()
abstract class Link<Node> {
  external Node get source;
  external set source(Node v);
  external Node get target;
  external set target(Node v);
  external factory Link({Node source, Node target});
}

@anonymous
@JS()
abstract class Node {
  external num get radius;
  external set radius(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external factory Node({num radius, num startAngle, num endAngle});
}

// End module chord
@anonymous
@JS()
abstract class Chord<Link, Node> {
  external String call(Link d, num i);
  /*external Func2<Link, num, Node> source();*/
  /*external Chord<Link, Node> source(Node source);*/
  /*external Chord<Link, Node> source(Node source(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|Chord<Link,Node>*/ source(
      [dynamic /*Node|Func2<Link, num, Node>*/ source]);
  /*external Func2<Link, num, Node> target();*/
  /*external Chord<Link, Node> target(Node target);*/
  /*external Chord<Link, Node> target(Node target(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|Chord<Link,Node>*/ target(
      [dynamic /*Node|Func2<Link, num, Node>*/ target]);
  /*external Func2<Node, num, num> radius();*/
  /*external Chord<Link, Node> radius(num radius);*/
  /*external Chord<Link, Node> radius(num radius(Node d, num i));*/
  external Function /*Func2<Node, num, num>|Chord<Link,Node>*/ radius(
      [dynamic /*num|Func2<Node, num, num>*/ radius]);
  /*external Func2<Node, num, num> startAngle();*/
  /*external Chord<Link, Node> startAngle(num angle);*/
  /*external Chord<Link, Node> startAngle(num angle(Node d, num i));*/
  external Function /*Func2<Node, num, num>|Chord<Link,Node>*/ startAngle(
      [dynamic /*num|Func2<Node, num, num>*/ angle]);
  /*external Func2<Node, num, num> endAngle();*/
  /*external Chord<Link, Node> endAngle(num angle);*/
  /*external Chord<Link, Node> endAngle(num angle(Node d, num i));*/
  external Function /*Func2<Node, num, num>|Chord<Link,Node>*/ endAngle(
      [dynamic /*num|Func2<Node, num, num>*/ angle]);
}

/*external Diagonal<diagonal_Link<diagonal_Node>, diagonal_Node> diagonal();*/
/*external Diagonal<diagonal_Link<Node>,Node> diagonal<Node>();*/
/*external Diagonal<Link,Node> diagonal<Link, Node>();*/
@JS("d3.svg.diagonal")
external Diagonal /*Diagonal<diagonal_Link<diagonal_Node>,diagonal_Node>|Diagonal<diagonal_Link<Node>,Node>|Diagonal<Link,Node>*/ diagonal/*<Node, Link>*/();

// Module diagonal
@anonymous
@JS()
abstract class diagonal_Link<Node> {
  external Node get source;
  external set source(Node v);
  external Node get target;
  external set target(Node v);
  external factory diagonal_Link({Node source, Node target});
}

@anonymous
@JS()
abstract class diagonal_Node {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory diagonal_Node({num x, num y});
}

// End module diagonal
@anonymous
@JS()
abstract class Diagonal<Link, Node> {
  external String call(Link d, [num i]);
  /*external Func2<Link, num, Node> source();*/
  /*external Diagonal<Link, Node> source(Node source);*/
  /*external Diagonal<Link,Node> source({ x: number; y: number; } source(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|Diagonal<Link,Node>*/ source(
      [dynamic /*Node|Func2<Link, num, { x: number; y: number; }>*/ source]);
  /*external Func2<Link, num, Node> target();*/
  /*external Diagonal<Link, Node> target(Node target);*/
  /*external Diagonal<Link,Node> target({ x: number; y: number; } target(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|Diagonal<Link,Node>*/ target(
      [dynamic /*Node|Func2<Link, num, { x: number; y: number; }>*/ target]);
  /*external Func2<Node, num, Tuple of <num,num>> projection();*/
  /*external Diagonal<Link,Node> projection(Tuple of <num,num> projection(Node d, num i));*/
  external Function /*Func2<Node, num, Tuple of <num,num>>|Diagonal<Link,Node>*/ projection(
      [List<num> /*Tuple of <num,num>*/ projection(Node d, num i)]);
}

// Module diagonal
/*external diagonal_Radial<diagonal_Link<diagonal_Node>, diagonal_Node>
    diagonal_radial();*/
/*external diagonal_Radial<diagonal_Link<Node>,Node> diagonal_radial<Node>();*/
/*external diagonal_Radial<Link,Node> diagonal_radial<Link, Node>();*/
@JS("d3.svg.diagonal.radial")
external diagonal_Radial /*diagonal_Radial<diagonal_Link<diagonal_Node>,diagonal_Node>|diagonal_Radial<diagonal_Link<Node>,Node>|diagonal_Radial<Link,Node>*/ diagonal_radial/*<Node, Link>*/();

@anonymous
@JS()
abstract class diagonal_Radial<Link, Node> {
  external String call(Link d, num i);
  /*external Func2<Link, num, Node> source();*/
  /*external diagonal_Radial<Link, Node> source(Node source);*/
  /*external diagonal_Radial<Link, Node> source(Node source(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|diagonal_Radial<Link,Node>*/ source(
      [dynamic /*Node|Func2<Link, num, Node>*/ source]);
  /*external Func2<Link, num, Node> target();*/
  /*external diagonal_Radial<Link, Node> target(Node target);*/
  /*external diagonal_Radial<Link, Node> target(Node target(Link d, num i));*/
  external Function /*Func2<Link, num, Node>|diagonal_Radial<Link,Node>*/ target(
      [dynamic /*Node|Func2<Link, num, Node>*/ target]);
  /*external Func2<Node, num, Tuple of <num,num>> projection();*/
  /*external diagonal_Radial<Link,Node> projection(Tuple of <num,num> projection(Node d, num i));*/
  external Function /*Func2<Node, num, Tuple of <num,num>>|diagonal_Radial<Link,Node>*/ projection(
      [List<num> /*Tuple of <num,num>*/ projection(Node d, num i)]);
}

// End module diagonal
@JS("d3.svg.axis")
external Axis axis();

@anonymous
@JS()
abstract class Axis {
  /*external void call(Selection<dynamic> selection);*/
  /*external void call(Transition<dynamic> selection);*/
  external void call(
      dynamic /*Selection<dynamic>|Transition<dynamic>*/ selection);
  /*external dynamic scale();*/
  /*external Axis scale(dynamic scale);*/
  external dynamic /*dynamic|Axis*/ scale([dynamic scale]);
  /*external String orient();*/
  /*external Axis orient(String orientation);*/
  external dynamic /*String|Axis*/ orient([String orientation]);
  /*external List<dynamic> ticks();*/
  /*external Axis ticks(
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);*/
  external dynamic /*List<dynamic>|Axis*/ ticks([List<dynamic> args]);
  /*external List<dynamic> tickValues();*/
  /*external Axis tickValues(List<dynamic> values);*/
  external dynamic /*List<dynamic>|Axis*/ tickValues([List<dynamic> values]);
  /*external num tickSize();*/
  /*external Axis tickSize(num size);*/
  /*external Axis tickSize(num inner, num outer);*/
  external dynamic /*num|Axis*/ tickSize([num size_inner, num outer]);
  /*external num innerTickSize();*/
  /*external Axis innerTickSize(num size);*/
  external dynamic /*num|Axis*/ innerTickSize([num size]);
  /*external num outerTickSize();*/
  /*external Axis outerTickSize(num size);*/
  external dynamic /*num|Axis*/ outerTickSize([num size]);
  /*external num tickPadding();*/
  /*external Axis tickPadding(num padding);*/
  external dynamic /*num|Axis*/ tickPadding([num padding]);
  /*external Func1<dynamic, String> tickFormat();*/
  /*external Axis tickFormat(String format(dynamic t));*/
  /*external Axis tickFormat(String format);*/
  external Function /*Func1<dynamic, String>|Axis*/ tickFormat(
      [dynamic /*Func1<dynamic, String>|String*/ format]);
}

/*external Brush<dynamic> brush();*/
/*external Brush<T> brush<T>();*/
@JS("d3.svg.brush")
external Brush<dynamic> /*Brush<dynamic>|Brush<T>*/ brush/*<T>*/();

// Module brush
@anonymous
@JS()
abstract class brush_Scale {
  /*external List<num> domain();*/
  /*external brush_Scale domain(List<num> domain);*/
  external dynamic /*List<num>|brush_Scale*/ domain([List<num> domain]);
  /*external List<num> range();*/
  /*external brush_Scale range(List<num> range);*/
  external dynamic /*List<num>|brush_Scale*/ range([List<num> range]);
  external num invert(num y);
}

// End module brush
@anonymous
@JS()
abstract class Brush<T> {
  /*external void call(Selection<T> selection);*/
  /*external void call(Transition<T> selection);*/
  external void call(dynamic /*Selection<T>|Transition<T>*/ selection);
  /*external void event(Selection<T> selection);*/
  /*external void event(Transition<T> selection);*/
  external void event(dynamic /*Selection<T>|Transition<T>*/ selection);
  /*external brush_Scale x();*/
  /*external Brush<T> x(brush_Scale x);*/
  external dynamic /*brush_Scale|Brush<T>*/ x([brush_Scale x]);
  /*external brush_Scale y();*/
  /*external Brush<T> y(brush_Scale y);*/
  external dynamic /*brush_Scale|Brush<T>*/ y([brush_Scale y]);
  /*external Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external Brush<T> extent(Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Brush<T>*/ extent(
      [dynamic /*Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external bool|Tuple of <bool,bool> clamp();*/
  /*external Brush<T> clamp(bool|Tuple of <bool,bool> clamp);*/
  external dynamic /*bool|Tuple of <bool,bool>|Brush<T>*/ clamp(
      [dynamic /*bool|Tuple of <bool,bool>*/ clamp]);
  external void clear();
  external bool empty();
  /*external VoidFunc2<T, num> on('brushstart' type);*/
  /*external VoidFunc2<T, num> on('brush' type);*/
  /*external VoidFunc2<T, num> on('brushend' type);*/
  /*external VoidFunc2<T, num> on(String type);*/
  /*external Brush<T> on('brushstart' type, void listener(T datum, num index));*/
  /*external Brush<T> on('brush' type, void listener(T datum, num index));*/
  /*external Brush<T> on('brushend' type, void listener(T datum, num index));*/
  /*external Brush<T> on(String type, void listener(T datum, num index));*/
  external Function /*VoidFunc2<T, num>|Brush<T>*/ on(
      String /*'brushstart'|'brush'|'brushend'|String*/ type,
      [void listener(T datum, num index)]);
}

// End module svg
/*external Xhr xhr(String url,
    [String mimeType, void callback(dynamic err, dynamic data)]);*/
/*external Xhr xhr(String url, void callback(dynamic err, dynamic data));*/
@JS("d3.xhr")
external Xhr xhr(String url,
    [dynamic /*String|VoidFunc2<dynamic, dynamic>*/ mimeType_callback,
    void callback(dynamic err, dynamic data)]);

@anonymous
@JS()
abstract class Xhr {
  /*external String header(String name);*/
  /*external Xhr header(String name, String value);*/
  external dynamic /*String|Xhr*/ header(String name, [String value]);
  /*external String mimeType();*/
  /*external Xhr mimeType(String type);*/
  external dynamic /*String|Xhr*/ mimeType([String type]);
  /*external String responseType();*/
  /*external Xhr responseType(String type);*/
  external dynamic /*String|Xhr*/ responseType([String type]);
  /*external Func1<HttpRequest, dynamic> response();*/
  /*external Xhr response(dynamic value(HttpRequest request));*/
  external dynamic /*Func1<HttpRequest, dynamic>|Xhr*/ response(
      [dynamic value(HttpRequest request)]);
  external Xhr JS$get([void callback(dynamic err, dynamic data)]);
  /*external Xhr post([dynamic data, void callback(dynamic err, dynamic data)]);*/
  /*external Xhr post(void callback(dynamic err, dynamic data));*/
  external Xhr post(
      [dynamic /*dynamic|VoidFunc2<dynamic, dynamic>*/ data_callback,
      void callback(dynamic err, dynamic data)]);
  /*external Xhr send(String method,
    [dynamic data, void callback(dynamic err, dynamic data)]);*/
  /*external Xhr send(String method, void callback(dynamic err, dynamic data));*/
  external Xhr send(String method,
      [dynamic /*dynamic|VoidFunc2<dynamic, dynamic>*/ data_callback,
      void callback(dynamic err, dynamic data)]);
  external Xhr abort();
  /*external VoidFunc1<HttpRequest> on('beforesend' type);*/
  /*external VoidFunc1<HttpRequest> on('progress' type);*/
  /*external VoidFunc1<dynamic> on('load' type);*/
  /*external VoidFunc1<dynamic> on('error' type);*/
  /*external (...args: any[]) => void on(String type);*/
  /*external Xhr on('beforesend' type, void listener(HttpRequest request));*/
  /*external Xhr on('progress' type, void listener(HttpRequest request));*/
  /*external Xhr on('load' type, void listener(dynamic response));*/
  /*external Xhr on('error' type, void listener(dynamic err));*/
  /*external Xhr on(String type, (...args: any[]) => void listener);*/
  external dynamic /*VoidFunc1<HttpRequest>|VoidFunc1<dynamic>|(...args: any[]) => void|Xhr*/ on(
      String /*'beforesend'|'progress'|'load'|'error'|String*/ type,
      [Function /*VoidFunc1<HttpRequest>|VoidFunc1<dynamic>|(...args: any[]) => void*/ listener]);
}

/*external Xhr text(String url,
    [String mimeType, void callback(dynamic err, String data)]);*/
/*external Xhr text(String url, void callback(dynamic err, String data));*/
@JS("d3.text")
external Xhr text(String url,
    [dynamic /*String|VoidFunc2<dynamic, String>*/ mimeType_callback,
    void callback(dynamic err, String data)]);
@JS("d3.json")
external Xhr json(String url, [void callback(dynamic err, dynamic data)]);
/*external Xhr xml(String url,
    [String mimeType, void callback(dynamic err, dynamic data)]);*/
/*external Xhr xml(String url, void callback(dynamic err, dynamic data));*/
@JS("d3.xml")
external Xhr xml(String url,
    [dynamic /*String|VoidFunc2<dynamic, dynamic>*/ mimeType_callback,
    void callback(dynamic err, dynamic data)]);
@JS("d3.html")
external Xhr html(String url,
    [void callback(dynamic err, DocumentFragment data)]);
@JS("d3.csv")
external Dsv get csv;
@JS("d3.csv")
external set csv(Dsv v);
@JS("d3.tsv")
external Dsv get tsv;
@JS("d3.tsv")
external set tsv(Dsv v);
@JS("d3.dsv")
external Dsv dsv(String delimiter, String mimeType);

@anonymous
@JS()
abstract class Dsv {
  /*external DsvXhr<JSMap of <String,String>> call(String url, void callback(List<JSMap of <String,String>> rows));*/
  /*external DsvXhr<JSMap of <String,String>> call(String url, void callback(dynamic error, List<JSMap of <String,String>> rows));*/
  /*external DsvXhr<JSMap of <String,String>> call(String url);*/
  /*external DsvXhr<T> call(String url, T accessor(JSMap of <String,String> row), void callback(List<T> rows));*/
  /*external DsvXhr<T> call(String url, T accessor(JSMap of <String,String> row), void callback(dynamic error, List<T> rows));*/
  /*external DsvXhr<T> call(String url, T accessor(JSMap of <String,String> row));*/
  external DsvXhr<dynamic> /*DsvXhr<JSMap of <String,String>>|DsvXhr<T>*/ call(
      String url,
      [Function /*VoidFunc1<List<JSMap of <String,String>>>|VoidFunc2<dynamic, List<JSMap of <String,String>>>|Func1<JSMap of <String,String>, T>*/ callback_accessor,
      Function /*VoidFunc1<List<T>>|VoidFunc2<dynamic, List<T>>*/ callback]);
  /*external List<JSMap of <String,String>> parse(String string);*/
  /*external List<T> parse<T>(String string, T accessor(JSMap of <String,String> row, num index));*/
  external List<dynamic> /*List<JSMap of <String,String>>|List<T>*/ parse/*<T>*/(
      String string,
      [dynamic/*=T*/ accessor(
          dynamic /*JSMap of <String,String>*/ row, num index)]);
  /*external List<List<String>> parseRows(String string);*/
  /*external List<T> parseRows<T>(String string, T accessor(List<String> row, num index));*/
  external List<dynamic> /*List<List<String>>|List<T>*/ parseRows/*<T>*/(
      String string,
      [dynamic/*=T*/ accessor(List<String> row, num index)]);
  external String format(List<Object> rows);
  external String formatRows(List<List<String>> rows);
}

@anonymous
@JS()
abstract class DsvXhr<T> implements Xhr {
  /*external Func1<JSMap of <String,String>, T> row();*/
  /*external DsvXhr<U> row<U>(U accessor(JSMap of <String,String> row));*/
  external dynamic /*Func1<JSMap of <String,String>, T>|DsvXhr<U>*/ row/*<U>*/(
      [dynamic/*=U*/ accessor(dynamic /*JSMap of <String,String>*/ row)]);
  /*external String header(String name);*/
  /*external DsvXhr<T> header(String name, String value);*/
  external dynamic /*String|DsvXhr<T>*/ header(String name, [String value]);
  /*external String mimeType();*/
  /*external DsvXhr<T> mimeType(String type);*/
  external dynamic /*String|DsvXhr<T>*/ mimeType([String type]);
  /*external String responseType();*/
  /*external DsvXhr<T> responseType(String type);*/
  external dynamic /*String|DsvXhr<T>*/ responseType([String type]);
  /*external Func1<HttpRequest, dynamic> response();*/
  /*external DsvXhr<T> response(dynamic value(HttpRequest request));*/
  external dynamic /*Func1<HttpRequest, dynamic>|DsvXhr<T>*/ response(
      [dynamic value(HttpRequest request)]);
  external DsvXhr<T> JS$get([void callback(HttpRequest err, List<T> data)]);
  /*external DsvXhr<T> post(
    [dynamic data, void callback(HttpRequest err, List<T> data)]);*/
  /*external DsvXhr<T> post(void callback(HttpRequest err, List<T> data));*/
  external DsvXhr<T> post(
      [dynamic /*dynamic|VoidFunc2<HttpRequest, List<T>>*/ data_callback,
      void callback(HttpRequest err, List<T> data)]);
  /*external DsvXhr<T> send(String method,
    [dynamic data, void callback(HttpRequest err, List<T> data)]);*/
  /*external DsvXhr<T> send(
    String method, void callback(HttpRequest err, List<T> data));*/
  external DsvXhr<T> send(String method,
      [dynamic /*dynamic|VoidFunc2<HttpRequest, List<T>>*/ data_callback,
      void callback(HttpRequest err, List<T> data)]);
  external DsvXhr<T> abort();
  /*external VoidFunc1<HttpRequest> on('beforesend' type);*/
  /*external VoidFunc1<HttpRequest> on('progress' type);*/
  /*external VoidFunc1<List<T>> on('load' type);*/
  /*external VoidFunc1<dynamic> on('error' type);*/
  /*external (...args: any[]) => void on(String type);*/
  /*external DsvXhr<T> on('beforesend' type, void listener(HttpRequest request));*/
  /*external DsvXhr<T> on('progress' type, void listener(HttpRequest request));*/
  /*external DsvXhr<T> on('load' type, void listener(List<T> response));*/
  /*external DsvXhr<T> on('error' type, void listener(dynamic err));*/
  /*external DsvXhr<T> on(String type, (...args: any[]) => void listener);*/
  external dynamic /*VoidFunc1<HttpRequest>|VoidFunc1<List<T>>|VoidFunc1<dynamic>|(...args: any[]) => void|DsvXhr<T>*/ on(
      String /*'beforesend'|'progress'|'load'|'error'|String*/ type,
      [Function /*VoidFunc1<HttpRequest>|VoidFunc1<List<T>>|VoidFunc1<dynamic>|(...args: any[]) => void*/ listener]);
}

@JS("d3.locale")
external Locale locale(LocaleDefinition definition);

@anonymous
@JS()
abstract class LocaleDefinition {
  external String get decimal;
  external set decimal(String v);
  external String get thousands;
  external set thousands(String v);
  external List<num> get grouping;
  external set grouping(List<num> v);
  external List<String> /*Tuple of <String,String>*/ get currency;
  external set currency(List<String> /*Tuple of <String,String>*/ v);
  external String get dateTime;
  external set dateTime(String v);
  external String get date;
  external set date(String v);
  external String get time;
  external set time(String v);
  external List<String> /*Tuple of <String,String>*/ get periods;
  external set periods(List<String> /*Tuple of <String,String>*/ v);
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String>*/ get days;
  external set days(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ v);
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String>*/ get shortDays;
  external set shortDays(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String>*/ v);
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ get months;
  external set months(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ v);
  external List<
      String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ get shortMonths;
  external set shortMonths(
      List<
          String> /*Tuple of <String,String,String,String,String,String,String,String,String,String,String,String>*/ v);
  external factory LocaleDefinition(
      {String decimal,
      String thousands,
      List<num> grouping,
      List<String> /*Tuple of <String,String>*/ currency,
      String dateTime,
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
abstract class Locale {
  external Func1<num, String> numberFormat(String specifier);
  external dynamic
      /*{
            (specifier: string): time.Format;
            utc(specifier: string): time.Format;
            multi(formats: Array<[string, (d: Date) => boolean|number]>): time.Format;
        }*/
      get timeFormat;
  external set timeFormat(
      dynamic /*{
            (specifier: string): time.Format;
            utc(specifier: string): time.Format;
            multi(formats: Array<[string, (d: Date) => boolean|number]>): time.Format;
        }*/
      v);
}

// Module layout
/*external Bundle<bundle_Node> bundle();*/
/*external Bundle<T> bundle<T extends bundle_Node>();*/
@JS("d3.layout.bundle")
external Bundle /*Bundle<bundle_Node>|Bundle<T>*/ bundle/*<T extends bundle_Node>*/();

// Module bundle
@anonymous
@JS()
abstract class bundle_Node {
  external bundle_Node get parent;
  external set parent(bundle_Node v);
  external factory bundle_Node({bundle_Node parent});
}

@anonymous
@JS()
abstract class bundle_Link<T extends bundle_Node> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory bundle_Link({T source, T target});
}

// End module bundle
typedef List<List<T>> Bundle<T extends bundle_Node>(List<bundle_Link<T>> links);
@JS("d3.layout.chord")
external layout_Chord layout_chord();

// Module chord
@anonymous
@JS()
abstract class chord_Link {
  external chord_Node get source;
  external set source(chord_Node v);
  external chord_Node get target;
  external set target(chord_Node v);
  external factory chord_Link({chord_Node source, chord_Node target});
}

@anonymous
@JS()
abstract class chord_Node {
  external num get index;
  external set index(num v);
  external num get subindex;
  external set subindex(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get value;
  external set value(num v);
  external factory chord_Node(
      {num index, num subindex, num startAngle, num endAngle, num value});
}

@anonymous
@JS()
abstract class chord_Group {
  external num get index;
  external set index(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get value;
  external set value(num v);
  external factory chord_Group(
      {num index, num startAngle, num endAngle, num value});
}

// End module chord
@anonymous
@JS()
abstract class layout_Chord {
  /*external List<List<num>> matrix();*/
  /*external layout_Chord matrix(List<List<num>> matrix);*/
  external dynamic /*List<List<num>>|layout_Chord*/ matrix(
      [List<List<num>> matrix]);
  /*external num padding();*/
  /*external layout_Chord padding(num padding);*/
  external dynamic /*num|layout_Chord*/ padding([num padding]);
  /*external Func2<num, num, num> sortGroups();*/
  /*external layout_Chord sortGroups(num comparator(num a, num b));*/
  external dynamic /*Func2<num, num, num>|layout_Chord*/ sortGroups(
      [num comparator(num a, num b)]);
  /*external Func2<num, num, num> sortSubgroups();*/
  /*external layout_Chord sortSubgroups(num comparator(num a, num b));*/
  external dynamic /*Func2<num, num, num>|layout_Chord*/ sortSubgroups(
      [num comparator(num a, num b)]);
  /*external Func2<num, num, num> sortChords();*/
  /*external layout_Chord sortChords(num comparator(num a, num b));*/
  external dynamic /*Func2<num, num, num>|layout_Chord*/ sortChords(
      [num comparator(num a, num b)]);
  external List<chord_Link> chords();
  external List<chord_Group> groups();
}

/*external Cluster<Result> cluster();*/
/*external Cluster<T> cluster<T extends Result>();*/
@JS("d3.layout.cluster")
external Cluster /*Cluster<Result>|Cluster<T>*/ cluster/*<T extends Result>*/();

// Module cluster
@anonymous
@JS()
abstract class Result {
  external Result get parent;
  external set parent(Result v);
  external List<Result> get children;
  external set children(List<Result> v);
  external num get depth;
  external set depth(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory Result(
      {Result parent, List<Result> children, num depth, num x, num y});
}

@anonymous
@JS()
abstract class cluster_Link<T extends Result> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory cluster_Link({T source, T target});
}

// End module cluster
@anonymous
@JS()
abstract class Cluster<T extends Result> {
  external List<T> call(T root);
  external List<T> nodes(T root);
  external List<cluster_Link<T>> links(List<T> nodes);
  /*external Func1<T, List<T>> children();*/
  /*external Cluster<T> children(List<T> accessor(T node));*/
  external Function /*Func1<T, List<T>>|Cluster<T>*/ children(
      [List<T> accessor(T node)]);
  /*external Func2<T, T, num> sort();*/
  /*external Cluster<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Cluster<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func2<T, T, num> separation();*/
  /*external Cluster<T> separation(num separation(T a, T b));*/
  external Function /*Func2<T, T, num>|Cluster<T>*/ separation(
      [num separation(T a, T b)]);
  /*external Tuple of <num,num> size();*/
  /*external Cluster<T> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Cluster<T>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Tuple of <num,num> nodeSize();*/
  /*external Cluster<T> nodeSize(Tuple of <num,num> nodeSize);*/
  external dynamic /*Tuple of <num,num>|Cluster<T>*/ nodeSize(
      [List<num> /*Tuple of <num,num>*/ nodeSize]);
  /*external Func1<T, num> value();*/
  /*external Cluster<T> value(num value(T a));*/
  external Function /*Func1<T, num>|Cluster<T>*/ value([num value(T a)]);
}

/*external Force<force_Link<force_Node>, force_Node> force();*/
/*external Force<force_Link<Node>,Node> force<Node extends force_Node>();*/
/*external Force<Link,Node> force<Link extends force_Link<force_Node>, Node extends force_Node>();*/
@JS("d3.layout.force")
external Force /*Force<force_Link<force_Node>,force_Node>|Force<force_Link<Node>,Node>|Force<Link,Node>*/ force/*<Node extends force_Node, Link extends force_Link<force_Node>>*/();

// Module force
@anonymous
@JS()
abstract class force_Link<T extends force_Node> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory force_Link({T source, T target});
}

@anonymous
@JS()
abstract class force_Node {
  external num get index;
  external set index(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get px;
  external set px(num v);
  external num get py;
  external set py(num v);
  external bool get fixed;
  external set fixed(bool v);
  external num get weight;
  external set weight(num v);
  external factory force_Node(
      {num index, num x, num y, num px, num py, bool fixed, num weight});
}

@anonymous
@JS()
abstract class Event {
  external String get type;
  external set type(String v);
  external num get alpha;
  external set alpha(num v);
  external factory Event({String type, num alpha});
}

// End module force
@anonymous
@JS()
abstract class Force<Link extends force_Link<force_Node>,
    Node extends force_Node> {
  /*external Tuple of <num,num> size();*/
  /*external Force<Link,Node> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Force<Link,Node>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external num|Func2<Link, num, num> linkDistance();*/
  /*external Force<Link, Node> linkDistance(num distance);*/
  /*external Force<Link, Node> linkDistance(num distance(Link link, num index));*/
  external dynamic /*num|Func2<Link, num, num>|Force<Link,Node>*/ linkDistance(
      [dynamic /*num|Func2<Link, num, num>*/ distance]);
  /*external num|Func2<Link, num, num> linkStrength();*/
  /*external Force<Link, Node> linkStrength(num strength);*/
  /*external Force<Link, Node> linkStrength(num strength(Link link, num index));*/
  external dynamic /*num|Func2<Link, num, num>|Force<Link,Node>*/ linkStrength(
      [dynamic /*num|Func2<Link, num, num>*/ strength]);
  /*external num friction();*/
  /*external Force<Link, Node> friction(num friction);*/
  external dynamic /*num|Force<Link,Node>*/ friction([num friction]);
  /*external num|Func2<Node, num, num> charge();*/
  /*external Force<Link, Node> charge(num charge);*/
  /*external Force<Link, Node> charge(num charge(Node node, num index));*/
  external dynamic /*num|Func2<Node, num, num>|Force<Link,Node>*/ charge(
      [dynamic /*num|Func2<Node, num, num>*/ charge]);
  /*external num chargeDistance();*/
  /*external Force<Link, Node> chargeDistance(num distance);*/
  external dynamic /*num|Force<Link,Node>*/ chargeDistance([num distance]);
  /*external num theta();*/
  /*external Force<Link, Node> theta(num theta);*/
  external dynamic /*num|Force<Link,Node>*/ theta([num theta]);
  /*external num gravity();*/
  /*external Force<Link, Node> gravity(num gravity);*/
  external dynamic /*num|Force<Link,Node>*/ gravity([num gravity]);
  /*external List<Node> nodes();*/
  /*external Force<Link, Node> nodes(List<Node> nodes);*/
  external dynamic /*List<Node>|Force<Link,Node>*/ nodes([List<Node> nodes]);
  /*external List<Link> links();*/
  /*external Force<Link,Node> links(List<{ source: number; target: number }> links);*/
  /*external Force<Link, Node> links(List<Link> links);*/
  external dynamic /*List<Link>|Force<Link,Node>*/ links(
      [List<
          dynamic> /*List<{ source: number; target: number }>|List<Link>*/ links]);
  external Force<Link, Node> start();
  external Force<Link, Node> tick();
  /*external num alpha();*/
  /*external Force<Link, Node> alpha(num value);*/
  external dynamic /*num|Force<Link,Node>*/ alpha([num value]);
  external Force<Link, Node> resume();
  external Force<Link, Node> stop();
  /*external VoidFunc1<Event> on(String type);*/
  /*external Force<Link, Node> on(String type, void listener(Event event));*/
  external dynamic /*VoidFunc1<Event>|Force<Link,Node>*/ on(String type,
      [void listener(Event event)]);
  /*external Drag<Node> drag();*/
  /*external void drag(Selection<Node> selection);*/
  external dynamic /*Drag<Node>|Null*/ drag([Selection<Node> selection]);
}

/*external Hierarchy<hierarchy_Result> hierarchy();*/
/*external Hierarchy<T> hierarchy<T extends hierarchy_Result>();*/
@JS("d3.layout.hierarchy")
external Hierarchy /*Hierarchy<hierarchy_Result>|Hierarchy<T>*/ hierarchy/*<T extends hierarchy_Result>*/();

// Module hierarchy
@anonymous
@JS()
abstract class hierarchy_Result {
  external hierarchy_Result get parent;
  external set parent(hierarchy_Result v);
  external List<hierarchy_Result> get children;
  external set children(List<hierarchy_Result> v);
  external num get value;
  external set value(num v);
  external num get depth;
  external set depth(num v);
  external factory hierarchy_Result(
      {hierarchy_Result parent,
      List<hierarchy_Result> children,
      num value,
      num depth});
}

// End module hierarchy
@anonymous
@JS()
abstract class Hierarchy<T extends hierarchy_Result> {
  external List<T> call(T root);
  /*external Func1<T, List<T>> children();*/
  /*external Hierarchy<T> children(List<T> accessor(T node));*/
  external Function /*Func1<T, List<T>>|Hierarchy<T>*/ children(
      [List<T> accessor(T node)]);
  /*external Func2<T, T, num> sort();*/
  /*external Hierarchy<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Hierarchy<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func1<T, num> value();*/
  /*external Hierarchy<T> value(num accessor(T node));*/
  external Function /*Func1<T, num>|Hierarchy<T>*/ value(
      [num accessor(T node)]);
  external List<T> revalue(T root);
}

/*external Histogram<num> histogram();*/
/*external Histogram<T> histogram<T>();*/
@JS("d3.layout.histogram")
external Histogram /*Histogram<num>|Histogram<T>*/ histogram/*<T>*/();

// Module histogram
@anonymous
@JS()
abstract class Bin<T> implements List<T> {
  external num get x;
  external set x(num v);
  external num get dx;
  external set dx(num v);
  external num get y;
  external set y(num v);
}

// End module histogram
@anonymous
@JS()
abstract class Histogram<T> {
  external List<Bin<T>> call(List<T> values, [num index]);
  /*external Func2<T, num, num> value();*/
  /*external Histogram<T> value(num value(T datum, num index));*/
  external Function /*Func2<T, num, num>|Histogram<T>*/ value(
      [num value(T datum, num index)]);
  /*external Func2<List<T>, num, Tuple of <num,num>> range();*/
  /*external Histogram<T> range(Tuple of <num,num> range(List<T> values, num index));*/
  /*external Histogram<T> range(Tuple of <num,num> range);*/
  external Function /*Func2<List<T>, num, Tuple of <num,num>>|Histogram<T>*/ range(
      [dynamic /*Func2<List<T>, num, Tuple of <num,num>>|Tuple of <num,num>*/ range]);
  /*external Func3<Tuple of <num,num>, List<T>, num, List<num>> bins();*/
  /*external Histogram<T> bins(num count);*/
  /*external Histogram<T> bins(List<num> thresholds);*/
  /*external Histogram<T> bins(List<num> func(Tuple of <num,num> range, List<T> values, num index));*/
  external Function /*Func3<Tuple of <num,num>, List<T>, num, List<num>>|Histogram<T>*/ bins(
      [dynamic /*num|List<num>|Func3<Tuple of <num,num>, List<T>, num, List<num>>*/ count_thresholds_func]);
  /*external bool frequency();*/
  /*external Histogram<T> frequency(bool frequency);*/
  external dynamic /*bool|Histogram<T>*/ frequency([bool frequency]);
}

/*external Pack<pack_Node> pack();*/
/*external Pack<T> pack<T extends pack_Node>();*/
@JS("d3.layout.pack")
external Pack /*Pack<pack_Node>|Pack<T>*/ pack/*<T extends pack_Node>*/();

// Module pack
@anonymous
@JS()
abstract class pack_Node {
  external pack_Node get parent;
  external set parent(pack_Node v);
  external List<pack_Node> get children;
  external set children(List<pack_Node> v);
  external num get value;
  external set value(num v);
  external num get depth;
  external set depth(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get r;
  external set r(num v);
  external factory pack_Node(
      {pack_Node parent,
      List<pack_Node> children,
      num value,
      num depth,
      num x,
      num y,
      num r});
}

@anonymous
@JS()
abstract class pack_Link<T extends pack_Node> {
  external pack_Node get source;
  external set source(pack_Node v);
  external pack_Node get target;
  external set target(pack_Node v);
  external factory pack_Link({pack_Node source, pack_Node target});
}

// End module pack
@anonymous
@JS()
abstract class Pack<T extends pack_Node> {
  external List<T> call(T root);
  external List<T> nodes(T root);
  external List<pack_Link<T>> links(List<T> nodes);
  /*external Func2<T, num, List<T>> children();*/
  /*external Pack<T> children(List<T> children(T node, num depth));*/
  external Function /*Func2<T, num, List<T>>|Pack<T>*/ children(
      [List<T> children(T node, num depth)]);
  /*external Func2<T, T, num> sort();*/
  /*external Pack<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Pack<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func1<T, num> value();*/
  /*external Pack<T> value(num value(T node));*/
  external Function /*Func1<T, num>|Pack<T>*/ value([num value(T node)]);
  /*external Tuple of <num,num> size();*/
  /*external Pack<T> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Pack<T>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external num|Func1<T, num> radius();*/
  /*external Pack<T> radius(num radius);*/
  /*external Pack<T> radius(num radius(T node));*/
  external dynamic /*num|Func1<T, num>|Pack<T>*/ radius(
      [dynamic /*num|Func1<T, num>*/ radius]);
  /*external num padding();*/
  /*external Pack<T> padding(num padding);*/
  external dynamic /*num|Pack<T>*/ padding([num padding]);
}

/*external Partition<partition_Node> partition();*/
/*external Partition<T> partition<T extends partition_Node>();*/
@JS("d3.layout.partition")
external Partition /*Partition<partition_Node>|Partition<T>*/ partition/*<T extends partition_Node>*/();

// Module partition
@anonymous
@JS()
abstract class partition_Link<T extends partition_Node> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory partition_Link({T source, T target});
}

@anonymous
@JS()
abstract class partition_Node {
  external partition_Node get parent;
  external set parent(partition_Node v);
  external num get children;
  external set children(num v);
  external num get value;
  external set value(num v);
  external num get depth;
  external set depth(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get dx;
  external set dx(num v);
  external num get dy;
  external set dy(num v);
  external factory partition_Node(
      {partition_Node parent,
      num children,
      num value,
      num depth,
      num x,
      num y,
      num dx,
      num dy});
}

// End module partition
@anonymous
@JS()
abstract class Partition<T extends partition_Node> {
  external List<T> call(T root);
  external List<T> nodes(T root);
  external List<partition_Link<T>> links(List<T> nodes);
  /*external Func2<T, num, List<T>> children();*/
  /*external Partition<T> children(List<T> children(T node, num depth));*/
  external Function /*Func2<T, num, List<T>>|Partition<T>*/ children(
      [List<T> children(T node, num depth)]);
  /*external Func2<T, T, num> sort();*/
  /*external Partition<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Partition<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func1<T, num> value();*/
  /*external Partition<T> value(num value(T node));*/
  external Function /*Func1<T, num>|Partition<T>*/ value([num value(T node)]);
  /*external Tuple of <num,num> size();*/
  /*external Partition<T> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Partition<T>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
}

/*external Pie<num> pie();*/
/*external Pie<T> pie<T>();*/
@JS("d3.layout.pie")
external Pie /*Pie<num>|Pie<T>*/ pie/*<T>*/();

// Module pie
@anonymous
@JS()
abstract class pie_Arc<T> {
  external num get value;
  external set value(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get padAngle;
  external set padAngle(num v);
  external T get data;
  external set data(T v);
  external factory pie_Arc(
      {num value, num startAngle, num endAngle, num padAngle, T data});
}

// End module pie
@anonymous
@JS()
abstract class Pie<T> {
  external List<pie_Arc<T>> call(List<T> data, [num index]);
  /*external Func2<T, num, num> value();*/
  /*external Pie<T> value(num accessor(T datum, num index));*/
  external Function /*Func2<T, num, num>|Pie<T>*/ value(
      [num accessor(T datum, num index)]);
  /*external Func2<T, T, num> sort();*/
  /*external Pie<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Pie<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external num|Func2<List<T>, num, num> startAngle();*/
  /*external Pie<T> startAngle(num angle);*/
  /*external Pie<T> startAngle(num angle(List<T> data, num index));*/
  external dynamic /*num|Func2<List<T>, num, num>|Pie<T>*/ startAngle(
      [dynamic /*num|Func2<List<T>, num, num>*/ angle]);
  /*external num|Func2<List<T>, num, num> endAngle();*/
  /*external Pie<T> endAngle(num angle);*/
  /*external Pie<T> endAngle(num angle(List<T> data, num index));*/
  external dynamic /*num|Func2<List<T>, num, num>|Pie<T>*/ endAngle(
      [dynamic /*num|Func2<List<T>, num, num>*/ angle]);
  /*external num|Func2<List<T>, num, num> padAngle();*/
  /*external Pie<T> padAngle(num angle);*/
  /*external Pie<T> padAngle(num angle(List<T> data, num index));*/
  external dynamic /*num|Func2<List<T>, num, num>|Pie<T>*/ padAngle(
      [dynamic /*num|Func2<List<T>, num, num>*/ angle]);
}

/*external Stack<List<Value>, Value> stack();*/
/*external Stack<List<Value>,Value> stack<Value>();*/
/*external Stack<Series,Value> stack<Series, Value>();*/
@JS("d3.layout.stack")
external Stack /*Stack<List<Value>,Value>|Stack<Series,Value>*/ stack/*<Value, Series>*/();

// Module stack
@anonymous
@JS()
abstract class Value {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get y0;
  external set y0(num v);
  external factory Value({num x, num y, num y0});
}

// End module stack
@anonymous
@JS()
abstract class Stack<Series, Value> {
  external List<Series> call(List<Series> layers, [num index]);
  /*external Func2<Series, num, List<Value>> values();*/
  /*external Stack<Series, Value> values(
    List<Value> accessor(Series layer, num index));*/
  external Function /*Func2<Series, num, List<Value>>|Stack<Series,Value>*/ values(
      [List<Value> accessor(Series layer, num index)]);
  /*external Func1<List<Tuple of <num,num>>, List<num>> offset();*/
  /*external Stack<Series,Value> offset('silhouette' offset);*/
  /*external Stack<Series,Value> offset('wiggle' offset);*/
  /*external Stack<Series,Value> offset('expand' offset);*/
  /*external Stack<Series,Value> offset('zero' offset);*/
  /*external Stack<Series, Value> offset(String offset);*/
  /*external Stack<Series,Value> offset(List<num> offset(List<Tuple of <num,num>> data));*/
  external Function /*Func1<List<Tuple of <num,num>>, List<num>>|Stack<Series,Value>*/ offset(
      [dynamic /*'silhouette'|'wiggle'|'expand'|'zero'|String|Func1<List<Tuple of <num,num>>, List<num>>*/ offset]);
  /*external Func1<List<Tuple of <num,num>>, List<num>> order();*/
  /*external Stack<Series,Value> order('inside-out' order);*/
  /*external Stack<Series,Value> order('reverse' order);*/
  /*external Stack<Series,Value> order('default' order);*/
  /*external Stack<Series, Value> order(String order);*/
  /*external Stack<Series,Value> order(List<num> order(List<Tuple of <num,num>> data));*/
  external Function /*Func1<List<Tuple of <num,num>>, List<num>>|Stack<Series,Value>*/ order(
      [dynamic /*'inside-out'|'reverse'|'default'|String|Func1<List<Tuple of <num,num>>, List<num>>*/ order]);
  /*external Func2<Value, num, num> x();*/
  /*external Stack<Series, Value> x(num accessor(Value value, num index));*/
  external Function /*Func2<Value, num, num>|Stack<Series,Value>*/ x(
      [num accessor(Value value, num index)]);
  /*external Func2<Value, num, num> y();*/
  /*external Stack<Series, Value> y(num accesor(Value value, num index));*/
  external Function /*Func2<Value, num, num>|Stack<Series,Value>*/ y(
      [num accesor(Value value, num index)]);
  /*external VoidFunc3<Value, num, num> out();*/
  /*external Stack<Series, Value> out(void setter(Value value, num y0, num y));*/
  external Function /*VoidFunc3<Value, num, num>|Stack<Series,Value>*/ out(
      [void setter(Value value, num y0, num y)]);
}

/*external Tree<tree_Node> tree();*/
/*external Tree<T> tree<T extends tree_Node>();*/
@JS("d3.layout.tree")
external Tree /*Tree<tree_Node>|Tree<T>*/ tree/*<T extends tree_Node>*/();

// Module tree
@anonymous
@JS()
abstract class tree_Link<T extends tree_Node> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory tree_Link({T source, T target});
}

@anonymous
@JS()
abstract class tree_Node {
  external tree_Node get parent;
  external set parent(tree_Node v);
  external List<tree_Node> get children;
  external set children(List<tree_Node> v);
  external num get depth;
  external set depth(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory tree_Node(
      {tree_Node parent, List<tree_Node> children, num depth, num x, num y});
}

// End module tree
@anonymous
@JS()
abstract class Tree<T> {
  external List<T> call(T root, [num index]);
  external List<T> nodes(T root, [num index]);
  external List<tree_Link<T>> links(List<T> nodes);
  /*external Func2<T, num, List<T>> children();*/
  /*external Tree<T> children(List<T> children(T datum, num index));*/
  external Function /*Func2<T, num, List<T>>|Tree<T>*/ children(
      [List<T> children(T datum, num index)]);
  /*external Func2<T, T, num> separation();*/
  /*external Tree<T> separation(num separation(T a, T b));*/
  external Function /*Func2<T, T, num>|Tree<T>*/ separation(
      [num separation(T a, T b)]);
  /*external Tuple of <num,num> size();*/
  /*external Tree<T> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Tree<T>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Tuple of <num,num> nodeSize();*/
  /*external Tree<T> nodeSize(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Tree<T>*/ nodeSize(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Func2<T, T, num> sort();*/
  /*external Tree<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Tree<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func2<T, num, num> value();*/
  /*external Tree<T> value(num value(T datum, num index));*/
  external Function /*Func2<T, num, num>|Tree<T>*/ value(
      [num value(T datum, num index)]);
}

/*external Treemap<treemap_Node> treemap();*/
/*external Treemap<T> treemap<T extends treemap_Node>();*/
@JS("d3.layout.treemap")
external Treemap /*Treemap<treemap_Node>|Treemap<T>*/ treemap/*<T extends treemap_Node>*/();

// Module treemap
@anonymous
@JS()
abstract class treemap_Node {
  external treemap_Node get parent;
  external set parent(treemap_Node v);
  external List<treemap_Node> get children;
  external set children(List<treemap_Node> v);
  external num get value;
  external set value(num v);
  external num get depth;
  external set depth(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get dx;
  external set dx(num v);
  external num get dy;
  external set dy(num v);
  external factory treemap_Node(
      {treemap_Node parent,
      List<treemap_Node> children,
      num value,
      num depth,
      num x,
      num y,
      num dx,
      num dy});
}

@anonymous
@JS()
abstract class treemap_Link<T extends treemap_Node> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory treemap_Link({T source, T target});
}

/*type Padding = number | [number, number, number, number];*/

// End module treemap
@anonymous
@JS()
abstract class Treemap<T extends treemap_Node> {
  external List<T> call(T root, [num index]);
  external List<T> nodes(T root, [num index]);
  external List<treemap_Link<T>> links(List<T> nodes);
  /*external Func2<T, num, List<T>> children();*/
  /*external Treemap<T> children(List<T> children(T node, num depth));*/
  external Function /*Func2<T, num, List<T>>|Treemap<T>*/ children(
      [List<T> children(T node, num depth)]);
  /*external Func2<T, T, num> sort();*/
  /*external Treemap<T> sort(num comparator(T a, T b));*/
  external Function /*Func2<T, T, num>|Treemap<T>*/ sort(
      [num comparator(T a, T b)]);
  /*external Func2<T, num, num> value();*/
  /*external Treemap<T> value(num value(T node, num index));*/
  external Function /*Func2<T, num, num>|Treemap<T>*/ value(
      [num value(T node, num index)]);
  /*external Tuple of <num,num> size();*/
  /*external Treemap<T> size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|Treemap<T>*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Func2<T, num, num|Tuple of <num,num,num,num>> padding();*/
  /*external Treemap<T> padding(num|Tuple of <num,num,num,num> padding);*/
  /*external Treemap<T> padding(num|Tuple of <num,num,num,num> padding(T node, num depth));*/
  external Function /*Func2<T, num, num|Tuple of <num,num,num,num>>|Treemap<T>*/ padding(
      [dynamic /*num|Tuple of <num,num,num,num>|Func2<T, num, num|Tuple of <num,num,num,num>>*/ padding]);
  /*external bool round();*/
  /*external Treemap<T> round(bool round);*/
  external dynamic /*bool|Treemap<T>*/ round([bool round]);
  /*external bool sticky();*/
  /*external bool sticky(bool sticky);*/
  external bool sticky([bool sticky]);
  /*external String mode();*/
  /*external Treemap<T> mode('squarify' mode);*/
  /*external Treemap<T> mode('slice' mode);*/
  /*external Treemap<T> mode('dice' mode);*/
  /*external Treemap<T> mode('slice-dice' mode);*/
  /*external Treemap<T> mode(String mode);*/
  external dynamic /*String|Treemap<T>*/ mode(
      [String /*'squarify'|'slice'|'dice'|'slice-dice'|String*/ mode]);
  /*external num ratio();*/
  /*external Treemap<T> ratio(num ratio);*/
  external dynamic /*num|Treemap<T>*/ ratio([num ratio]);
}

// End module layout

// Module geom
/*external Voronoi<Tuple of <num,num>> voronoi();*/
/*external Voronoi<T> voronoi<T>();*/
@JS("d3.geom.voronoi")
external Voronoi /*Voronoi<Tuple of <num,num>>|Voronoi<T>*/ voronoi/*<T>*/();

// Module voronoi
@anonymous
@JS()
abstract class voronoi_Link<T> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory voronoi_Link({T source, T target});
}

// End module voronoi
@anonymous
@JS()
abstract class Voronoi<T> {
  external List<List<num> /*Tuple of <num,num>*/ > call(List<T> data);
  /*external Func1<T, num> x();*/
  /*external Voronoi<T> x(num x(T vertex));*/
  external Function /*Func1<T, num>|Voronoi<T>*/ x([num x(T vertex)]);
  /*external Func1<T, num> y();*/
  /*external Voronoi<T> y(num y(T vertex));*/
  external Function /*Func1<T, num>|Voronoi<T>*/ y([num y(T vertex)]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> clipExtent();*/
  /*external Voronoi<T> clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Voronoi<T>*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  external List<voronoi_Link<T>> links(List<T> data);
  external List<List<T> /*Tuple of <T,T,T>*/ > triangles(List<T> data);
}

/// use d3.geom.voronoi().triangles() instead
@JS("d3.geom.delaunay")
external List<
        List<
            List<
                num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>,Tuple of <num,num>>*/ >
    delaunay(List<List<num> /*Tuple of <num,num>*/ > vertices);
/*external Quadtree<Tuple of <num,num>> quadtree();*/
/*external quadtree_Quadtree<T> quadtree<T>(List<T> nodes, [num x1, num y1, num x2, num y2]);*/
@JS("d3.geom.quadtree")
external dynamic /*Quadtree<Tuple of <num,num>>|quadtree_Quadtree<T>*/ quadtree/*<T>*/(
    [List<dynamic/*=T*/ > nodes, num x1, num y1, num x2, num y2]);

// Module quadtree
@anonymous
@JS()
abstract class quadtree_Node<T> {
  external List<
      quadtree_Node<
          T>> /*Tuple of <quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>>*/ get nodes;
  external set nodes(
      List<
          quadtree_Node<
              T>> /*Tuple of <quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>>*/ v);
  external bool get leaf;
  external set leaf(bool v);
  external T get point;
  external set point(T v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory quadtree_Node(
      {List<
          quadtree_Node<
              T>> /*Tuple of <quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>,quadtree_Node<T>>*/ nodes,
      bool leaf,
      T point,
      num x,
      num y});
}

@anonymous
@JS()
abstract class quadtree_Quadtree<T> implements quadtree_Node<T> {
  external void add(T point);
  external void visit(
      dynamic /*bool|Null*/ callback(
          quadtree_Node<T> node, num x1, num y1, num x2, num y2));
  external T find(List<num> /*Tuple of <num,num>*/ point);
}

// End module quadtree
@anonymous
@JS()
abstract class Quadtree<T> {
  external quadtree_Quadtree<T> call(List<T> points);
  /*external Func2<T, num, num> x();*/
  /*external Quadtree<T> x(num x);*/
  /*external Quadtree<T> x(num x(T datum, num index));*/
  external Function /*Func2<T, num, num>|Quadtree<T>*/ x(
      [dynamic /*num|Func2<T, num, num>*/ x]);
  /*external Func2<T, num, num> y();*/
  /*external Quadtree<T> y(num y);*/
  /*external Quadtree<T> y(num y(T datum, num index));*/
  external Function /*Func2<T, num, num>|Quadtree<T>*/ y(
      [dynamic /*num|Func2<T, num, num>*/ y]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external Quadtree<T> extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Quadtree<T>*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
}

/*external List<Tuple of <num,num>> hull(List<Tuple of <num,num>> vertices);*/
/*external Hull<Tuple of <num,num>> hull();*/
/*external Hull<T> hull<T>();*/
@JS("d3.geom.hull")
external dynamic /*List<Tuple of <num,num>>|Hull<Tuple of <num,num>>|Hull<T>*/ hull/*<T>*/(
    [List<List<num> /*Tuple of <num,num>*/ > vertices]);

@anonymous
@JS()
abstract class Hull<T> {
  external List<List<num> /*Tuple of <num,num>*/ > call(List<T> vertices);
  /*external Func1<T, num> x();*/
  /*external Hull<T> x(num x(T datum));*/
  external Function /*Func1<T, num>|Hull<T>*/ x([num x(T datum)]);
  /*external Func1<T, num> y();*/
  /*external Hull<T> y(num y(T datum));*/
  external Function /*Func1<T, num>|Hull<T>*/ y([num y(T datum)]);
}

@JS("d3.geom.polygon")
external Polygon polygon(List<List<num> /*Tuple of <num,num>*/ > vertices);

@anonymous
@JS()
abstract class Polygon {
  external num area();
  external List<num> /*Tuple of <num,num>*/ centroid();
  external List<List<num> /*Tuple of <num,num>*/ > clip(
      List<List<num> /*Tuple of <num,num>*/ > subject);
}

// End module geom

// End module d3

/// we need this to exist
@anonymous
@JS()
abstract class TouchList {}

