@JS()
library node_modules._types.d3_path;

import "package:js/js.dart";

/// Type definitions for D3JS d3-path module 1.0
/// Project: https://github.com/d3/d3-path/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.3
/// A D3 path serializer implementing CanvasPathMethods
@anonymous
@JS()
abstract class Path {
  /// Move to the specified point ⟨x, y⟩. Equivalent to context.moveTo and SVG’s “moveto” command.
  external void moveTo(num x, num y);

  /// Ends the current subpath and causes an automatic straight line to be drawn from the current point to the initial point of the current subpath.
  /// Equivalent to context.closePath and SVG’s “closepath” command.
  external void closePath();

  /// Draws a straight line from the current point to the specified point ⟨x, y⟩.
  /// Equivalent to context.lineTo and SVG’s “lineto” command.
  external void lineTo(num x, num y);

  /// Draws a quadratic Bézier segment from the current point to the specified point ⟨x, y⟩, with the specified control point ⟨cpx, cpy⟩.
  /// Equivalent to context.quadraticCurveTo and SVG’s quadratic Bézier curve commands.
  external void quadraticCurveTo(num cpx, num cpy, num x, num y);

  /// Draws a cubic Bézier segment from the current point to the specified point ⟨x, y⟩, with the specified control points ⟨cpx1, cpy1⟩ and ⟨cpx2, cpy2⟩.
  /// Equivalent to context.bezierCurveTo and SVG’s cubic Bézier curve commands.
  external void bezierCurveTo(
      num cpx1, num cpy1, num cpx2, num cpy2, num x, num y);

  /// Draws a circular arc segment with the specified radius that starts tangent to the line between the current point and the specified point ⟨x1, y1⟩
  /// and ends tangent to the line between the specified points ⟨x1, y1⟩ and ⟨x2, y2⟩. If the first tangent point is not equal to the current point,
  /// a straight line is drawn between the current point and the first tangent point. Equivalent to context.arcTo and uses SVG’s elliptical arc curve commands.
  external void arcTo(num x1, num y1, num x2, num y2, num radius);

  /// Draws a circular arc segment with the specified center ⟨x, y⟩, radius, startAngle and endAngle. If anticlockwise is true,
  /// the arc is drawn in the anticlockwise direction; otherwise, it is drawn in the clockwise direction.
  /// If the current point is not equal to the starting point of the arc, a straight line is drawn from the current point to the start of the arc.
  /// Equivalent to context.arc and uses SVG’s elliptical arc curve commands.
  external void arc(num x, num y, num radius, num startAngle, num endAngle,
      [bool anticlockwise]);

  /// Creates a new subpath containing just the four points ⟨x, y⟩, ⟨x + w, y⟩, ⟨x + w, y + h⟩, ⟨x, y + h⟩,
  /// with those four points connected by straight lines, and then marks the subpath as closed. Equivalent to context.rect and uses SVG’s “lineto” commands.
  external void rect(num x, num y, num w, num h);

  /// Returns the string representation of this path according to SVG’s path data specficiation.
  external String toString();
}

/// Construct a D3 Path serializer
@JS()
external Path path();

