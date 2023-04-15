import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

class ApiResponseResult {
  String? message;
  int? code;
  bool? success;
  Map<String, dynamic>? data;
  // ApiResponseResultData? data;

  ApiResponseResult({this.success, this.code, this.message, this.data});

  ApiResponseResult.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class ApiResponseResultData {
  ApiResponseResultData.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

// part 'api_response_result.g.dart';

// @JsonSerializable()
// class ApiResponseResult extends Object {
//   @JsonKey(name: 'success')
//   bool success;

//   @JsonKey(name: 'message')
//   String message;

//   @JsonKey(name: 'data')
//   ApiResponseResultData data;

//   @JsonKey(name: 'code')
//   int code;

//   ApiResponseResult(
//     this.success,
//     this.message,
//     this.data,
//     this.code,
//   );

//   factory ApiResponseResult.fromJson(Map<String, dynamic> srcJson) =>
//       _$ApiResponseResultFromJson(srcJson);

//   Map<String, dynamic> toJson() => _$ApiResponseResultToJson(this);
// }

// @JsonSerializable()
// class ApiResponseResultData extends Object {
//   ApiResponseResultData();

//   factory ApiResponseResultData.fromJson(Map<String, dynamic> srcJson) =>
//       _$ApiResponseResultDataFromJson(srcJson);

//   Map<String, dynamic> toJson() => _$ApiResponseResultDataToJson(this);
// }

  


// class ApiResponseResult{
//   String? message;
//   int? code;
//   bool? success;
//   ApiResponseResultData? data;
// }


// class ApiResponseResultData{

// }
 