import 'package:dio/dio.dart';

class DioHelper {
  DioHelper._internal();

  static final DioHelper _instance = DioHelper._internal();

  factory DioHelper() {
    return _instance;
  }
}
