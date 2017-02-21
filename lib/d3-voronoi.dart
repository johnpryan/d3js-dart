@JS()
library node_modules._types.d3_voronoi;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-voronoi module v1.1.0
/// Project: https://github.com/d3/d3-voronoi/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------
/// The VoronoiPoint interface is defined as a cue that the array is strictly of type [number, number] with two elements
/// for x and y coordinates. However, it is used as a base for interface definitions, and [number, number]
/// cannot be extended.
@anonymous
@JS()
abstract class VoronoiPoint implements List<num> {
  external num get JS$0;
  external set JS$0(num v);
  external num get JS$1;
  external set JS$1(num v);
}

/// The VoronoiPointPair interface is defined as a cue that the array is strictly of type [[number, number], [number, number]] with two elements, one
/// for each point containing the respective x and y coordinates. However, it is used as a base for interface definitions, and
/// [[number, number], [number, number]] cannot be extended.
@anonymous
@JS()
abstract class VoronoiPointPair
    implements List<List<num> /*Tuple of <num,num>*/ > {
  external List<num> /*Tuple of <num,num>*/ get JS$0;
  external set JS$0(List<num> /*Tuple of <num,num>*/ v);
  external List<num> /*Tuple of <num,num>*/ get JS$1;
  external set JS$1(List<num> /*Tuple of <num,num>*/ v);
}

/// A Voronoi Polygon is represented as an array of points [x, y] where x and y are the point coordinates, and a data field that refers to the corresponding element in data.
/// Polygons are open: they do not contain a closing point that duplicates the first point; a triangle, for example, is an array of three points.
/// Polygons are also counterclockwise, assuming the origin ⟨0,0⟩ is in the top-left corner.
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiPolygon<T>
    implements List<List<num> /*Tuple of <num,num>*/ > {
  /// The input data corresponding to this Voronoi polygon.
  external T get data;
  external set data(T v);
}

/// Voronoi Triangle is a three-element array of elements from data.
/// The generic refers to the type of the data for the corresponding element.
/*export type VoronoiTriangle<T> = [T, T, T];*/
/// A Voronoi Site in the diagram is an array [x, y] with two additional properties:
/// index and data.
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiSite<T> implements VoronoiPoint {
  /// The Voronoi Site’s index, corresponding to the associated input point.
  external num get index;
  external set index(num v);

  /// The input data corresponding to this site.
  external T get data;
  external set data(T v);
}

/// A Voronoi Cell in the diagram is an object with the following properties:
/// site and halfEdges
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiCell<T> {
  /// The Voronoi Site of the cell’s associated input point.
  external VoronoiSite<T> get site;
  external set site(VoronoiSite<T> v);

  /// An array of indexes into diagram.edges representing the cell’s polygon.
  external List<num> get halfEdges;
  external set halfEdges(List<num> v);
  external factory VoronoiCell({VoronoiSite<T> site, List<num> halfEdges});
}

/// Voronoi Edge in the diagram is an array [[x0, y0], [x1, y1]] with two additional properties:
/// left and right.
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiEdge<T> implements VoronoiPointPair {
  /// The Voronoi site on the left side of the edge.
  external VoronoiSite<T> get left;
  external set left(VoronoiSite<T> v);

  /// The Voronoi site on the right side of the edge. null for a clipped border edge.
  external VoronoiSite<T> /*VoronoiSite<T>|Null*/ get right;
  external set right(VoronoiSite<T> /*VoronoiSite<T>|Null*/ v);
}

/// Voronoi Link for an edge in the mesh created by the Delaunay triangulation of the specified data array.
/// Each link has the following attributes: source and target.
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiLink<T> {
  /// The source node, an element in data.
  external T get source;
  external set source(T v);

  /// The target node, an element in data.
  external T get target;
  external set target(T v);
  external factory VoronoiLink({T source, T target});
}

/// A Voronoi Layout.
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiLayout<T> {
  /// Computes the Voronoi diagram for the specified data points.
  external VoronoiDiagram<T> call(List<T> data);

  /// Return the current x-coordinate accessor,
  /// which defaults to accessing the first element of an array (i.e. at index 0).
  /*external Func1<T, num> x();*/
  /// Set the x-coordinate accessor and return the layout.
  /// numeric value for the x-coordinate.
  /*external VoronoiLayout x(num x(T d));*/
  external dynamic /*Func1<T, num>|VoronoiLayout*/ x([num x(T d)]);

  /// Return the current y-coordinate accessor,
  /// which defaults to accessing the second element of an array (i.e. at index 1).
  /*external Func1<T, num> y();*/
  /// Set the y-coordinate accessor and return the layout.
  /// numeric value for the y-coordinate.
  /*external VoronoiLayout y(num y(T d));*/
  external dynamic /*Func1<T, num>|VoronoiLayout*/ y([num y(T d)]);

  /// Returns the current clip extent which defaults to null.
  /// The extent bounds are specified as an array [[x0, y0], [x1, y1]],
  /// where x0 is the left side of the extent, y0 is the top,
  /// x1 is the right and y1 is the bottom.
  /// A clip extent is required when using voronoi.polygons.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Null extent();*/
  /// Set the clip extent of the Voronoi layout to the specified bounds and return the layout.
  /// A clip extent is required when using voronoi.polygons.
  /// where x0 is the left side of the extent, y0 is the top, x1 is the right and y1 is the bottom.
  /*external VoronoiLayout extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|VoronoiLayout*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Get the clip size of the Voronoi layout. Size is an alias for voronoi.extent
  /// where the minimum x and y of the extent are ⟨0,0⟩.
  /*external Tuple of <num,num>|Null size();*/
  /// Set the clip size and return the layout.
  /// Size is an alias for voronoi.extent where the minimum x and y of the extent are ⟨0,0⟩.
  /// where the minimum x and y of the extent are ⟨0,0⟩.
  /*external VoronoiLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|VoronoiLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);

  /// Return an array of polygons clipped to the extent, one for each input point in the specified data points,
  /// corresponding to the cells in the computed Voronoi diagram.
  /// Each polygon is represented as an array of points [x, y] where x and y are the point coordinates,
  /// and a data field that refers to the corresponding element in data.
  /// Polygons are open: they do not contain a closing point that duplicates the first point;
  /// a triangle, for example, is an array of three points. Polygons are also counterclockwise,
  /// assuming the origin ⟨0,0⟩ is in the top-left corner.
  /// If the cell’s site is coincident with an earlier site, the associated polygon is null.
  /// Important: Using polygon requires the extent to be set for the layout.
  external List<VoronoiPolygon<T>> polygons(List<T> data);

  /// Return the Delaunay triangulation of the specified data array as an array of triangles.
  /// Each triangle is a three-element array of elements from data.
  external List<List<T> /*Tuple of <T,T,T>*/ > triangles(List<T> data);

  /// Return the Delaunay triangulation of the specified data array as an array of links.
  /// Each link has source and target attributes referring to elements in data.
  external List<VoronoiLink<T>> links(List<T> data);
}

/// Computed Voronoi diagram
/// The generic refers to the type of the data for the corresponding element.
@anonymous
@JS()
abstract class VoronoiDiagram<T> {
  /// Array of Voronoi Edges
  external List<VoronoiEdge<T>> get edges;
  external set edges(List<VoronoiEdge<T>> v);

  /// Array of Voronoi Cells, one per input point; a cell may be null for a coincident point.
  external List<VoronoiCell<T> /*VoronoiCell<T>|Null*/ > get cells;
  external set cells(List<VoronoiCell<T> /*VoronoiCell<T>|Null*/ > v);

  /// Return an array of polygons clipped to the extent, one for each cell in the diagram.
  /// Each polygon is represented as an array of points [x, y] where x and y are the point coordinates,
  /// and a data field that refers to the corresponding element in data.
  /// Polygons are open: they do not contain a closing point that duplicates the first point;
  /// a triangle, for example, is an array of three points. Polygons are also counterclockwise,
  /// assuming the origin ⟨0,0⟩ is in the top-left corner.
  /// If the cell’s site is coincident with an earlier site, the associated polygon is null.
  external List<VoronoiPolygon<T>> polygons();

  /// Returns the Delaunay triangulation of the specified data array as an array of triangles.
  /// Each triangle is a three-element array of elements from data.
  /// Since the triangulation is computed as the dual of the Voronoi diagram, and the Voronoi diagram is clipped by the extent,
  /// a subset of the Delaunay triangulation is returned.
  external List<List<T> /*Tuple of <T,T,T>*/ > triangles();

  /// Returns the Delaunay triangulation of the specified data array as an array of links, one for each edge in the mesh.
  /// Each link has the following attributes:
  /// - source (the source node, an element in data)
  /// - target (the target node, an element in data)
  /// Since the triangulation is computed as the dual of the Voronoi diagram, and the Voronoi diagram is clipped by the extent, a subset of the Delaunay links is returned.
  external List<VoronoiLink<T>> links();

  /// Return the nearest Voronoi Site to point [x, y]. If radius is specified, only sites within radius distance are considered.
  /// If no Voronoi Site can be found (within the specified radius), null is returned.
  external VoronoiSite<T> /*VoronoiSite<T>|Null*/ find(num x, num y,
      [num radius]);
}

/// --------------------------------------------------------------------------
/// voronoi Export
/// --------------------------------------------------------------------------
/// Creates a new Voronoi layout with default x- and y- accessors and a null extent.
/// Without specifying a generic the layout is assumed to be based on data represented
/// by a two-dimensional coordinate [number, number] for x- and y-coordinate, respectively.
/*external VoronoiLayout<Tuple of <num,num>> voronoi();*/
/// Creates a new Voronoi layout with default x- and y- accessors and a null extent.
/// x- and y-accessors may have to be set to correspond to the data type provided by the
/// generic.
/// The generic refers to the type of the data for the corresponding element.
/*external VoronoiLayout<T> voronoi<T>();*/
@JS()
external VoronoiLayout /*VoronoiLayout<Tuple of <num,num>>|VoronoiLayout<T>*/ voronoi/*<T>*/();

