import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:kyle_shop/models/api_request_base.dart';
import 'package:kyle_shop/models/api_response_base.dart';

class HttpUtil {
  static const String _TOKEN =
      '4iSjaScvpbT53VBs3RxbKnPIuVUTC9pM6NHU0I-MIAEybh7iHUU7pu6XOBmxK0-kltMyDffo3xqzECVpoFYzPfZatI2jGbdB1bmERQ9PpwwO3MH9MYUGCufF_p4HG-zg8RKvmios9RLgGOeJC3mm9MIM25BtWvD8r3iAAaweglpyK9XSScBI317M7t-g7D46JIPfO2f7olcnQ02xNYN-mk5QvLpsdjzGTKLb0K_6wK3ZcQZ9QyQPaqCWFVuwhK1IGB-I4Gn7g7X7baiMQY7m-uDk4ObmuVjW9yNgZqz1_FuqiBEc3GD7cg2WI612HRQcj-7cCQECENdMSXZ30Q17KILKOLoNR62_cjbVwM3z7_C0CzEoN71TIccF1rxU77pxDRQfDRBYZfeHn_LjRVHl0jkAkQc';
  static HttpUtil? _instance;

  factory HttpUtil() => _getInstance()!;

  static HttpUtil get instance => _getInstance()!;

  static HttpUtil? _getInstance() {
    if (_instance == null) {
      _instance = HttpUtil._internal();
    }
    return _instance;
  }

  HttpUtil._internal() {
    init();
  }

  late Dio _dio;

  init() {
    BaseOptions options = BaseOptions(
        baseUrl: 'https://sapi.tongtongmall.com/tongtong/v6/api',
        connectTimeout: Duration(seconds: 5),
        headers: {'Authorization': 'Bearer $_TOKEN'});

    _dio = Dio(options);
  }

  Future<ApiResponseBase> requestGet(
      String action, ApiRequestBase input) async {
    // Response response;
    // ApiResponseBase result =ApiResponseBase();

    var response = await _dio.get(action, queryParameters: input.toJson());
    if (response.statusCode == 200) {
      return ApiResponseBase.fromJson(response.data);
    }
    return ApiResponseBase();
  }
}
