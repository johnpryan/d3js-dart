@JS()
library node_modules._types.d3_request;

import "package:js/js.dart";
import "package:func/func.dart";
import "dart:html" show HttpRequest, ProgressEvent, DocumentFragment;
import "d3-dsv.dart" show DSVRowAny, DSVRowString, DSVParsedArray;

/// Type definitions for D3JS d3-request module v1.0.2
/// Project: https://github.com/d3/d3-request/
/// Definitions by: Hugues Stefanski <https://github.com/Ledragon>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>, Tom Wanzek <https://github.com/tomwanzek>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class Request {
  external Request abort();
  /*external Request JS$get();*/
  /*external Request JS$get<RequestData>(RequestData data);*/
  /*external Request JS$get<ResponseData>(void callback(dynamic error, ResponseData d));*/
  /*external Request JS$get<RequestData, ResponseData>(RequestData data, void callback(dynamic error, ResponseData d));*/
  external Request JS$get/*<RequestData, ResponseData>*/(
      [dynamic /*RequestData|VoidFunc2<dynamic, ResponseData>*/ data_callback,
      void callback(dynamic error, dynamic/*=ResponseData*/ d)]);
  /*external String header(String name);*/
  /*external Request header(String name, String|Null value);*/
  external dynamic /*String|Request*/ header(String name, [String value]);
  /*external String|Null mimeType();*/
  /*external Request mimeType(String|Null value);*/
  external dynamic /*String|Request*/ mimeType([String value]);
  /*external VoidFunc1<HttpRequest> on('beforesend' type);*/
  /*external VoidFunc1<ProgressEvent> on('progress' type);*/
  /*external VoidFunc1<dynamic> on('error' type);*/
  /*external VoidFunc1<ResponseData> on<ResponseData>('load' type);*/
  /*external VoidFunc1<dynamic> on(String type);*/
  /*external Request on(String type, Null listener);*/
  /*external Request on('beforesend' type, void listener(Request JS$this, HttpRequest xhr));*/
  /*external Request on('progress' type, void listener(Request JS$this, ProgressEvent progressEvent));*/
  /*external Request on('error' type, void listener(Request JS$this, dynamic error));*/
  /*external Request on<ResponseData>('load' type, void listener(Request JS$this, ResponseData data));*/
  /*external Request on(String type, void listener(Request JS$this, dynamic data));*/
  external dynamic /*VoidFunc1<HttpRequest>|VoidFunc1<ProgressEvent>|VoidFunc1<dynamic>|VoidFunc1<ResponseData>|Request*/ on/*<ResponseData>*/(
      String /*'beforesend'|'progress'|'error'|'load'|String*/ type,
      [Function /*VoidFunc1<HttpRequest>|VoidFunc1<ProgressEvent>|VoidFunc1<dynamic>|VoidFunc1<ResponseData>*/ listener]);
  /*external String|Null password();*/
  /*external Request password(String value);*/
  external dynamic /*String|Request*/ password([String value]);
  /*external Request post();*/
  /*external Request post<RequestData>(RequestData data);*/
  /*external Request post<ResponseData>(void callback(Request JS$this, dynamic error, ResponseData d));*/
  /*external Request post<RequestData, ResponseData>(RequestData data, void callback(Request JS$this, dynamic error, ResponseData d));*/
  external Request post/*<RequestData, ResponseData>*/(
      [dynamic /*RequestData|VoidFunc2<dynamic, ResponseData>*/ data_callback,
      void callback(
          /*Request this*/ dynamic error, dynamic/*=ResponseData*/ d)]);
  external Request response/*<ResponseData>*/(
      dynamic/*=ResponseData*/ callback(/*Request this*/ HttpRequest response));
  /*external String|Null responseType();*/
  /*external Request responseType(String value);*/
  external dynamic /*String|Request*/ responseType([String value]);
  /*external Request send(String method);*/
  /*external Request send<RequestData>(String method, RequestData data);*/
  /*external Request send<ResponseData>(String method, void callback(Request JS$this, dynamic|Null error, ResponseData|Null d));*/
  /*external Request send<RequestData, ResponseData>(String method, RequestData data, void callback(Request JS$this, dynamic|Null error, ResponseData|Null d));*/
  external Request send/*<RequestData, ResponseData>*/(String method,
      [dynamic /*RequestData|VoidFunc2<dynamic|Null, ResponseData|Null>*/ data_callback,
      void callback(/*Request this*/ dynamic /*dynamic|Null*/ error,
          dynamic /*ResponseData|Null*/ d)]);
  /*external num timeout();*/
  /*external Request timeout(num value);*/
  external dynamic /*num|Request*/ timeout([num value]);
  /*external String|Null user();*/
  /*external Request user(String value);*/
  external dynamic /*String|Request*/ user([String value]);
}

@anonymous
@JS()
abstract class DsvRequest implements Request {
  external DsvRequest row/*<ParsedRow extends DSVRowAny>*/(
      dynamic/*=ParsedRow*/ value(
          DSVRowString rawRow, num index, List<String> columns));
}

/*external DsvRequest csv(String url);*/
/*external DsvRequest csv(
    String url,
    void callback(
        DsvRequest JS$this, dynamic error, DSVParsedArray<DSVRowString> d));*/
/*external DsvRequest csv<ParsedRow extends DSVRowAny>(String url, ParsedRow row(DSVRowString rawRow, num index, List<String> columns), void callback(DsvRequest JS$this, dynamic error, DSVParsedArray<ParsedRow> d));*/
@JS()
external DsvRequest csv/*<ParsedRow extends DSVRowAny>*/(String url,
    [Function /*VoidFunc2<dynamic, DSVParsedArray<DSVRowString>>|Func3<DSVRowString, num, List<String>, ParsedRow>*/ callback_row,
    void callback(/*DsvRequest this*/ dynamic error,
        DSVParsedArray<dynamic/*=ParsedRow*/ > d)]);
/*external Request html(String url);*/
/*external Request html(String url,
    void callback(Request JS$this, dynamic error, DocumentFragment d));*/
@JS()
external Request html(String url,
    [void callback(/*Request this*/ dynamic error, DocumentFragment d)]);
/*external Request json(String url);*/
/*external Request json<ParsedObject extends JSMap of <String,dynamic>>(String url, void callback(Request JS$this, dynamic error, ParsedObject d));*/
@JS()
external Request json/*<ParsedObject extends JSMap of <String,dynamic>>*/(
    String url,
    [void callback(
        /*Request this*/ dynamic error, dynamic/*=ParsedObject*/ d)]);
/*external Request request(String url);*/
/*external Request request(
    String url, void callback(Request JS$this, dynamic error, HttpRequest d));*/
@JS()
external Request request(String url,
    [void callback(/*Request this*/ dynamic error, HttpRequest d)]);
/*external Request text(String url);*/
/*external Request text(
    String url, void callback(Request JS$this, dynamic error, String d));*/
@JS()
external Request text(String url,
    [void callback(/*Request this*/ dynamic error, String d)]);
/*external DsvRequest tsv(String url);*/
/*external DsvRequest tsv(
    String url,
    void callback(
        DsvRequest JS$this, dynamic error, DSVParsedArray<DSVRowString> d));*/
/*external DsvRequest tsv<ParsedRow extends DSVRowAny>(String url, ParsedRow row(DSVRowString rawRow, num index, List<String> columns), void callback(DsvRequest JS$this, dynamic error, DSVParsedArray<ParsedRow> d));*/
@JS()
external DsvRequest tsv/*<ParsedRow extends DSVRowAny>*/(String url,
    [Function /*VoidFunc2<dynamic, DSVParsedArray<DSVRowString>>|Func3<DSVRowString, num, List<String>, ParsedRow>*/ callback_row,
    void callback(/*DsvRequest this*/ dynamic error,
        DSVParsedArray<dynamic/*=ParsedRow*/ > d)]);
/*external Request xml(String url);*/
/*external Request xml(
    String url, void callback(Request JS$this, dynamic error, dynamic d));*/
@JS()
external Request xml(String url,
    [void callback(/*Request this*/ dynamic error, dynamic d)]);

