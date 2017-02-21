@JS()
library node_modules._types.d3_quadtree;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-quadtree module v1.0.1
/// Project: https://github.com/d3/d3-quadtree/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Leaf node of the quadtree.
@anonymous
@JS()
abstract class QuadtreeLeaf<T> {
  external T get data;
  external set data(T v);
  external QuadtreeLeaf<T> get next;
  external set next(QuadtreeLeaf<T> v);
  external factory QuadtreeLeaf({T data, QuadtreeLeaf<T> next});
}

/// Internal nodes of the quadtree are represented as four-element arrays in left-to-right, top-to-bottom order:
/// 0 - the top-left quadrant, if any.
/// 1 - the top-right quadrant, if any.
/// 2 - the bottom-left quadrant, if any.
/// 3 - the bottom-right quadrant, if any.
/// A child quadrant may be undefined if it is empty.
@anonymous
@JS()
abstract class QuadtreeInternalNode<T>
    implements
        List<dynamic /*QuadtreeInternalNode<T>|QuadtreeLeaf<T>|dynamic*/ > {}

@anonymous
@JS()
abstract class Quadtree<T> {
  /*external Func1<T, num> x();*/
  /*external Quadtree x(num x(T d));*/
  external dynamic /*Func1<T, num>|Quadtree*/ x([num x(T d)]);
  /*external Func1<T, num> y();*/
  /*external Quadtree y(num y(T d));*/
  external dynamic /*Func1<T, num>|Quadtree*/ y([num y(T d)]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|dynamic extent();*/
  /*external Quadtree extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extend);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|dynamic|Quadtree*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extend]);
  external Quadtree cover(num x, num y);
  external Quadtree add(T datum);
  external Quadtree addAll(List<T> data);
  external Quadtree remove(T datum);
  external Quadtree removeAll(List<T> data);
  external Quadtree<T> copy();
  external dynamic /*QuadtreeInternalNode<T>|QuadtreeLeaf<T>*/ root();
  external List<T> data();
  external num size();
  external dynamic /*T|dynamic*/ find(num x, num y, [num radius]);
  external Quadtree visit(
      dynamic /*Null|bool*/ callback(
          dynamic /*QuadtreeInternalNode<T>|QuadtreeLeaf<T>*/ node,
          num x0,
          num y0,
          num x1,
          num y1));
  external Quadtree visitAfter(
      void callback(dynamic /*QuadtreeInternalNode<T>|QuadtreeLeaf<T>*/ node,
          num x0, num y0, num x1, num y1));
}

/*external Quadtree<Tuple of <num,num>> quadtree();*/
/*external Quadtree<Tuple of <num,num>> quadtree(List<Tuple of <num,num>> data);*/
/*external Quadtree<T> quadtree<T>();*/
/*external Quadtree<T> quadtree<T>(List<T> data, [num x(T d), num y(T d)]);*/
@JS()
external Quadtree /*Quadtree<Tuple of <num,num>>|Quadtree<T>*/ quadtree/*<T>*/(
    [List /*List<Tuple of <num,num>>|List<T>*/ data,
    num x(dynamic/*=T*/ d),
    num y(dynamic/*=T*/ d)]);

