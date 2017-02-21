@JS()
library node_modules._types.d3_geo;

import "package:js/js.dart";
import "geojson.dart"
    show
        CoordinateReferenceSystem,
        GeoJsonObject,
        Polygon,
        MultiLineString,
        LineString;
import "package:func/func.dart";

/// Type definitions for D3JS d3-geo module v1.4.0
/// Project: https://github.com/d3/d3-geo/
/// Definitions by: Hugues Stefanski <https://github.com/Ledragon>, Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// <reference types="geojson" />
/// ----------------------------------------------------------------------
/// Shared Interfaces and Types
/// ----------------------------------------------------------------------
/// A basic geometry for a sphere, which is supported by d3-geo
/// beyond the GeoJSON geometries.
@anonymous
@JS()
abstract class GeoSphere {
  /// Sphere geometry type
  external String /*'Sphere'*/ get type;
  external set type(String /*'Sphere'*/ v);
  external factory GeoSphere({String /*'Sphere'*/ type});
}

/// Type Alias for GeoJSON Geometry Object and GeoSphere additional
/// geometry supported by d3-geo
/*export type GeoGeometryObjects = GeoJSON.GeometryObject | GeoSphere;*/
/// A GeoJSON-style GeometryCollection which supports GeoJSON geometry objects
/// and additionally GeoSphere
@anonymous
@JS()
abstract class ExtendedGeometryCollection<
    GeometryType extends dynamic /*DirectGeometryObject|GeometryCollection|GeoSphere*/ > {
  external String get type;
  external set type(String v);
  external List<num> get bbox;
  external set bbox(List<num> v);
  external CoordinateReferenceSystem get crs;
  external set crs(CoordinateReferenceSystem v);
  external List<GeometryType> get geometries;
  external set geometries(List<GeometryType> v);
  external factory ExtendedGeometryCollection(
      {String type,
      List<num> bbox,
      CoordinateReferenceSystem crs,
      List<GeometryType> geometries});
}

/// A GeoJSON-style Feature which support features built on GeoJSON GeometryObjects
/// or GeoSphere
@anonymous
@JS()
abstract class ExtendedFeature<
    GeometryType extends dynamic /*DirectGeometryObject|GeometryCollection|GeoSphere*/,
    Properties> implements GeoJsonObject {
  external GeometryType get geometry;
  external set geometry(GeometryType v);
  external Properties get properties;
  external set properties(Properties v);
  external String get id;
  external set id(String v);
  external factory ExtendedFeature(
      {GeometryType geometry,
      Properties properties,
      String id,
      String type,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// A GeoJSON-style FeatureCollection which supports GeoJSON features
/// and features built on GeoSphere
@anonymous
@JS()
abstract class ExtendedFeatureCollection<
    FeatureType extends ExtendedFeature<
        dynamic /*DirectGeometryObject|GeometryCollection|GeoSphere*/,
        dynamic>> implements GeoJsonObject {
  external List<FeatureType> get features;
  external set features(List<FeatureType> v);
  external factory ExtendedFeatureCollection(
      {List<FeatureType> features,
      String type,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// Type Alias for permissible objects which can be used with d3-geo
/// methods
/*export type GeoPermissibleObjects = GeoGeometryObjects | ExtendedGeometryCollection<GeoGeometryObjects> | ExtendedFeature<GeoGeometryObjects, any> | ExtendedFeatureCollection<ExtendedFeature<GeoGeometryObjects, any>>;*/
/// ----------------------------------------------------------------------
/// Spherical Math
/// ----------------------------------------------------------------------
/// Returns the spherical area of the specified feature in steradians.
/// (See also path.area, which computes the projected planar area.)
/*external num geoArea(ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> feature);*/
/// Returns the spherical area of the specified feature collection in steradians.
/// (See also path.area, which computes the projected planar area.)
/*external num geoArea(ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> feature);*/
/// Returns the spherical area of the specified GeoJson Geometry Object or GeoSphere object in steradians.
/// (See also path.area, which computes the projected planar area.)
/*external num geoArea(DirectGeometryObject|GeometryCollection|GeoSphere feature);*/
/// Returns the spherical area of the specified geographic geometry collection in steradians.
/// (See also path.area, which computes the projected planar area.)
/*external num geoArea(ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> feature);*/
@JS()
external num geoArea(
    dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ feature);

/// Returns the spherical bounding box for the specified feature. The bounding box is represented by a two-dimensional array: [[left, bottom], [right, top]],
/// where left is the minimum longitude, bottom is the minimum latitude, right is maximum longitude, and top is the maximum latitude. All coordinates are given in degrees.
/// (Note that in projected planar coordinates, the minimum latitude is typically the maximum y-value, and the maximum latitude is typically the minimum y-value.)
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> feature);*/
/// Returns the spherical bounding box for the specified feature collection. The bounding box is represented by a two-dimensional array: [[left, bottom], [right, top]],
/// where left is the minimum longitude, bottom is the minimum latitude, right is maximum longitude, and top is the maximum latitude. All coordinates are given in degrees.
/// (Note that in projected planar coordinates, the minimum latitude is typically the maximum y-value, and the maximum latitude is typically the minimum y-value.)
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> feature);*/
/// Returns the spherical bounding box for the specified GeoJson Geometry Object or GeoSphere object. The bounding box is represented by a two-dimensional array: [[left, bottom], [right, top]],
/// where left is the minimum longitude, bottom is the minimum latitude, right is maximum longitude, and top is the maximum latitude. All coordinates are given in degrees.
/// (Note that in projected planar coordinates, the minimum latitude is typically the maximum y-value, and the maximum latitude is typically the minimum y-value.)
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(DirectGeometryObject|GeometryCollection|GeoSphere feature);*/
/// Returns the spherical bounding box for the specified geometry collection. The bounding box is represented by a two-dimensional array: [[left, bottom], [right, top]],
/// where left is the minimum longitude, bottom is the minimum latitude, right is maximum longitude, and top is the maximum latitude. All coordinates are given in degrees.
/// (Note that in projected planar coordinates, the minimum latitude is typically the maximum y-value, and the maximum latitude is typically the minimum y-value.)
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> feature);*/
@JS()
external List<
    List<
        num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ geoBounds(
    dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ feature);

/// Returns the spherical centroid of the specified feature in steradians.
/// (See also path.centroid, which computes the projected planar centroid.)
/*external Tuple of <num,num> geoCentroid(ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> feature);*/
/// Returns the spherical centroid of the specified feature collection in steradians.
/// (See also path.centroid, which computes the projected planar centroid.)
/*external Tuple of <num,num> geoCentroid(ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> feature);*/
/// Returns the spherical centroid of the specified GeoJson Geometry Object or GeoSphere object in steradians.
/// (See also path.centroid, which computes the projected planar centroid.)
/*external Tuple of <num,num> geoCentroid(DirectGeometryObject|GeometryCollection|GeoSphere feature);*/
/// Returns the spherical centroid of the specified geographic geometry collection in steradians.
/// (See also path.centroid, which computes the projected planar centroid.)
/*external Tuple of <num,num> geoCentroid(ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> feature);*/
@JS()
external List<num> /*Tuple of <num,num>*/ geoCentroid(
    dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ feature);

/// Returns the great-arc distance in radians between the two points a and b.
/// Each point must be specified as a two-element array [longitude, latitude] in degrees.
@JS()
external num geoDistance(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);

/// Returns the great-arc length of the specified feature in radians.
/*external num geoLength(ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> feature);*/
/// Returns the great-arc length of the specified feature collection in radians.
/*external num geoLength(ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> feature);*/
/// Returns the great-arc length of the specified GeoJson Geometry Object or GeoSphere object in radians.
/*external num geoLength(DirectGeometryObject|GeometryCollection|GeoSphere feature);*/
/// Returns the great-arc length of the specified geographic geometry collection in radians.
/*external num geoLength(ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> feature);*/
@JS()
external num geoLength(
    dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ feature);

/// Returns an interpolator function given two points a and b.
/// Each point must be specified as a two-element array [longitude, latitude] in degrees.
@JS()
external Func1<num, List<num> /*Tuple of <num,num>*/ > geoInterpolate(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);

/// A Geo Rotation
@anonymous
@JS()
abstract class GeoRotation {
  /// Returns a new array [longitude, latitude] in degrees representing the rotated point of the given point.
  external List<num> /*Tuple of <num,num>*/ call(
      List<num> /*Tuple of <num,num>*/ point);

  /// Returns a new array [longitude, latitude] in degrees representing the point of the given rotated point; the inverse of rotation.
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ point);
}

/// Returns a rotation function for the given angles.
/// (These correspond to yaw, pitch and roll.) If the rotation angle gamma is omitted, it defaults to 0.
@JS()
external GeoRotation geoRotation(
    List<num> /*Tuple of <num,num>|Tuple of <num,num,num>*/ angles);

/// ----------------------------------------------------------------------
/// Spherical Shapes
/// ----------------------------------------------------------------------
/// geoCircle ============================================================
/// A new circle generator
/// The first generic corresponds to the "this"-context within which the geo circle generator will be invoked.
/// The second generic corresponds to the type of the Datum which will be passed into the geo circle generator.
@anonymous
@JS()
abstract class GeoCircleGenerator<This, Datum> {
  /// Returns a new GeoJSON geometry object of type “Polygon” approximating a circle on the surface of a sphere,
  /// with the current center, radius and precision. Any arguments are passed to the accessors.
  external Polygon call(
      /*This this*/ [Datum d,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Returns the current center accessor, which defaults to a function returning [0, 0].
  /*external (this: This, d: Datum, ...args: any[]) => [number, number] center();*/
  /// Sets the circle center to the specified point [longitude, latitude] in degrees, and returns this circle generator.
  /*external GeoCircleGenerator center(Tuple of <num,num> center);*/
  /// Sets the circle center to the specified center point accessor function, and returns this circle generator.
  /// It returns the center point specified as [longitude, latitude] in degrees.
  /*external GeoCircleGenerator center((this: This, d: Datum, ...args: any[]) => [number, number] center);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => [number, number]|GeoCircleGenerator*/ center(
      [dynamic /*Tuple of <num,num>|(this: This, d: Datum, ...args: any[]) => [number, number]*/ center]);

  /// Returns the current radius accessor, which defaults to a function returning 90.
  /*external (this: This, d: Datum, ...args: any[]) => number radius();*/
  /// Sets the circle radius to the specified angle in degrees, and returns this circle generator.
  /*external GeoCircleGenerator radius(num radius);*/
  /// Sets the circle radius to the specified radius accessor function, and returns this circle generator.
  /// It returns the radius as the specified angle in degrees.
  /*external GeoCircleGenerator radius((this: This, d: Datum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|GeoCircleGenerator*/ radius(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ radius]);

  /// Returns the current precision accessor, which defaults to a function returning 6.
  /*external (this: This, d: Datum, ...args: any[]) => number precision();*/
  /// Sets the circle precision to the specified angle in degrees, and returns this circle generator.
  /// Small circles do not follow great arcs and thus the generated polygon is only an approximation.
  /// Specifying a smaller precision angle improves the accuracy of the approximate polygon, but also increase the cost to generate and render it.
  /*external GeoCircleGenerator precision(num precision);*/
  /// Sets the circle precision to the precision accessor function, and returns this circle generator.
  /// Small circles do not follow great arcs and thus the generated polygon is only an approximation.
  /// Specifying a smaller precision angle improves the accuracy of the approximate polygon, but also increase the cost to generate and render it.
  /// It returns the precision as the specified angle in degrees.
  /*external GeoCircleGenerator precision((this: This, d: Datum, ...args: any[]) => number precision);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|GeoCircleGenerator*/ precision(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ precision]);
}

/// Returns a new geo circle generator
/*external GeoCircleGenerator<dynamic, dynamic> geoCircle();*/
/// Returns a new geo circle generator
/// The generic corresponds to the data type of the first argument passed into the geo circle generator and its accessor functions.
/*external GeoCircleGenerator<dynamic,Datum> geoCircle<Datum>();*/
/// Returns a new geo circle generator
/// The first generic corresponds to the "this" context within which the geo circle generator and its accessors will be invoked.
/// The second generic corresponds to the data type of the first argument passed into the geo circle generator and its accessor functions.
/*external GeoCircleGenerator<This,Datum> geoCircle<This, Datum>();*/
@JS()
external GeoCircleGenerator<dynamic,
    dynamic> /*GeoCircleGenerator<dynamic,dynamic>|GeoCircleGenerator<dynamic,Datum>|GeoCircleGenerator<This,Datum>*/ geoCircle/*<Datum, This>*/();

/// geoGraticule ============================================================
/// A Feature generator for graticules: a uniform grid of meridians and parallels for showing projection distortion.
/// The default graticule has meridians and parallels every 10° between ±80° latitude; for the polar regions, there are meridians every 90°.
@anonymous
@JS()
abstract class GeoGraticuleGenerator {
  /// Returns a GeoJSON MultiLineString geometry object representing all meridians and parallels for this graticule.
  external MultiLineString call();

  /// Returns an array of GeoJSON LineString geometry objects, one for each meridian or parallel for this graticule.
  external List<LineString> lines();

  /// Returns a GeoJSON Polygon geometry object representing the outline of this graticule, i.e. along the meridians and parallels defining its extent.
  external Polygon outline();

  /// Returns the current minor extent, which defaults to ⟨⟨-180°, -80° - ε⟩, ⟨180°, 80° + ε⟩⟩.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /// Sets the major and minor extents of this graticule.
  /*external GeoGraticuleGenerator extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Returns the current major extent, which defaults to ⟨⟨-180°, -90° + ε⟩, ⟨180°, 90° - ε⟩⟩.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extentMajor();*/
  /// Sets the major extent of this graticule.
  /*external GeoGraticuleGenerator extentMajor(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extentMajor(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Returns the current minor extent, which defaults to  ⟨⟨-180°, -80° - ε⟩, ⟨180°, 80° + ε⟩⟩.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extentMinor();*/
  /// Sets the minor extent of this graticule.
  /*external GeoGraticuleGenerator extentMinor(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extentMinor(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Returns the current minor step, which defaults to ⟨10°, 10°⟩.
  /*external Tuple of <num,num> step();*/
  /// Sets the major and minor step for this graticule
  /*external GeoGraticuleGenerator step(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ step(
      [List<num> /*Tuple of <num,num>*/ step]);

  /// Returns the current major step, which defaults to ⟨90°, 360°⟩.
  /*external Tuple of <num,num> stepMajor();*/
  /// Sets the major step for this graticule.
  /*external GeoGraticuleGenerator stepMajor(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ stepMajor(
      [List<num> /*Tuple of <num,num>*/ step]);

  /// Returns the current major step, which defaults to ⟨10°, 10°⟩.
  /*external Tuple of <num,num> stepMinor();*/
  /// Sets the minor step for this graticule.
  /*external GeoGraticuleGenerator stepMinor(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ stepMinor(
      [List<num> /*Tuple of <num,num>*/ step]);

  /// Returns the current precision, which defaults to 2.5°.
  /*external num precision();*/
  /// Sets the precision for this graticule, in degrees.
  /*external GeoGraticuleGenerator precision(num angle);*/
  external dynamic /*num|GeoGraticuleGenerator*/ precision([num angle]);
}

/// Constructs a feature generator for creating graticules: a uniform grid of meridians and parallels for showing projection distortion.
/// The default graticule has meridians and parallels every 10° between ±80° latitude; for the polar regions, there are meridians every 90°.
@JS()
external GeoGraticuleGenerator geoGraticule();

/// A convenience method for directly generating the default 10° global graticule as a GeoJSON MultiLineString geometry object.
@JS()
external MultiLineString geoGraticule10();

/// ----------------------------------------------------------------------
/// Projections
/// ----------------------------------------------------------------------
/// A D3 geo stream. D3 transforms geometry using a sequence of function calls, rather than materializing intermediate representations, to minimize overhead.
/// Streams must implement several methods to receive input geometry. Streams are inherently stateful; the meaning of a point depends on whether the point is inside of a line,
/// and likewise a line is distinguished from a ring by a polygon. Despite the name “stream”, these method calls are currently synchronous.
@anonymous
@JS()
abstract class GeoStream {
  /// Indicates the end of a line or ring. Within a polygon, indicates the end of a ring.
  /// Unlike GeoJSON, the redundant closing coordinate of a ring is not indicated via point, and instead is implied via lineEnd within a polygon.
  external void lineEnd();

  /// Indicates the start of a line or ring. Within a polygon, indicates the start of a ring. The first ring of a polygon is the exterior ring, and is typically clockwise.
  /// Any subsequent rings indicate holes in the polygon, and are typically counterclockwise.
  external void lineStart();

  /// Indicates a point with the specified coordinates x and y (and optionally z). The coordinate system is unspecified and implementation-dependent;
  /// for example, projection streams require spherical coordinates in degrees as input. Outside the context of a polygon or line,
  /// a point indicates a point geometry object (Point or MultiPoint). Within a line or polygon ring, the point indicates a control point.
  external void point(num x, num y, [num z]);

  /// Indicates the end of a polygon.
  external void polygonEnd();

  /// Indicates the start of a polygon. The first line of a polygon indicates the exterior ring, and any subsequent lines indicate interior holes.
  external void polygonStart();

  /// Indicates the sphere (the globe; the unit sphere centered at ⟨0,0,0⟩).
  external void sphere();
}

/// geoStream(...) =======================================================
/// Streams the specified GeoJSON object to the specified projection stream. While both features and geometry objects are supported as input,
/// the stream interface only describes the geometry, and thus additional feature properties are not visible to streams.
/*external void geoStream(ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> object, GeoStream stream);*/
/// Streams the specified GeoJSON object to the specified projection stream. While both features and geometry objects are supported as input,
/// the stream interface only describes the geometry, and thus additional feature properties are not visible to streams.
/*external void geoStream(ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> object, GeoStream stream);*/
/// Streams the specified GeoJSON object to the specified projection stream. While both features and geometry objects are supported as input,
/// the stream interface only describes the geometry, and thus additional feature properties are not visible to streams.
/*external void geoStream(DirectGeometryObject|GeometryCollection|GeoSphere object, GeoStream stream);*/
/// Streams the specified GeoJSON object to the specified projection stream. While both features and geometry objects are supported as input,
/// the stream interface only describes the geometry, and thus additional feature properties are not visible to streams.
/*external void geoStream(ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> object, GeoStream stream);*/
@JS()
external void geoStream(
    dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ object,
    GeoStream stream);

/// ----------------------------------------------------------------------
/// Projections
/// ----------------------------------------------------------------------
/// Raw projections are point transformation functions that are used to implement custom projections; they typically passed to d3.geoProjection or d3.geoProjectionMutator.
/// They are exposed here to facilitate the derivation of related projections.
/// Raw projections take spherical coordinates [lambda, phi] in radians (not degrees!) and return a point [x, y], typically in the unit square centered around the origin.
@anonymous
@JS()
abstract class GeoRawProjection {
  /// Projects the specified point [lambda, phi] in radians, returning a new point [x, y] in unitless coordinates.
  external List<num> /*Tuple of <num,num>*/ call(num lambda, num phi);

  /// Inverts the projected point [x, y] in unitless coordinates, returning an unprojected point in spherical coordinates [lambda, phi] in radians.
  external List<num> /*Tuple of <num,num>*/ invert(num x, num y);
}

/// An object implementing a stream method
@anonymous
@JS()
abstract class GeoStreamWrapper {
  /// Returns a projection stream for the specified output stream. Any input geometry is projected before being streamed to the output stream.
  /// A typical projection involves several geometry transformations: the input geometry is first converted to radians, rotated on three axes,
  /// clipped to the small circle or cut along the antimeridian, and lastly projected to the plane with adaptive resampling, scale and translation.
  external GeoStream stream(GeoStream stream);
}

/// A Geographic Projection to transform spherical polygonal geometry to planar polygonal geometry.
/// D3 provides implementations of several classes of standard projections:
/// - Azimuthal
/// - Composite
/// - Conic
/// - Cylindrical
/// For many more projections, see d3-geo-projection. You can implement custom projections using d3.geoProjection or d3.geoProjectionMutator.
@anonymous
@JS()
abstract class GeoProjection implements GeoStreamWrapper {
  /// Returns a new array [x, y] (typically in pixels) representing the projected point of the given point.
  /// The point must be specified as a two-element array [longitude, latitude] in degrees.
  /// May return null if the specified point has no defined projected position, such as when the point is outside the clipping bounds of the projection.
  external List<num> /*Tuple of <num,num>|Null*/ call(
      List<num> /*Tuple of <num,num>*/ point);

  /// Returns the current center of the projection, which defaults to ⟨0°,0°⟩.
  /*external Tuple of <num,num> center();*/
  /// Sets the projection’s center to the specified center,
  /// a two-element array of longitude and latitude in degrees and returns the projection.
  /// The default is ⟨0°,0°⟩.
  /*external GeoProjection center(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|GeoProjection*/ center(
      [List<num> /*Tuple of <num,num>*/ point]);

  /// Returns the current clip angle which defaults to null.
  /// null switches to antimeridian cutting rather than small-circle clipping.
  /*external num|Null clipAngle();*/
  /// Switches to antimeridian cutting rather than small-circle clipping.
  /*external GeoProjection clipAngle(Null angle);*/
  /// Sets the projection’s clipping circle radius to the specified angle in degrees and returns the projection.
  /// Small-circle clipping is independent of viewport clipping via projection.clipExtent.
  /*external GeoProjection clipAngle(num angle);*/
  external dynamic /*num|GeoProjection*/ clipAngle([num angle]);

  /// Returns the current viewport clip extent which defaults to null.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Null clipExtent();*/
  /// Sets the clip extent to null and returns the projection.
  /// With a clip extent of null, no viewport clipping is performed.
  /// Viewport clipping is independent of small-circle clipping via projection.clipAngle.
  /*external GeoProjection clipExtent(Null extent);*/
  /// Sets the projection’s viewport clip extent to the specified bounds in pixels and returns the projection.
  /// The extent bounds are specified as an array [[x₀, y₀], [x₁, y₁]], where x₀ is the left-side of the viewport, y₀ is the top, x₁ is the right and y₁ is the bottom.
  /// Viewport clipping is independent of small-circle clipping via projection.clipAngle.
  /*external GeoProjection clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoProjection*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Sets the projection’s scale and translate to fit the specified geographic feature in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic feature collection in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry object in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, DirectGeometryObject|GeometryCollection|GeoSphere object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry collection in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> object);*/
  external GeoProjection fitExtent(
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent,
      dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ object);

  /// Sets the projection’s scale and translate to fit the specified geographic feature in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic feature collection in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry object in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitSize(Tuple of <num,num> size, DirectGeometryObject|GeometryCollection|GeoSphere object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry collection in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> object);*/
  external GeoProjection fitSize(List<num> /*Tuple of <num,num>*/ size,
      dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ object);

  /// Returns a new array [longitude, latitude] in degrees representing the unprojected point of the given projected point.
  /// May return null if the specified point has no defined projected position, such as when the point is outside the clipping bounds of the projection.
  external List<num> /*Tuple of <num,num>|Null*/ invert(
      List<num> /*Tuple of <num,num>*/ point);

  /// Returns the projection’s current resampling precision which defaults to square root of 0.5.
  /// This value corresponds to the Douglas–Peucker distance.
  /*external num precision();*/
  /// Sets the threshold for the projection’s adaptive resampling to the specified value in pixels and returns the projection.
  /// This value corresponds to the Douglas–Peucker distance.
  /*external GeoProjection precision(num precision);*/
  external dynamic /*num|GeoProjection*/ precision([num precision]);

  /// Returns the current rotation [lambda, phi, gamma] specifying the rotation angles in degrees about each spherical axis.
  /// (These correspond to yaw, pitch and roll.) which defaults [0, 0, 0].
  /*external Tuple of <num,num,num> rotate();*/
  /// Sets the projection’s three-axis rotation to the specified angles, which must be a two- or three-element array of numbers.
  /// (These correspond to yaw, pitch and roll.) If the rotation angle gamma is omitted, it defaults to 0.
  /*external GeoProjection rotate(Tuple of <num,num>|Tuple of <num,num,num> angles);*/
  external dynamic /*Tuple of <num,num,num>|GeoProjection*/ rotate(
      [List<num> /*Tuple of <num,num>|Tuple of <num,num,num>*/ angles]);

  /// Returns the current scale factor; the default scale is projection-specific.
  /// The scale factor corresponds linearly to the distance between projected points; however, absolute scale factors are not equivalent across projections.
  /*external num scale();*/
  /// Sets the projection’s scale factor to the specified value and returns the projection.
  /// The scale factor corresponds linearly to the distance between projected points; however, absolute scale factors are not equivalent across projections.
  /*external GeoProjection scale(num scale);*/
  external dynamic /*num|GeoProjection*/ scale([num scale]);

  /// Returns the current translation offset which defaults to [480, 250] and places ⟨0°,0°⟩ at the center of a 960×500 area.
  /// The translation offset determines the pixel coordinates of the projection’s center.
  /*external Tuple of <num,num> translate();*/
  /// Sets the projection’s translation offset to the specified two-element array [tx, ty] and returns the projection.
  /// The translation offset determines the pixel coordinates of the projection’s center. The default translation offset places ⟨0°,0°⟩ at the center of a 960×500 area.
  /*external GeoProjection translate(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|GeoProjection*/ translate(
      [List<num> /*Tuple of <num,num>*/ point]);
}

/// A Conic Projection
@anonymous
@JS()
abstract class GeoConicProjection implements GeoProjection {
  /// Return the standard parallels for the conic projection in degrees.
  /*external Tuple of <num,num> parallels();*/
  /// Set the standard parallels for the conic projection in degrees and return the projection.
  /*external GeoConicProjection parallels(Tuple of <num,num> value);*/
  external dynamic /*Tuple of <num,num>|GeoConicProjection*/ parallels(
      [List<num> /*Tuple of <num,num>*/ value]);
}

/// geoPath ==============================================================
/// A minimal rendering context for a GeoPath generator. The minimum implemented
/// methods are a subset of the CanvasRenderingContext2D API.
/// For reference to the CanvasRenderingContext2D see https://developer.mozilla.org/en/docs/Web/API/CanvasRenderingContext2D
@anonymous
@JS()
abstract class GeoContext {
  /// Adds an arc to the path with center point (x, y) and radius r starting at startAngle and ending at endAngle.
  /// The arc is drawn in clockwise directio by default.
  external void arc(num x, num y, num radius, num startAngle, num endAngle,
      [bool anticlockwise]);

  /// Start a new path by emptying the list of sub-paths.
  external void beginPath();

  /// Causes the point of the pen to move back to the start of the current sub-path.
  /// It tries to draw a straight line from the current point to the start.
  /// If the shape has already been closed or has only one point, this function does nothing.
  external void closePath();

  /// Connects the last point in the sub-path to the x, y coordinates with a straight line (but does not actually draw it).
  external void lineTo(num x, num y);

  /// Move the starting point of a new sub-path to the (x, y) coordinates.
  external void moveTo(num x, num y);
}

/// A Geo Path generator
/// The first generic corresponds to the "this"-context within which the geo path generator will be invoked. This could be e.g. the DOMElement bound to "this" when using selection.attr("d", ...) with the path generator.
/// The second generic corresponds to the type of the DatumObject which will be passed into the geo path generator for rendering.
@anonymous
@JS()
abstract class GeoPath<This,
    DatumObject extends dynamic /*DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>|ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>*/ > {
  /// Renders the given object, which may be any GeoJSON feature or geometry object:
  /// + Point - a single position.
  /// + MultiPoint - an array of positions.
  /// + LineString - an array of positions forming a continuous line.
  /// + MultiLineString - an array of arrays of positions forming several lines.
  /// + Polygon - an array of arrays of positions forming a polygon (possibly with holes).
  /// + MultiPolygon - a multidimensional array of positions forming multiple polygons.
  /// + GeometryCollection - an array of geometry objects.
  /// + Feature - a feature containing one of the above geometry objects.
  /// + FeatureCollection - an array of feature objects.
  /// The type Sphere is also supported, which is useful for rendering the outline of the globe; a sphere has no coordinates.
  /// Any additional arguments are passed along to the pointRadius accessor.
  /// If the rendering context is null, the function returns an SVG Path string, otherwise the function renders to the current context.
  /// Separate path elements are typically slower than a single path element. However, distinct path elements are useful for styling and interation (e.g., click or mouseover).
  /// Canvas rendering (see path.context) is typically faster than SVG, but requires more effort to implement styling and interaction.
  /// The first generic type of the GeoPath generator used, must correspond to the "this" context bound to the function upon invocation.
  external dynamic /*String|dynamic*/ call(/*This this*/ DatumObject object,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);

  /// Returns the projected planar area (typically in square pixels) for the specified GeoJSON object.
  /// Point, MultiPoint, LineString and MultiLineString features have zero area. For Polygon and MultiPolygon features,
  /// this method first computes the area of the exterior ring, and then subtracts the area of any interior holes.
  /// This method observes any clipping performed by the projection; see projection.clipAngle and projection.clipExtent.
  external num area(DatumObject object);

  /// Returns the projected planar bounding box (typically in pixels) for the specified GeoJSON object.
  /// The bounding box is represented by a two-dimensional array: [[x₀, y₀], [x₁, y₁]], where x₀ is the minimum x-coordinate, y₀ is the minimum y-coordinate,
  /// x₁ is maximum x-coordinate, and y₁ is the maximum y-coordinate.
  /// This is handy for, say, zooming in to a particular feature. (Note that in projected planar coordinates,
  /// the minimum latitude is typically the maximum y-value, and the maximum latitude is typically the minimum y-value.)
  /// This method observes any clipping performed by the projection; see projection.clipAngle and projection.clipExtent.
  external List<
      List<
          num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ bounds(
      DatumObject object);

  /// Returns the projected planar centroid (typically in pixels) for the specified GeoJSON object.
  /// This is handy for, say, labeling state or county boundaries, or displaying a symbol map.
  /// For example, a noncontiguous cartogram might scale each state around its centroid.
  /// This method observes any clipping performed by the projection; see projection.clipAngle and projection.clipExtent.
  external List<num> /*Tuple of <num,num>*/ centroid(DatumObject object);

  /// Returns the current render context which defaults to null.
  /// Use the generic to cast the return type of the rendering context, if it is known for a specific application.
  /*external C context<C extends GeoContext|Null>();*/
  /// Set the current rendering context to null and return the path generator.
  /// The path generator will return an SVG path string;
  /*external GeoPath context(Null context);*/
  /// Set the current rendering context and return the path generator.
  /// The path generator will render to the specified context.
  /// The context must at least implement GeoContext, a subset of the CanvasRenderingContext2D API.
  /*external GeoPath context(GeoContext context);*/
  external dynamic /*C|GeoPath*/ context/*<C extends GeoContext>*/(
      [GeoContext context]);

  /// Get the current projection. The generic parameter can be used to cast the result to the
  /// correct, known type of the projection, e.g. GeoProjection or GeoConicProjection. Otherwise,
  /// the return type defaults to the minimum type requirement for a projection which
  /// can be passed into a GeoPath.
  /// Use the generic to cast the return type of the projection, if it is known for a specific application.
  /*external P projection<P extends GeoConicProjection|GeoProjection|GeoStreamWrapper|Null>();*/
  /// Set the projection to the identity projection.
  /*external GeoPath projection(Null projection);*/
  /// Set the current projection to be used with the geo path generator.
  /// The given projection is typically one of D3’s built-in geographic projections;
  /// however, any object that exposes a projection.stream function can be used, enabling the use of custom projections.
  /// See D3’s transforms for more examples of arbitrary geometric transformations.
  /*external GeoPath projection(GeoProjection projection);*/
  /// Set the projection to be used with the geo path generator to a custom projection.
  /// Custom projections must minimally contain a stream method.
  /// The given projection is typically one of D3’s built-in geographic projections;
  /// however, any object that exposes a projection.stream function can be used, enabling the use of custom projections.
  /// See D3’s transforms for more examples of arbitrary geometric transformations.
  /*external GeoPath projection(GeoStreamWrapper projection);*/
  external dynamic /*P|GeoPath*/ projection/*<P>*/(
      [dynamic /*GeoProjection|GeoStreamWrapper*/ projection]);

  /// Returns the current radius or radius accessor used to determine the radius for the display of Point and MultiPoint features.
  /// The default is a constant radius of 4.5.
  /*external (this: This, object: DatumObject, ...args: any[]) => number|num pointRadius();*/
  /// Sets the radius used to display Point and MultiPoint features to the specified number and return the geo path generator.
  /*external GeoPath pointRadius(num value);*/
  /// Sets the radius used to display Point and MultiPoint features to use the specified radius accessor function.
  /// While the radius is commonly specified as a number constant, it may also be specified as a function which is computed per feature,
  /// being passed the any arguments passed to the path generator. For example, if your GeoJSON data has additional properties,
  /// you might access those properties inside the radius function to vary the point size;
  /// alternatively, you could d3.symbol and a projection for greater flexibility.
  /// It is passed the object to be rendered, and any additional arguments which have been passed into the call to the render function of the path generator.
  /*external GeoPath pointRadius((this: This, object: DatumObject, ...args: any[]) => number value);*/
  external dynamic /*(this: This, object: DatumObject, ...args: any[]) => number|num|GeoPath*/ pointRadius(
      [dynamic /*num|(this: This, object: DatumObject, ...args: any[]) => number*/ value]);
}

/// Creates a new geographic path generator.
/// The default projection is the null projection. The null projection represents the identity transformation, i.e.
/// the input geometry is not projected and is instead rendered directly in raw coordinates.
/// This can be useful for fast rendering of pre-projected geometry, or for fast rendering of the equirectangular projection.
/// The default context is null, which implies that the path generator will return an SVG path string.
/// however, any object that exposes a projection.stream function can be used, enabling the use of custom projections.
/// See D3’s transforms for more examples of arbitrary geometric transformations. Setting the projection to "null" uses the identity projection. The default  value is "null", the identity projection.
/// Setting the context to "null" means that the path generator will return an SVG path string representing the to be rendered object. The default is "null".
/*external GeoPath<dynamic,DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>|ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>> geoPath([GeoProjection|GeoStreamWrapper|Null projection, GeoContext|Null context]);*/
/// Creates a new geographic path generator with the default settings.
/// The default projection is the null projection. The null projection represents the identity transformation:
/// the input geometry is not projected and is instead rendered directly in raw coordinates.
/// This can be useful for fast rendering of pre-projected geometry, or for fast rendering of the equirectangular projection.
/// The default context is null, which implies that the path generator will return an SVG path string.
/// The generic corresponds to the type of the DatumObject which will be passed into the geo path generator for rendering
/// however, any object that exposes a projection.stream function can be used, enabling the use of custom projections.
/// See D3’s transforms for more examples of arbitrary geometric transformations. Setting the projection to "null" uses the identity projection. The default  value is "null", the identity projection.
/// Setting the context to "null" means that the path generator will return an SVG path string representing the to be rendered object. The default is "null".
/*external GeoPath<dynamic,DatumObject> geoPath<DatumObject extends DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>|ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>>([GeoProjection|GeoStreamWrapper|Null projection, GeoContext|Null context]);*/
/// Creates a new geographic path generator with the default settings.
/// The default projection is the null projection. The null projection represents the identity transformation:
/// the input geometry is not projected and is instead rendered directly in raw coordinates.
/// This can be useful for fast rendering of pre-projected geometry, or for fast rendering of the equirectangular projection.
/// The default context is null, which implies that the path generator will return an SVG path string.
/// The first generic corresponds to the "this"-context within which the geo path generator will be invoked. This could be e.g. the DOMElement bound to "this" when using selection.attr("d", ...) with the path generator.
/// The second generic corresponds to the type of the DatumObject which will be passed into the geo path generator for rendering.
/// however, any object that exposes a projection.stream function can be used, enabling the use of custom projections.
/// See D3’s transforms for more examples of arbitrary geometric transformations. Setting the projection to "null" uses the identity projection. The default  value is "null", the identity projection.
/// Setting the context to "null" means that the path generator will return an SVG path string representing the to be rendered object. The default is "null".
/*external GeoPath<This,DatumObject> geoPath<This, DatumObject extends DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>|ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>>([GeoProjection|GeoStreamWrapper|Null projection, GeoContext|Null context]);*/
@JS()
external GeoPath<dynamic, dynamic> /*GeoPath<dynamic,DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>|ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>>|GeoPath<dynamic,DatumObject>|GeoPath<This,DatumObject>*/ geoPath/*<DatumObject, This>*/(
    [dynamic /*GeoProjection|GeoStreamWrapper*/ projection,
    GeoContext context]);

/// geoProjection ==========================================================
/// Constructs a new projection from the specified raw projection, project.
/// The project function takes the longitude and latitude of a given point in radians,
/// often referred to as lambda (λ) and phi (φ), and returns a two-element array [x, y] representing its unit projection.
/// The project function does not need to scale or translate the point, as these are applied automatically by projection.scale, projection.translate, and projection.center.
/// Likewise, the project function does not need to perform any spherical rotation, as projection.rotate is applied prior to projection.
/// If the project function exposes an invert method, the returned projection will also expose projection.invert.
@JS()
external GeoProjection geoProjection(GeoRawProjection project);

/// geoProjectionMutator ====================================================
/// Constructs a new projection from the specified raw projection factory and returns a mutate function to call whenever the raw projection changes.
/// The factory must return a raw projection. The returned mutate function returns the wrapped projection.
/// When creating a mutable projection, the mutate function is typically not exposed.
@JS()
external Func0<GeoProjection> geoProjectionMutator(
    Function /*(...args: any[]) => GeoRawProjection*/ JS$factory);

/// Pre-Defined Projections and Raw Projections =============================
/// Azimuthal Projections ---------------------------------------------------
/// The azimuthal equal-area projection.
@JS()
external GeoProjection geoAzimuthalEqualArea();

/// The raw azimuthal equal-area projection.
@JS()
external GeoRawProjection geoAzimuthalEqualAreaRaw();

/// The azimuthal equidistant projection.
@JS()
external GeoProjection geoAzimuthalEquidistant();

/// The raw azimuthal equidistant projection.
@JS()
external GeoRawProjection geoAzimuthalEquidistantRaw();

/// The gnomonic projection.
@JS()
external GeoProjection geoGnomonic();

/// The raw gnomonic projection.
@JS()
external GeoRawProjection geoGnomonicRaw();

/// The orthographic projection.
@JS()
external GeoProjection geoOrthographic();

/// The raw orthographic projection.
@JS()
external GeoRawProjection geoOrthographicRaw();

/// The stereographic projection.
@JS()
external GeoProjection geoStereographic();

/// The raw stereographic projection.
@JS()
external GeoRawProjection geoStereographicRaw();

/// Composite Projections ---------------------------------------------------
/// A U.S.-centric composite projection of three d3.geoConicEqualArea projections: d3.geoAlbers is used for the lower forty-eight states,
/// and separate conic equal-area projections are used for Alaska and Hawaii. Note that the scale for Alaska is diminished: it is projected at 0.35× its true relative area.
/// Composite consist of several projections that are composed into a single display. The constituent projections have fixed clip, center and rotation,
/// and thus composite projections do not support projection.center, projection.rotate, projection.clipAngle, or projection.clipExtent.
@JS()
external GeoProjection geoAlbersUsa();

/// Conic Projections -------------------------------------------------------
/// The Albers’ equal area-conic projection. This is a U.S.-centric configuration of d3.geoConicEqualArea.
@JS()
external GeoConicProjection geoAlbers();

/// The conic conformal projection. The parallels default to [30°, 30°] resulting in flat top.
@JS()
external GeoConicProjection geoConicConformal();

/// The raw conic conformal projection.
@JS()
external GeoRawProjection geoConicConformalRaw(num phi0, num phi1);

/// The Albers’ equal-area conic projection.
@JS()
external GeoConicProjection geoConicEqualArea();

/// The raw Albers’ equal-area conic projection.
@JS()
external GeoRawProjection geoConicEqualAreaRaw(num phi0, num phi1);

/// The conic equidistant projection.
@JS()
external GeoConicProjection geoConicEquidistant();

/// The raw conic equidistant projection.
@JS()
external GeoRawProjection geoConicEquidistantRaw(num phi0, num phi1);

/// Cylindrical Projections ------------------------------------------------
/// The equirectangular (plate carrée) projection.
@JS()
external GeoProjection geoEquirectangular();

/// The raw equirectangular (plate carrée) projection.
@JS()
external GeoRawProjection geoEquirectangularRaw();

/// The spherical Mercator projection.
/// Defines a default projection.clipExtent such that the world is projected to a square, clipped to approximately ±85° latitude.
@JS()
external GeoProjection geoMercator();

/// The raw spherical Mercator projection.
@JS()
external GeoRawProjection geoMercatorRaw();

/// The transverse spherical Mercator projection.
/// Defines a default projection.clipExtent such that the world is projected to a square, clipped to approximately ±85° latitude.
@JS()
external GeoProjection geoTransverseMercator();

/// The raw transverse spherical Mercator projection.
@JS()
external GeoRawProjection geoTransverseMercatorRaw();

/// ----------------------------------------------------------------------
/// Projection Transforms
/// ----------------------------------------------------------------------
/// geoTransform(...) ====================================================
/// A Prototype interface which serves as a template for the implementation of a geometric transform using geoTransform(...)
/// It serves as a reference for the custom methods which can be passed into geoTransform as argument to crete a generalized
/// transform projection.
@anonymous
@JS()
abstract class GeoTransformPrototype {
  /// Indicates the end of a line or ring. Within a polygon, indicates the end of a ring.
  /// Unlike GeoJSON, the redundant closing coordinate of a ring is not indicated via point, and instead is implied via lineEnd within a polygon.
  external void lineEnd(/*GeoTransformPrototype&{ stream: GeoStream } this*/);

  /// Indicates the start of a line or ring. Within a polygon, indicates the start of a ring. The first ring of a polygon is the exterior ring, and is typically clockwise.
  /// Any subsequent rings indicate holes in the polygon, and are typically counterclockwise.
  external void lineStart(/*GeoTransformPrototype&{ stream: GeoStream } this*/);

  /// Indicates a point with the specified coordinates x and y (and optionally z). The coordinate system is unspecified and implementation-dependent;
  /// for example, projection streams require spherical coordinates in degrees as input. Outside the context of a polygon or line,
  /// a point indicates a point geometry object (Point or MultiPoint). Within a line or polygon ring, the point indicates a control point.
  external void point(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/ num x, num y,
      [num z]);

  /// Indicates the end of a polygon.
  external void polygonEnd(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/);

  /// Indicates the start of a polygon. The first line of a polygon indicates the exterior ring, and any subsequent lines indicate interior holes.
  external void polygonStart(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/);

  /// Indicates the sphere (the globe; the unit sphere centered at ⟨0,0,0⟩).
  external void sphere(/*GeoTransformPrototype&{ stream: GeoStream } this*/);
}

/// TODO: Review whether GeoStreamWrapper should be included into return value union type, i.e. ({ stream: (s: GeoStream) => (T & GeoStream & GeoStreamWrapper)})?
/// It probably should be omitted for purposes of this API. The stream method added to (T & GeoStream) is more of a private member used internally to
/// implement the Transform factory
/// Defines an arbitrary transform using the methods defined on the specified methods object.
/// Any undefined methods will use pass-through methods that propagate inputs to the output stream.
@JS()
external dynamic /*{ stream: (s: GeoStream) => (T & GeoStream) }*/ geoTransform/*<T extends GeoTransformPrototype>*/(
    dynamic/*=T*/ methods);

/// geoIdentity() =================================================================
/// Geo Identity Transform
@anonymous
@JS()
abstract class GeoIdentityTranform implements GeoStreamWrapper {
  /// Returns the current viewport clip extent which defaults to null.
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Null clipExtent();*/
  /// Sets the clip extent to null and returns the projection.
  /// With a clip extent of null, no viewport clipping is performed.
  /// Viewport clipping is independent of small-circle clipping via projection.clipAngle.
  /*external GeoIdentityTranform clipExtent(Null extent);*/
  /// Sets the projection’s viewport clip extent to the specified bounds in pixels and returns the projection.
  /// The extent bounds are specified as an array [[x₀, y₀], [x₁, y₁]], where x₀ is the left-side of the viewport, y₀ is the top, x₁ is the right and y₁ is the bottom.
  /// Viewport clipping is independent of small-circle clipping via projection.clipAngle.
  /*external GeoIdentityTranform clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoIdentityTranform*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Sets the projection’s scale and translate to fit the specified geographic feature in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic feature collection in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry object in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, DirectGeometryObject|GeometryCollection|GeoSphere object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry collection in the center of the given extent.
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> object);*/
  external GeoIdentityTranform fitExtent(
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent,
      dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ object);

  /// Sets the projection’s scale and translate to fit the specified geographic feature in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitSize(Tuple of <num,num> size, ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic feature collection in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitSize(Tuple of <num,num> size, ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>> object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry object in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitSize(Tuple of <num,num> size, DirectGeometryObject|GeometryCollection|GeoSphere object);*/
  /// Sets the projection’s scale and translate to fit the specified geographic geometry collection in the center of an extent with the given size and top-left corner of [0, 0].
  /// Returns the projection.
  /// Any clip extent is ignored when determining the new scale and translate. The precision used to compute the bounding box of the given object is computed at an effective scale of 150.
  /*external GeoIdentityTranform fitSize(Tuple of <num,num> size, ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere> object);*/
  external GeoIdentityTranform fitSize(List<num> /*Tuple of <num,num>*/ size,
      dynamic /*ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<DirectGeometryObject|GeometryCollection|GeoSphere,dynamic>>|DirectGeometryObject|GeometryCollection|GeoSphere|ExtendedGeometryCollection<DirectGeometryObject|GeometryCollection|GeoSphere>*/ object);

  /// Returns true if x-reflection is enabled, which defaults to false.
  /*external bool reflectX();*/
  /// Sets whether or not the x-dimension is reflected (negated) in the output.
  /*external GeoIdentityTranform reflectX(bool reflect);*/
  external dynamic /*bool|GeoIdentityTranform*/ reflectX([bool reflect]);

  /// Returns true if y-reflection is enabled, which defaults to false.
  /*external bool reflectY();*/
  /// Sets whether or not the y-dimension is reflected (negated) in the output.
  /// This is especially useful for transforming from standard spatial reference systems,
  /// which treat positive y as pointing up, to display coordinate systems such as Canvas and SVG,
  /// which treat positive y as pointing down.
  /*external GeoIdentityTranform reflectY(bool reflect);*/
  external dynamic /*bool|GeoIdentityTranform*/ reflectY([bool reflect]);

  /// Returns the current scale factor.
  /// The scale factor corresponds linearly to the distance between projected points; however, absolute scale factors are not equivalent across projections.
  /*external num scale();*/
  /// Sets the projection’s scale factor to the specified value and returns the projection.
  /// The scale factor corresponds linearly to the distance between projected points; however, absolute scale factors are not equivalent across projections.
  /*external GeoIdentityTranform scale(num scale);*/
  external dynamic /*num|GeoIdentityTranform*/ scale([num scale]);

  /// Returns the current translation offset.
  /// The translation offset determines the pixel coordinates of the projection’s center.
  /*external Tuple of <num,num> translate();*/
  /// Sets the projection’s translation offset to the specified two-element array [tx, ty] and returns the projection.
  /// The translation offset determines the pixel coordinates of the projection’s center.
  /*external GeoIdentityTranform translate(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|GeoIdentityTranform*/ translate(
      [List<num> /*Tuple of <num,num>*/ point]);
}

/// Returns the identity transform which can be used to scale, translate and clip planar geometry.
@JS()
external GeoIdentityTranform geoIdentity();

