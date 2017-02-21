@JS()
library node_modules._types.d3_color;

import "package:js/js.dart";

/// Type definitions for D3JS d3-color module v1.0.1
/// Project: https://github.com/d3/d3-color/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// ---------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// ---------------------------------------------------------------------------
/// Type allowing for color objects from a specified color space
/*export type ColorSpaceObject = RGBColor | HSLColor | LabColor | HCLColor | CubehelixColor;*/
/// A helper interface of methods common to color objects (including colors defined outside the d3-color standard module,
/// e.g. in d3-hsv). This interface
@anonymous
@JS()
abstract class ColorCommonInstance {
  external bool displayable();
  external String toString();
  external ColorCommonInstance brighter([num k]);
  external ColorCommonInstance darker([num k]);
  external RGBColor rgb();
}

@anonymous
@JS()
abstract class Color {
  external bool displayable();
  external String toString();
}

@anonymous
@JS()
abstract class ColorFactory implements Function {
  /*external RGBColor|HSLColor call(String cssColorSpecifier);*/
  /*external RGBColor|HSLColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external dynamic /*RGBColor|HSLColor*/ call(
      dynamic /*String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ cssColorSpecifier_color);
}

@anonymous
@JS()
abstract class RGBColor implements Color {
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external num get opacity;
  external set opacity(num v);
  external RGBColor brighter([num k]);
  external RGBColor darker([num k]);
  external bool displayable();
  external RGBColor rgb();
  external String toString();
}

@anonymous
@JS()
abstract class RGBColorFactory implements Function {
  /*external RGBColor call(num r, num g, num b, [num opacity]);*/
  /*external RGBColor call(String cssColorSpecifier);*/
  /*external RGBColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external RGBColor call(
      dynamic /*num|String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ r_cssColorSpecifier_color,
      [num g,
      num b,
      num opacity]);
}

@anonymous
@JS()
abstract class HSLColor implements Color {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get l;
  external set l(num v);
  external num get opacity;
  external set opacity(num v);
  external HSLColor brighter([num k]);
  external HSLColor darker([num k]);
  external bool displayable();
  external RGBColor rgb();
}

@anonymous
@JS()
abstract class HSLColorFactory implements Function {
  /*external HSLColor call(num h, num s, num l, [num opacity]);*/
  /*external HSLColor call(String cssColorSpecifier);*/
  /*external HSLColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external HSLColor call(
      dynamic /*num|String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ h_cssColorSpecifier_color,
      [num s,
      num l,
      num opacity]);
}

@anonymous
@JS()
abstract class LabColor implements Color {
  external num get l;
  external set l(num v);
  external num get a;
  external set a(num v);
  external num get b;
  external set b(num v);
  external num get opacity;
  external set opacity(num v);
  external LabColor brighter([num k]);
  external LabColor darker([num k]);
  external RGBColor rgb();
}

@anonymous
@JS()
abstract class LabColorFactory implements Function {
  /*external LabColor call(num l, num a, num b, [num opacity]);*/
  /*external LabColor call(String cssColorSpecifier);*/
  /*external LabColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external LabColor call(
      dynamic /*num|String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ l_cssColorSpecifier_color,
      [num a,
      num b,
      num opacity]);
}

@anonymous
@JS()
abstract class HCLColor implements Color {
  external num get h;
  external set h(num v);
  external num get c;
  external set c(num v);
  external num get l;
  external set l(num v);
  external num get opacity;
  external set opacity(num v);
  external HCLColor brighter([num k]);
  external HCLColor darker([num k]);
  external RGBColor rgb();
}

@anonymous
@JS()
abstract class HCLColorFactory implements Function {
  /*external HCLColor call(num h, num l, num c, [num opacity]);*/
  /*external HCLColor call(String cssColorSpecifier);*/
  /*external HCLColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external HCLColor call(
      dynamic /*num|String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ h_cssColorSpecifier_color,
      [num l,
      num c,
      num opacity]);
}

@anonymous
@JS()
abstract class CubehelixColor implements Color {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get l;
  external set l(num v);
  external num get opacity;
  external set opacity(num v);
  external CubehelixColor brighter([num k]);
  external CubehelixColor darker([num k]);
  external RGBColor rgb();
}

@anonymous
@JS()
abstract class CubehelixColorFactory implements Function {
  /*external CubehelixColor call(num h, num s, num l, [num opacity]);*/
  /*external CubehelixColor call(String cssColorSpecifier);*/
  /*external CubehelixColor call(RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external CubehelixColor call(
      dynamic /*num|String|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ h_cssColorSpecifier_color,
      [num s,
      num l,
      num opacity]);
}

/// --------------------------------------------------------------------------
/// Color object factories
/// --------------------------------------------------------------------------
@JS()
external ColorFactory get color;
@JS()
external set color(ColorFactory v);
@JS()
external RGBColorFactory get rgb;
@JS()
external set rgb(RGBColorFactory v);
@JS()
external HSLColorFactory get hsl;
@JS()
external set hsl(HSLColorFactory v);
@JS()
external LabColorFactory get lab;
@JS()
external set lab(LabColorFactory v);
@JS()
external HCLColorFactory get hcl;
@JS()
external set hcl(HCLColorFactory v);
@JS()
external CubehelixColorFactory get cubehelix;
@JS()
external set cubehelix(CubehelixColorFactory v);

