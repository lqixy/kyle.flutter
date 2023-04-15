import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kyle_todos/models/api_request_input.dart';
import 'package:kyle_todos/utils/baseUrl.dart';

import '../models/api_response_result.dart';

class HttpUtil {
  HttpUtil._internal();

  factory HttpUtil() => _instance;

  static late final HttpUtil _instance = HttpUtil._internal();

  static Future<ApiResponseResult> requestPost(
      String url, ApiRequestInput input) async {
    // ApiResult result = ApiResult();
    ApiResponseResult result = ApiResponseResult();
    var uri = Uri.parse(url);
    // var header = <String, String>{
    //   'Content-Type': 'application/json; charset=UTF-8'
    // };
    var body = jsonEncode(input.toJson());
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);
      // ApiResponseResultData data = ApiResponseResultData();

      // ApiResponseResultData.fromJson(map['data']);
      result = ApiResponseResult.fromJson(map);
      // print(map['data']);
      // result = ApiResponseResultBase.fromJson(map);
      // var data = map['data'];
      // result.data = ;
    }

    return result;
  }

  // static Future<ApiResponseResult<ApiResponseResultData>> requestPost<T extends ApiResponseResultData>(
  //     String url, ApiRequestInput input) async {
  //   // ApiResult result = ApiResult();
  //   ApiResponseResult<ApiResponseResultData> result = ApiResponseResult();
  //   var uri = Uri.parse(url);
  //   // var header = <String, String>{
  //   //   'Content-Type': 'application/json; charset=UTF-8'
  //   // };
  //   var body = jsonEncode(input.toJson());
  //   var response = await http.post(uri,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: body);
  //   if (response.statusCode == 200) {
  //     var map = json.decode(response.body);
  //     print(map['data']);
  //     ApiResponseResultData.fromJson(map['data']);
  //     result =ApiResponseResult<ApiResponseResultData>.fromJson(map);
  //     // var data = map['data'];
  //     // result.data = ;
  //   }

  //   return result;
  // }

  static Future requestGet(String url, dynamic data,
      {Map<String, String>? params}) async {
    url = joinParams(params, url);

    try {
      Uri uri = Uri.parse(url);
      var response = await http.get(uri);
      if (response.statusCode == 200) {}
    } catch (e) {}
  }

  static String joinParams(Map<String, String>? params, String url) {
    if (params != null && params.isNotEmpty) {
      StringBuffer stringBuffer = StringBuffer('?');
      params.forEach((key, value) {
        stringBuffer.write('$key=$value&');
      });

      String paramStr = stringBuffer.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url = url + paramStr;
    }

    return url;
  }
}
