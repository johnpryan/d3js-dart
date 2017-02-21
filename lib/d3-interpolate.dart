@JS()
library node_modules._types.d3_interpolate;

import "package:js/js.dart";
import "package:func/func.dart";
import "d3-color.dart" show ColorCommonInstance;

/// Type definitions for D3JS d3-interpolate module v1.1.1
/// Project: https://github.com/d3/d3-interpolate/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------
@anonymous
@JS()
abstract class ZoomInterpolator implements Function {
  external List<num> /*Tuple of <num,num,num>*/ call(num t);

  /// Recommended duration of zoom transition in ms
  external num get duration;
  external set duration(num v);
}

@anonymous
@JS()
abstract class ColorGammaInterpolationFactory implements Function {
  external Func1<num, String> call(dynamic /*String|ColorCommonInstance*/ a,
      dynamic /*String|ColorCommonInstance*/ b);
  external ColorGammaInterpolationFactory gamma(num g);
}

/// Type zoomView is used to represent a numeric array with three elements.
/// In order of appearance the elements correspond to:
/// - cx: x-coordinate of the center of the viewport
/// - cy: y-coordinate of the center of the viewport
/// - width: size of the viewport
/*export type ZoomView = [number, number, number];*/
/// --------------------------------------------------------------------------
/// Interpolation Function Factories
/// --------------------------------------------------------------------------
/*external Func1<num, Null> interpolate(dynamic a, Null b);*/
/*external Func1<num, num> interpolate(num|{ valueOf(): number } a, num b);*/
/*external Func1<num, String> interpolate(dynamic a, ColorCommonInstance b);*/
/*external Func1<num, DateTime> interpolate(DateTime a, DateTime b);*/
/*external Func1<num, String> interpolate(String|{ toString(): string } a, String b);*/
/*external Func1<num, U> interpolate<U extends List<dynamic>>(List<dynamic> a, U b);*/
/*external Func1<num, num> interpolate(num|{ valueOf(): number } a, { valueOf(): number } b);*/
/*external Func1<num, U> interpolate<U extends Object>(dynamic a, U b);*/
/*external Func1<num, JSMap of <String,dynamic>> interpolate(dynamic a, JSMap of <String,dynamic> b);*/
@JS()
external dynamic /*Func1<num, Null>|Func1<num, num>|Func1<num, String>|Func1<num, DateTime>|Func1<num, U>|Func1<num, JSMap of <String,dynamic>>*/ interpolate/*<U>*/(
    dynamic /*dynamic|num|{ valueOf(): number }|DateTime|String|{ toString(): string }|List<dynamic>*/ a,
    dynamic /*num|ColorCommonInstance|DateTime|String|U|{ valueOf(): number }|JSMap of <String,dynamic>*/ b);
@JS()
external Func1<num, num> interpolateNumber(
    dynamic /*num|{ valueOf(): number }*/ a,
    dynamic /*num|{ valueOf(): number }*/ b);
@JS()
external Func1<num, num> interpolateRound(
    dynamic /*num|{ valueOf(): number }*/ a,
    dynamic /*num|{ valueOf(): number }*/ b);
@JS()
external Func1<num, String> interpolateString(
    dynamic /*String|{ toString(): string }*/ a,
    dynamic /*String|{ toString(): string }*/ b);
@JS()
external Func1<num, DateTime> interpolateDate(DateTime a, DateTime b);
@JS()
external Func1<num, dynamic/*=A*/ > interpolateArray/*<A extends List<dynamic>>*/(
    List<dynamic> a, dynamic/*=A*/ b);
/*external Func1<num, U> interpolateObject<U extends Object>(dynamic a, U b);*/
/*external Func1<num, JSMap of <String,dynamic>> interpolateObject(JSMap of <String,dynamic> a, JSMap of <String,dynamic> b);*/
@JS()
external Func1<num, dynamic> /*Func1<num, U>|Func1<num, JSMap of <String,dynamic>>*/ interpolateObject/*<U extends Object>*/(
    dynamic /*dynamic|JSMap of <String,dynamic>*/ a,
    dynamic /*U|JSMap of <String,dynamic>*/ b);
@JS()
external Func1<num, String> interpolateTransformCss(String a, String b);
@JS()
external Func1<num, String> interpolateTransformSvg(String a, String b);

/// Create Interpolator for zoom views
@JS()
external ZoomInterpolator interpolateZoom(
    List<num> /*Tuple of <num,num,num>*/ a,
    List<num> /*Tuple of <num,num,num>*/ b);
@JS()
external List<dynamic/*=T*/ > quantize/*<T>*/(
    Func1<num, dynamic/*=T*/ > interpolator, num n);

/// Color interpolation related
@JS()
external ColorGammaInterpolationFactory get interpolateRgb;
@JS()
external set interpolateRgb(ColorGammaInterpolationFactory v);
@JS()
external Func1<num, String> interpolateRgbBasis(
    List<dynamic /*String|ColorCommonInstance*/ > colors);
@JS()
external Func1<num, String> interpolateRgbBasisClosed(
    List<dynamic /*String|ColorCommonInstance*/ > colors);
@JS()
external Func1<num, String> interpolateHsl(
    dynamic /*String|ColorCommonInstance*/ a,
    dynamic /*String|ColorCommonInstance*/ b);
@JS()
external Func1<num, String> interpolateHslLong(
    dynamic /*String|ColorCommonInstance*/ a,
    dynamic /*String|ColorCommonInstance*/ b);
@JS()
external Func1<num, String> interpolateLab(
    dynamic /*String|ColorCommonInstance*/ a,
    dynamic /*String|ColorCommonInstance*/ b);
@JS()
external Func1<num, String> interpolateHcl(
    dynamic /*String|ColorCommonInstance*/ a,
    dynamic /*String|ColorCommonInstance*/ b);
@JS()
external Func1<num, String> interpolateHclLong(
    dynamic /*String|ColorCommonInstance*/ a,
    dynamic /*String|ColorCommonInstance*/ b);
@JS()
external ColorGammaInterpolationFactory get interpolateCubehelix;
@JS()
external set interpolateCubehelix(ColorGammaInterpolationFactory v);
@JS()
external ColorGammaInterpolationFactory get interpolateCubehelixLong;
@JS()
external set interpolateCubehelixLong(ColorGammaInterpolationFactory v);

/// Spline related
@JS()
external Func1<num, num> interpolateBasis(List<num> splineNodes);
@JS()
external Func1<num, num> interpolateBasisClosed(List<num> splineNodes);

