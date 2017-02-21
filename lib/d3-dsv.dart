@JS()
library node_modules._types.d3_dsv;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-dsv module v1.0.1
/// Project: https://github.com/d3/d3-dsv/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// ------------------------------------------------------------------------------------------
/// Shared Types and Interfaces
/// ------------------------------------------------------------------------------------------
@anonymous
@JS()
abstract class DSVRowString {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class DSVRowAny {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class DSVParsedArray<T> implements List<T> {
  external List<String> get columns;
  external set columns(List<String> v);
}

/// ------------------------------------------------------------------------------------------
/// CSV Parsers and Formatters
/// ------------------------------------------------------------------------------------------
/// csvParse(...) ============================================================================
/*external DSVParsedArray<DSVRowString> csvParse(String csvString);*/
/*external DSVParsedArray<ParsedRow> csvParse<ParsedRow extends DSVRowAny>(String csvString, ParsedRow row(DSVRowString rawRow, num index, List<String> columns));*/
@JS()
external DSVParsedArray /*DSVParsedArray<DSVRowString>|DSVParsedArray<ParsedRow>*/ csvParse/*<ParsedRow extends DSVRowAny>*/(
    String csvString,
    [dynamic/*=ParsedRow*/ row(
        DSVRowString rawRow, num index, List<String> columns)]);

/// csvParseRows(...) ========================================================================
/*external List<List<String>> csvParseRows(String csvString);*/
/*external List<ParsedRow> csvParseRows<ParsedRow extends DSVRowAny>(String csvString, ParsedRow row(List<String> rawRow, num index));*/
@JS()
external List /*List<List<String>>|List<ParsedRow>*/ csvParseRows/*<ParsedRow extends DSVRowAny>*/(
    String csvString,
    [dynamic/*=ParsedRow*/ row(List<String> rawRow, num index)]);

/// csvFormat(...) ============================================================================
/*external String csvFormat(List<DSVRowAny> rows);*/
/*external String csvFormat(List<DSVRowAny> rows, List<String> columns);*/
@JS()
external String csvFormat(List<DSVRowAny> rows, [List<String> columns]);

/// csvFormatRows(...) ========================================================================
@JS()
external String csvFormatRows(List<List<String>> rows);

/// ------------------------------------------------------------------------------------------
/// TSV Parsers and Formatters
/// ------------------------------------------------------------------------------------------
/// tsvParse(...) ============================================================================
/*external DSVParsedArray<DSVRowString> tsvParse(String tsvString);*/
/*external DSVParsedArray<MappedRow> tsvParse<MappedRow extends DSVRowAny>(String tsvString, MappedRow row(DSVRowString rawRow, num index, List<String> columns));*/
@JS()
external DSVParsedArray /*DSVParsedArray<DSVRowString>|DSVParsedArray<MappedRow>*/ tsvParse/*<MappedRow extends DSVRowAny>*/(
    String tsvString,
    [dynamic/*=MappedRow*/ row(
        DSVRowString rawRow, num index, List<String> columns)]);

/// tsvParseRows(...) ========================================================================
/*external List<List<String>> tsvParseRows(String tsvString);*/
/*external List<MappedRow> tsvParseRows<MappedRow extends DSVRowAny>(String tsvString, MappedRow row(List<String> rawRow, num index));*/
@JS()
external List /*List<List<String>>|List<MappedRow>*/ tsvParseRows/*<MappedRow extends DSVRowAny>*/(
    String tsvString,
    [dynamic/*=MappedRow*/ row(List<String> rawRow, num index)]);

/// tsvFormat(...) ============================================================================
/*external String tsvFormat(List<DSVRowAny> rows);*/
/*external String tsvFormat(List<DSVRowAny> rows, List<String> columns);*/
@JS()
external String tsvFormat(List<DSVRowAny> rows, [List<String> columns]);

/// tsvFormatRows(...) ========================================================================
@JS()
external String tsvFormatRows(List<List<String>> rows);

/// ------------------------------------------------------------------------------------------
/// DSV Generalized Parsers and Formatters
/// ------------------------------------------------------------------------------------------
@anonymous
@JS()
abstract class DSV {
  /*external DSVParsedArray<DSVRowString> parse(String dsvString);*/
  /*external DSVParsedArray<ParsedRow> parse<ParsedRow extends DSVRowAny>(String dsvString, ParsedRow row(DSVRowString rawRow, num index, List<String> columns));*/
  external DSVParsedArray /*DSVParsedArray<DSVRowString>|DSVParsedArray<ParsedRow>*/ parse/*<ParsedRow extends DSVRowAny>*/(
      String dsvString,
      [dynamic/*=ParsedRow*/ row(
          DSVRowString rawRow, num index, List<String> columns)]);
  /*external List<List<String>> parseRows(String dsvString);*/
  /*external List<ParsedRow> parseRows<ParsedRow extends DSVRowAny>(String dsvString, ParsedRow row(List<String> rawRow, num index));*/
  external List /*List<List<String>>|List<ParsedRow>*/ parseRows/*<ParsedRow extends DSVRowAny>*/(
      String dsvString,
      [dynamic/*=ParsedRow*/ row(List<String> rawRow, num index)]);
  /*external String format(List<DSVRowAny> rows);*/
  /*external String format(List<DSVRowAny> rows, List<String> columns);*/
  external String format(List<DSVRowAny> rows, [List<String> columns]);
  external String formatRows(List<List<String>> rows);
}

@JS()
external DSV dsvFormat(String delimiter);

