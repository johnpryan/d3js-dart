@JS()
library node_modules._types.d3_polygon;

import "package:js/js.dart";

/// Type definitions for D3JS d3-polygon module v1.0.1
/// Project: https://github.com/d3/d3-polygon/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Returns the signed area of the specified polygon. If the vertices of the polygon are in counterclockwise order (
/// assuming a coordinate system where the origin ⟨0,0⟩ is in the top-left corner), the returned area is positive;
/// otherwise it is negative, or zero.
@JS()
external num polygonArea(List<List<num> /*Tuple of <num,num>*/ > polygon);

/// Returns the centroid of the specified polygon.
@JS()
external List<num> /*Tuple of <num,num>*/ polygonCentroid(
    List<List<num> /*Tuple of <num,num>*/ > polygon);

/// Returns the convex hull of the specified points using Andrew’s monotone chain algorithm.
/// The returned hull is represented as an array containing a subset of the input points arranged in
/// counterclockwise order. Returns null if points has fewer than three elements.
@JS()
external List<List<num>> /*List<Tuple of <num,num>>|Null*/ polygonHull(
    List<List<num> /*Tuple of <num,num>*/ > points);

/// Returns true if and only if the specified point is inside the specified polygon.
@JS()
external bool polygonContains(List<List<num> /*Tuple of <num,num>*/ > polygon,
    List<num> /*Tuple of <num,num>*/ point);

/// Returns the length of the perimeter of the specified polygon.
@JS()
external num polygonLength(List<List<num> /*Tuple of <num,num>*/ > polygon);

