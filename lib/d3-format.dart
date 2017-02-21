@JS()
library node_modules._types.d3_format;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-format module v1.0.2
/// Project: https://github.com/d3/d3-format/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Specification of locale to use when creating a new FormatLocaleObject
@anonymous
@JS()
abstract class FormatLocaleDefinition {
  /// The decimal point (e.g., ".")
  external String /*'.'|','*/ get decimal;
  external set decimal(String /*'.'|','*/ v);

  /// The group separator (e.g., ","). Note that the thousands property is a misnomer, as\
  /// the grouping definition allows groups other than thousands.
  external String /*'.'|','|' '|'''*/ get thousands;
  external set thousands(String /*'.'|','|' '|'''*/ v);

  /// The array of group sizes (e.g., [3]), cycled as needed.
  external List<num> get grouping;
  external set grouping(List<num> v);

  /// The currency prefix and suffix (e.g., ["$", ""])
  external List<String> /*Tuple of <String,String>*/ get currency;
  external set currency(List<String> /*Tuple of <String,String>*/ v);
  external factory FormatLocaleDefinition(
      {String /*'.'|','*/ decimal,
      String /*'.'|','|' '|'''*/ thousands,
      List<num> grouping,
      List<String> /*Tuple of <String,String>*/ currency});
}

/// A Format Locale Object
@anonymous
@JS()
abstract class FormatLocaleObject {
  /// Returns a new format function for the given string specifier. The returned function
  /// takes a number as the only argument, and returns a string representing the formatted number.
  external Func1<num, String> format(String specifier);

  /// Returns a new format function for the given string specifier. The returned function
  /// takes a number as the only argument, and returns a string representing the formatted number.
  /// The returned function will convert values to the units of the appropriate SI prefix for the
  /// specified numeric reference value before formatting in fixed point notation.
  external Func1<num, String> formatPrefix(String specifier, num value);
}

/// A Format Specifier
/// For details see: [https://github.com/d3/d3-format#locale_format]
@anonymous
@JS()
abstract class FormatSpecifier {
  /// fill can be any character. The presence of a fill character is signaled by the align character following it.
  external String get fill;
  external set fill(String v);

  /// Alignment used for format, as set by choosing one of the following
  /// '>' - Forces the field to be right-aligned within the available space. (Default behavior).
  /// '<' - Forces the field to be left-aligned within the available space.
  /// '^' - Forces the field to be centered within the available space.
  /// '=' - Like '>', but with any sign and symbol to the left of any padding.
  external String /*'>'|'<'|'^'|'='*/ get align;
  external set align(String /*'>'|'<'|'^'|'='*/ v);

  /// The sign can be:
  /// '-' - nothing for positive and a minus sign for negative. (Default behavior.)
  /// '+' -  a plus sign for positive and a minus sign for negative.
  /// '(' - nothing for positive and parentheses for negative.
  /// ' '(space) -  a space for positive and a minus sign for negative.
  external String /*'-'|'+'|'('|' '*/ get sign;
  external set sign(String /*'-'|'+'|'('|' '*/ v);

  /// The symbol can be:
  /// '$' - apply currency symbols per the locale definition.
  /// '#' - for binary, octal, or hexadecimal notation, prefix by 0b, 0o, or 0x, respectively.
  /// ''(none) - no symbol.
  external String /*'$'|'#'|''*/ get symbol;
  external set symbol(String /*'$'|'#'|''*/ v);

  /// The zero (0) option enables zero-padding; this implicitly sets fill to 0 and align to =.
  external bool get zero;
  external set zero(bool v);

  /// The width defines the minimum field width;
  /// if not specified, then the width will be determined by the content.
  external dynamic /*num|dynamic*/ get width;
  external set width(dynamic /*num|dynamic*/ v);

  /// The comma (,) option enables the use of a group separator, such as a comma for thousands.
  external bool get comma;
  external set comma(bool v);

  /// Depending on the type, the precision either indicates the number of digits that follow the decimal point (types 'f' and '%'),
  /// or the number of significant digits (types ''​ (none), 'e', 'g', 'r', 's' and 'p'). If the precision is not specified,
  /// it defaults to 6 for all types except ''​ (none), which defaults to 12.
  /// Precision is ignored for integer formats (types 'b', 'o', 'd', 'x', 'X' and 'c').
  /// See precisionFixed and precisionRound for help picking an appropriate precision
  external num get precision;
  external set precision(num v);

  /// The available type values are:
  /// 'e' - exponent notation.
  /// 'f' - fixed point notation.
  /// 'g' - either decimal or exponent notation, rounded to significant digits.
  /// 'r' - decimal notation, rounded to significant digits.
  /// 's' - decimal notation with an SI prefix, rounded to significant digits.
  /// '%' - multiply by 100, and then decimal notation with a percent sign.
  /// 'p' - multiply by 100, round to significant digits, and then decimal notation with a percent sign.
  /// 'b' - binary notation, rounded to integer.
  /// 'o' - octal notation, rounded to integer.
  /// 'd' - decimal notation, rounded to integer.
  /// 'x' - hexadecimal notation, using lower-case letters, rounded to integer.
  /// 'X' - hexadecimal notation, using upper-case letters, rounded to integer.
  /// 'c' - converts the integer to the corresponding unicode character before printing.
  /// '' (none) - like g, but trim insignificant trailing zeros.
  /// The type 'n' is also supported as shorthand for ',g'. For the 'g', 'n' and ​''(none) types,
  /// decimal notation is used if the resulting string would have precision or fewer digits; otherwise, exponent notation is used.
  external String /*'e'|'f'|'g'|'r'|'s'|'%'|'p'|'b'|'o'|'d'|'x'|'X'|'c'|''|'n'*/ get type;
  external set type(
      String /*'e'|'f'|'g'|'r'|'s'|'%'|'p'|'b'|'o'|'d'|'x'|'X'|'c'|''|'n'*/ v);

  /// Return the object as a specifier string.
  external String toString();
}

/// Create a new locale-based object which exposes format(...) and formatPrefix(...)
/// methods for the specified locale.
@JS()
external FormatLocaleObject formatLocale(FormatLocaleDefinition locale);

/// Create a new locale-based object which exposes format(...) and formatPrefix(...)
/// methods for the specified locale definition. The specified locale definition will be
/// set as the new default locale definition.
@JS()
external FormatLocaleObject formatDefaultLocale(
    FormatLocaleDefinition defaultLocale);

/// Returns a new format function for the given string specifier. The returned function
/// takes a number as the only argument, and returns a string representing the formatted number.
/// Uses the current default locale.
/// The general form of a specifier is [​[fill]align][sign][symbol][0][width][,][.precision][type].
/// For reference, an explanation of the segments of the specifier string, refer to the FormatSpecifier interface properties.
@JS()
external Func1<num, String> format(String specifier);

/// Returns a new format function for the given string specifier. The returned function
/// takes a number as the only argument, and returns a string representing the formatted number.
/// The returned function will convert values to the units of the appropriate SI prefix for the
/// specified numeric reference value before formatting in fixed point notation.
/// Uses the current default locale.
/// The general form of a specifier is [​[fill]align][sign][symbol][0][width][,][.precision][type].
/// For reference, an explanation of the segments of the specifier string, refer to the FormatSpecifier interface properties.
@JS()
external Func1<num, String> formatPrefix(String specifier, num value);

/// Parses the specified specifier, returning an object with exposed fields that correspond to the
/// format specification mini-language and a toString method that reconstructs the specifier.
/// The general form of a specifier is [​[fill]align][sign][symbol][0][width][,][.precision][type].
/// For reference, an explanation of the segments of the specifier string, refer to the FormatSpecifier interface properties.
@JS()
external FormatSpecifier formatSpecifier(String specifier);

/// Returns a suggested decimal precision for fixed point notation given the specified numeric step value.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionFixed(num step);

/// Returns a suggested decimal precision for use with locale.formatPrefix given the specified
/// numeric step and reference value.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionPrefix(num step, num value);

/// Returns a suggested decimal precision for format types that round to significant digits
/// given the specified numeric step and max values.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionRound(num step, num max);

