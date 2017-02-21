@JS()
library node_modules._types.d3_hierarchy;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-hierarchy module 1.1
/// Project: https://github.com/d3/d3-hierarchy/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.1.1
/// -----------------------------------------------------------------------
/// Hierarchy
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class HierarchyLink<Datum> {
  external HierarchyNode<Datum> get source;
  external set source(HierarchyNode<Datum> v);
  external HierarchyNode<Datum> get target;
  external set target(HierarchyNode<Datum> v);
  external factory HierarchyLink(
      {HierarchyNode<Datum> source, HierarchyNode<Datum> target});
}

@anonymous
@JS()
abstract class HierarchyNode<Datum> {
  external Datum get data;
  external set data(Datum v);
  external num get depth;
  external set depth(num v);
  external num get height;
  external set height(num v);
  external HierarchyNode<Datum> /*HierarchyNode<Datum>|Null*/ get parent;
  external set parent(HierarchyNode<Datum> /*HierarchyNode<Datum>|Null*/ v);
  external List<HierarchyNode<Datum>> get children;
  external set children(List<HierarchyNode<Datum>> v);

  /// Aggregated numeric value as calculated by sum(value) or count(),
  /// if previously invoked.
  external num get value;
  external set value(num v);

  /// Optional Node Id string set by StratifyOperator, if
  /// hierarchical data was created from tabular data using stratify()
  external String get id;
  external set id(String v);
  external List<HierarchyNode<Datum>> ancestors();
  external List<HierarchyNode<Datum>> descendants();
  external List<HierarchyNode<Datum>> leaves();
  external List<HierarchyNode<Datum>> path(HierarchyNode<Datum> target);
  external List<HierarchyLink<Datum>> links();
  external HierarchyNode sum(num value(Datum d));
  external HierarchyNode count();
  external HierarchyNode sort(
      num compare(HierarchyNode<Datum> a, HierarchyNode<Datum> b));
  external HierarchyNode each(void func(HierarchyNode<Datum> node));
  external HierarchyNode eachAfter(void func(HierarchyNode<Datum> node));
  external HierarchyNode eachBefore(void func(HierarchyNode<Datum> node));
  external HierarchyNode<Datum> copy();
}

@JS()
external HierarchyNode<dynamic/*=Datum*/ > hierarchy/*<Datum>*/(
    dynamic/*=Datum*/ data,
    [List<dynamic> /*List<Datum>|Null*/ children(dynamic/*=Datum*/ d)]);

/// -----------------------------------------------------------------------
/// Stratify
/// -----------------------------------------------------------------------
/// TODO: Review the comment in the API documentation related to 'reserved properties': id, parentId, children. If this is refering to the element on node, it should be 'parent'?
@anonymous
@JS()
abstract class StratifyOperator<Datum> {
  external HierarchyNode<Datum> call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, String|Null|''|dynamic> id();*/
  /*external StratifyOperator id(String|Null|''|dynamic id(Datum d, [num i, List<Datum> data]));*/
  external dynamic /*Func3<Datum, num, List<Datum>, String|Null|''|dynamic>|StratifyOperator*/ id(
      [dynamic /*String|Null|''|dynamic*/ id(Datum d,
          [num i, List<Datum> data])]);
  /*external Func3<Datum, num, List<Datum>, String|Null|''|dynamic> parentId();*/
  /*external StratifyOperator parentId(String|Null|''|dynamic parentId(Datum d, [num i, List<Datum> data]));*/
  external dynamic /*Func3<Datum, num, List<Datum>, String|Null|''|dynamic>|StratifyOperator*/ parentId(
      [dynamic /*String|Null|''|dynamic*/ parentId(Datum d,
          [num i, List<Datum> data])]);
}

@JS()
external StratifyOperator<dynamic/*=Datum*/ > stratify/*<Datum>*/();

/// -----------------------------------------------------------------------
/// Cluster
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class HierarchyPointLink<Datum> {
  external HierarchyPointNode<Datum> get source;
  external set source(HierarchyPointNode<Datum> v);
  external HierarchyPointNode<Datum> get target;
  external set target(HierarchyPointNode<Datum> v);
  external factory HierarchyPointLink(
      {HierarchyPointNode<Datum> source, HierarchyPointNode<Datum> target});
}

@anonymous
@JS()
abstract class HierarchyPointNode<Datum> {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Datum get data;
  external set data(Datum v);
  external num get depth;
  external set depth(num v);
  external num get height;
  external set height(num v);
  external HierarchyPointNode<
      Datum> /*HierarchyPointNode<Datum>|Null*/ get parent;
  external set parent(
      HierarchyPointNode<Datum> /*HierarchyPointNode<Datum>|Null*/ v);
  external List<HierarchyPointNode<Datum>> get children;
  external set children(List<HierarchyPointNode<Datum>> v);

  /// Aggregated numeric value as calculated by sum(value) or count(),
  /// if previously invoked.
  external num get value;
  external set value(num v);

  /// Optional Node Id string set by StratifyOperator, if
  /// hierarchical data was created from tabular data using stratify()
  external String get id;
  external set id(String v);
  external List<HierarchyPointNode<Datum>> ancestors();
  external List<HierarchyPointNode<Datum>> descendants();
  external List<HierarchyPointNode<Datum>> leaves();
  external List<HierarchyPointNode<Datum>> path(
      HierarchyPointNode<Datum> target);
  external List<HierarchyPointLink<Datum>> links();
  external HierarchyPointNode sum(num value(Datum d));
  external HierarchyPointNode count();
  external HierarchyPointNode sort(
      num compare(HierarchyPointNode<Datum> a, HierarchyPointNode<Datum> b));
  external HierarchyPointNode each(void func(HierarchyPointNode<Datum> node));
  external HierarchyPointNode eachAfter(
      void func(HierarchyPointNode<Datum> node));
  external HierarchyPointNode eachBefore(
      void func(HierarchyPointNode<Datum> node));
  external HierarchyPointNode<Datum> copy();
}

@anonymous
@JS()
abstract class ClusterLayout<Datum> {
  external HierarchyPointNode<Datum> call(HierarchyNode<Datum> root);
  /*external Tuple of <num,num>|Null size();*/
  /*external ClusterLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|ClusterLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Tuple of <num,num>|Null nodeSize();*/
  /*external ClusterLayout nodeSize(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|ClusterLayout*/ nodeSize(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Func2<HierarchyPointNode<Datum>, HierarchyPointNode<Datum>, num>
    separation();*/
  /*external ClusterLayout separation(
    num separation(HierarchyPointNode<Datum> a, HierarchyPointNode<Datum> b));*/
  external dynamic /*Func2<HierarchyPointNode<Datum>, HierarchyPointNode<Datum>, num>|ClusterLayout*/ separation(
      [num separation(
          HierarchyPointNode<Datum> a, HierarchyPointNode<Datum> b)]);
}

@JS()
external ClusterLayout<dynamic/*=Datum*/ > cluster/*<Datum>*/();

/// -----------------------------------------------------------------------
/// Tree
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class TreeLayout<Datum> {
  external HierarchyPointNode<Datum> call(HierarchyNode<Datum> root);
  /*external Tuple of <num,num>|Null size();*/
  /*external TreeLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|TreeLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Tuple of <num,num>|Null nodeSize();*/
  /*external TreeLayout nodeSize(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|TreeLayout*/ nodeSize(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Func2<HierarchyPointNode<Datum>, HierarchyPointNode<Datum>, num>
    separation();*/
  /*external TreeLayout separation(
    num separation(HierarchyPointNode<Datum> a, HierarchyPointNode<Datum> b));*/
  external dynamic /*Func2<HierarchyPointNode<Datum>, HierarchyPointNode<Datum>, num>|TreeLayout*/ separation(
      [num separation(
          HierarchyPointNode<Datum> a, HierarchyPointNode<Datum> b)]);
}

@JS()
external TreeLayout<dynamic/*=Datum*/ > tree/*<Datum>*/();

/// -----------------------------------------------------------------------
/// Treemap
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class HierarchyRectangularLink<Datum> {
  external HierarchyRectangularNode<Datum> get source;
  external set source(HierarchyRectangularNode<Datum> v);
  external HierarchyRectangularNode<Datum> get target;
  external set target(HierarchyRectangularNode<Datum> v);
  external factory HierarchyRectangularLink(
      {HierarchyRectangularNode<Datum> source,
      HierarchyRectangularNode<Datum> target});
}

@anonymous
@JS()
abstract class HierarchyRectangularNode<Datum> {
  external num get x0;
  external set x0(num v);
  external num get y0;
  external set y0(num v);
  external num get x1;
  external set x1(num v);
  external num get y1;
  external set y1(num v);
  external Datum get data;
  external set data(Datum v);
  external num get depth;
  external set depth(num v);
  external num get height;
  external set height(num v);
  external HierarchyRectangularNode<
      Datum> /*HierarchyRectangularNode<Datum>|Null*/ get parent;
  external set parent(
      HierarchyRectangularNode<
          Datum> /*HierarchyRectangularNode<Datum>|Null*/ v);
  external List<HierarchyRectangularNode<Datum>> get children;
  external set children(List<HierarchyRectangularNode<Datum>> v);

  /// Aggregated numeric value as calculated by sum(value) or count(),
  /// if previously invoked.
  external num get value;
  external set value(num v);

  /// Optional Node Id string set by StratifyOperator, if
  /// hierarchical data was created from tabular data using stratify()
  external String get id;
  external set id(String v);
  external List<HierarchyRectangularNode<Datum>> ancestors();
  external List<HierarchyRectangularNode<Datum>> descendants();
  external List<HierarchyRectangularNode<Datum>> leaves();
  external List<HierarchyRectangularNode<Datum>> path(
      HierarchyRectangularNode<Datum> target);
  external List<HierarchyRectangularLink<Datum>> links();
  external HierarchyRectangularNode sum(num value(Datum d));
  external HierarchyRectangularNode count();
  external HierarchyRectangularNode sort(
      num compare(HierarchyRectangularNode<Datum> a,
          HierarchyRectangularNode<Datum> b));
  external HierarchyRectangularNode each(
      void func(HierarchyRectangularNode<Datum> node));
  external HierarchyRectangularNode eachAfter(
      void func(HierarchyRectangularNode<Datum> node));
  external HierarchyRectangularNode eachBefore(
      void func(HierarchyRectangularNode<Datum> node));
  external HierarchyRectangularNode<Datum> copy();
}

@anonymous
@JS()
abstract class TreemapLayout<Datum> {
  external HierarchyRectangularNode<Datum> call(HierarchyNode<Datum> root);
  /*external (node: HierarchyRectangularNode<Datum>, x0: number, y0: number, x1: number, y1: number) => void tile();*/
  /*external TreemapLayout tile(
    void tile(
        HierarchyRectangularNode<Datum> node, num x0, num y0, num x1, num y1));*/
  external dynamic /*(node: HierarchyRectangularNode<Datum>, x0: number, y0: number, x1: number, y1: number) => void|TreemapLayout*/ tile(
      [void tile(HierarchyRectangularNode<Datum> node, num x0, num y0, num x1,
          num y1)]);
  /*external Tuple of <num,num> size();*/
  /*external TreemapLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|TreemapLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external bool round();*/
  /*external TreemapLayout round(bool round);*/
  external dynamic /*bool|TreemapLayout*/ round([bool round]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> padding();*/
  /*external TreemapLayout padding(num padding);*/
  /*external TreemapLayout padding(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ padding(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingInner();*/
  /*external TreemapLayout paddingInner(num padding);*/
  /*external TreemapLayout paddingInner(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingInner(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingOuter();*/
  /*external TreemapLayout paddingOuter(num padding);*/
  /*external TreemapLayout paddingOuter(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingOuter(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingTop();*/
  /*external TreemapLayout paddingTop(num padding);*/
  /*external TreemapLayout paddingTop(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingTop(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingRight();*/
  /*external TreemapLayout paddingRight(num padding);*/
  /*external TreemapLayout paddingRight(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingRight(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingBottom();*/
  /*external TreemapLayout paddingBottom(num padding);*/
  /*external TreemapLayout paddingBottom(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingBottom(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
  /*external Func1<HierarchyRectangularNode<Datum>, num> paddingLeft();*/
  /*external TreemapLayout paddingLeft(num padding);*/
  /*external TreemapLayout paddingLeft(
    num padding(HierarchyRectangularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyRectangularNode<Datum>, num>|TreemapLayout*/ paddingLeft(
      [dynamic /*num|Func1<HierarchyRectangularNode<Datum>, num>*/ padding]);
}

@JS()
external TreemapLayout<dynamic/*=Datum*/ > treemap/*<Datum>*/();

/// Tiling functions ---------------------------------------------------------------------------------
@JS()
external void treemapBinary(
    HierarchyRectangularNode<dynamic> node, num x0, num y0, num x1, num y1);
@JS()
external void treemapDice(
    HierarchyRectangularNode<dynamic> node, num x0, num y0, num x1, num y1);
@JS()
external void treemapSlice(
    HierarchyRectangularNode<dynamic> node, num x0, num y0, num x1, num y1);
@JS()
external void treemapSliceDice(
    HierarchyRectangularNode<dynamic> node, num x0, num y0, num x1, num y1);

/// TODO: Test Factory code
@anonymous
@JS()
abstract class RatioSquarifyTilingFactory {
  external void call(
      HierarchyRectangularNode<dynamic> node, num x0, num y0, num x1, num y1);
  external RatioSquarifyTilingFactory ratio(num ratio);
}

@JS()
external RatioSquarifyTilingFactory get treemapSquarify;
@JS()
external set treemapSquarify(RatioSquarifyTilingFactory v);
@JS()
external RatioSquarifyTilingFactory get treemapResquarify;
@JS()
external set treemapResquarify(RatioSquarifyTilingFactory v);

/// -----------------------------------------------------------------------
/// Partition
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class PartitionLayout<Datum> {
  external HierarchyRectangularNode<Datum> call(HierarchyNode<Datum> root);
  /*external Tuple of <num,num> size();*/
  /*external PartitionLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|PartitionLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external bool round();*/
  /*external PartitionLayout round(bool round);*/
  external dynamic /*bool|PartitionLayout*/ round([bool round]);
  /*external num padding();*/
  /*external PartitionLayout padding(num padding);*/
  external dynamic /*num|PartitionLayout*/ padding([num padding]);
}

@JS()
external PartitionLayout<dynamic/*=Datum*/ > partition/*<Datum>*/();

/// -----------------------------------------------------------------------
/// Pack
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class HierarchyCircularLink<Datum> {
  external HierarchyCircularNode<Datum> get source;
  external set source(HierarchyCircularNode<Datum> v);
  external HierarchyCircularNode<Datum> get target;
  external set target(HierarchyCircularNode<Datum> v);
  external factory HierarchyCircularLink(
      {HierarchyCircularNode<Datum> source,
      HierarchyCircularNode<Datum> target});
}

@anonymous
@JS()
abstract class HierarchyCircularNode<Datum> {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get r;
  external set r(num v);
  external Datum get data;
  external set data(Datum v);
  external num get depth;
  external set depth(num v);
  external num get height;
  external set height(num v);
  external HierarchyCircularNode<
      Datum> /*HierarchyCircularNode<Datum>|Null*/ get parent;
  external set parent(
      HierarchyCircularNode<Datum> /*HierarchyCircularNode<Datum>|Null*/ v);
  external List<HierarchyCircularNode<Datum>> get children;
  external set children(List<HierarchyCircularNode<Datum>> v);

  /// Aggregated numeric value as calculated by sum(value) or count(),
  /// if previously invoked.
  external num get value;
  external set value(num v);

  /// Optional Node Id string set by StratifyOperator, if
  /// hierarchical data was created from tabular data using stratify()
  external String get id;
  external set id(String v);
  external List<HierarchyCircularNode<Datum>> ancestors();
  external List<HierarchyCircularNode<Datum>> descendants();
  external List<HierarchyCircularNode<Datum>> leaves();
  external List<HierarchyCircularNode<Datum>> path(
      HierarchyCircularNode<Datum> target);
  external List<HierarchyCircularLink<Datum>> links();
  external HierarchyCircularNode sum(num value(Datum d));
  external HierarchyCircularNode count();
  external HierarchyCircularNode sort(
      num compare(
          HierarchyCircularNode<Datum> a, HierarchyCircularNode<Datum> b));
  external HierarchyCircularNode each(
      void func(HierarchyCircularNode<Datum> node));
  external HierarchyCircularNode eachAfter(
      void func(HierarchyCircularNode<Datum> node));
  external HierarchyCircularNode eachBefore(
      void func(HierarchyCircularNode<Datum> node));
  external HierarchyCircularNode<Datum> copy();
}

@anonymous
@JS()
abstract class PackLayout<Datum> {
  external HierarchyCircularNode<Datum> call(HierarchyNode<Datum> root);
  /*external Null|Func1<HierarchyCircularNode<Datum>, num> radius();*/
  /*external PackLayout radius(num radius(HierarchyCircularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyCircularNode<Datum>, num>|PackLayout*/ radius(
      [num radius(HierarchyCircularNode<Datum> node)]);
  /*external Tuple of <num,num> size();*/
  /*external PackLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|PackLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  /*external Func1<HierarchyCircularNode<Datum>, num> padding();*/
  /*external PackLayout padding(num padding);*/
  /*external PackLayout padding(num padding(HierarchyCircularNode<Datum> node));*/
  external dynamic /*Func1<HierarchyCircularNode<Datum>, num>|PackLayout*/ padding(
      [dynamic /*num|Func1<HierarchyCircularNode<Datum>, num>*/ padding]);
}

@JS()
external PackLayout<dynamic/*=Datum*/ > pack/*<Datum>*/();

/// -----------------------------------------------------------------------
/// Pack Siblings and Enclosure
/// -----------------------------------------------------------------------
@anonymous
@JS()
abstract class PackCircle {
  external num get r;
  external set r(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory PackCircle({num r, num x, num y});
}

/// TODO: Since packSiblings manipulates the circles array in place, technically the x and y properties
/// are optional on invocation, but will be created after execution for each entry.
/// For invocation of packEnclose the x and y coordinates are mandatory. It seems easier to just comment
/// on the mandatory nature, then to create separate interfaces and having to deal with recasting.
@JS()
external List<dynamic/*=Datum*/ > packSiblings/*<Datum extends PackCircle>*/(
    List<dynamic/*=Datum*/ > circles);
@JS()
external dynamic /*{ r: number, x: number, y: number }*/ packEnclose/*<Datum extends PackCircle>*/(
    List<dynamic/*=Datum*/ > circles);

