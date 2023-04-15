import 'package:kyle_todos/models/api_response_result.dart';

class LoginResult extends ApiResponseResultData {
  String? key;
  int? expiresTime;

  LoginResult.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    key = json['key'];
    expiresTime = json['expiresTime'];
  }

  // LoginResult.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
  //   key = json['key'];
  //   expiresTime = json['expiresTime'];
  // }

  // @override
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};

  //   data['key'] = key;
  //   data['expiresTime'] = expiresTime;
  //   return data;
  // }

  // LoginResult.fromJson(Map<String,dynamic> json) : super.fromJson(json) {

  // key = json['key'];
  // expiresTime = json['expiresTime'];
  // }
}
