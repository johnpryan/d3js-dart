@JS()
library node_modules._types.d3_collection;

import "package:js/js.dart";

/// Type definitions for D3JS d3-collection module v1.0.1
/// Project: https://github.com/d3/d3-collection/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Reference type things that can be coerced to string implicitely
@anonymous
@JS()
abstract class Stringifiable {
  @JS()
  external String toString();
}

/// ---------------------------------------------------------------------
/// Objects
/// ---------------------------------------------------------------------
/*external List<String> keys(JSMap of <String,dynamic> object);*/
/*external List<String> keys(Object object);*/
@JS()
external List<String> keys(dynamic /*JSMap of <String,dynamic>|Object*/ object);
/*external List<T> values<T>(JSMap of <String,T> object);*/
/*external List<dynamic> values(Object object);*/
@JS()
external List<dynamic> /*List<T>|List<dynamic>*/ values/*<T>*/(
    dynamic /*JSMap of <String,T>|Object*/ object);
/*external List<{ key: string, value: T }> entries<T>(JSMap of <String,T> object);*/
/*external List<{ key: string, value: any }> entries(Object object);*/
@JS()
external List<dynamic> /*List<{ key: string, value: T }>|List<{ key: string, value: any }>*/ entries/*<T>*/(
    dynamic /*JSMap of <String,T>|Object*/ object);

/// ---------------------------------------------------------------------
/// map / Map
/// ---------------------------------------------------------------------
@anonymous
@JS()
abstract class Map<T> {
  external bool has(String key);
  external dynamic /*T|dynamic*/ JS$get(String key);
  external Map JS$set(String key, T value);
  external bool remove(String key);
  external void clear();
  external List<String> keys();
  external List<T> values();
  external List<dynamic /*{ key: string, value: T }*/ > entries();
  external void each(void func(T value, String key, Map<T> map));
  external bool empty();
  external num size();
}

/*external Map<T> map<T>();*/
/*external Map<T> map<T>(Map<T> d3Map);*/
/*external Map<T> map<T>(JSMap of <String,T> object);*/
/*external Map<T> map<T>(JSMap of <num,T> object);*/
/*external Map<T> map<T>(List<T> array, [String key(T value, [num i, List<T> array])]);*/
/*external Map<dynamic> map(Object object);*/
@JS()
external Map<dynamic> /*Map<T>|Map<dynamic>*/ map/*<T>*/(
    [dynamic /*Map<T>|JSMap of <String,T>|JSMap of <num,T>|List<T>|Object*/ d3Map_object_array,
    String key(dynamic/*=T*/ value, [num i, List<dynamic/*=T*/ > array])]);

/// ---------------------------------------------------------------------
/// set / Set
/// ---------------------------------------------------------------------
@anonymous
@JS()
abstract class Set {
  external bool has(String /*String|Stringifiable*/ value);
  external Set add(String /*String|Stringifiable*/ value);
  external bool remove(String /*String|Stringifiable*/ value);
  external void clear();
  external List<String> values();

  /// The first and second parameter of the function are both passed
  /// the 'value' of the set entry for consistency with map.each(...)
  /// signature
  external void each(void func(String value, String valueRepeat, Set JS$set));
  external bool empty();
  external num size();
}

/*external Set JS$set();*/
/*external Set JS$set(Set d3Set);*/
/*external Set JS$set(List<String|Stringifiable> array);*/
/*external Set JS$set<T>(List<T> array, String key(T value, [num index, List<T> array]));*/
@JS()
external Set JS$set/*<T>*/(
    [dynamic /*Set|List<String|Stringifiable>|List<T>*/ d3Set_array,
    String key(dynamic/*=T*/ value, [num index, List<dynamic/*=T*/ > array])]);

/// ---------------------------------------------------------------------
/// nest / Nest
/// ---------------------------------------------------------------------
/// NB: the following three interfaces NestedArray, NestedMap and NestedObject provide a more formal definitions
/// of the return values provided by Nest.entries(...), Nest.map(...) and Nest.object(...), respectively. However,
/// the union types cannot be ex ante simplified without knowledge of the nesting level (number of key(...) operations)
/// and whether the data were rolled-up. The latter question also determins whether NestedArray has the 'values' property
/// with an array of type Datum at leaf level, or has a rolled-up 'value' property.
/// The interfaces are not used as return types, as they are cumbersome to work with on the consuming side (Determining the
/// applicable type from the respective union, i. p. for array elements).
/// It is preferable to carefully define appropriate use-case-specific interfaces for the variables that
/// are assigned the return values of the Nest.entries(...), Nest.map(...) and Nest.object(...) operations. The downside
/// is an overly permissive return type.
/// Also note, that the below return types for Nest.entries(...), Nest.map(...) and Nest.object(...) strictly only work,
/// if AT LEAST ONE KEY was set. This seems a reasonable constraint in practice, given the intent of the nest operator.
/// Otherwise, an additional '| Array<Datum> | RollupType` would have to be added to the union type. This would cover
/// cases (a) without key or rollup (b) without key but with rollup. However, again, the union types make it cumbersome
/// without much gain.
@anonymous
@JS()
abstract class NestedArray<Datum, RollupType>
    implements
        List<
            dynamic /*{ key: string, values: NestedArray<Datum, RollupType> | Array<Datum> | undefined, value: RollupType | undefined }*/ > {
}

@anonymous
@JS()
abstract class NestedMap<Datum, RollupType>
    implements
        Map<dynamic /*NestedMap<Datum,RollupType>|List<Datum>|RollupType*/ > {}

@anonymous
@JS()
abstract class NestedObject<Datum, RollupType> {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Nest<Datum, RollupType> {
  external Nest key(String func(Datum datum));
  external Nest sortKeys(num comparator(String a, String b));
  external Nest sortValues(num comparator(Datum a, Datum b));
  external Nest rollup(RollupType func(List<Datum> values));
  external Map<dynamic> map(List<Datum> array);
  external dynamic /*JSMap of <String,dynamic>*/ object(List<Datum> array);
  external List<
          dynamic /*{ key: string; values: any; value: RollupType | undefined }*/ >
      entries(List<Datum> array);
}

/*external Nest<Datum,dynamic> nest<Datum>();*/
/*external Nest<Datum,RollupType> nest<Datum, RollupType>();*/
@JS()
external Nest<dynamic,
    dynamic> /*Nest<Datum,dynamic>|Nest<Datum,RollupType>*/ nest/*<Datum, RollupType>*/();

