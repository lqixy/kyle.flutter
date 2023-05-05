class ApiResponseBase {
  String? msg;
  // bool? success;
  int? code;
  dynamic? data;

  bool? get success => code == 1100;

  ApiResponseBase({this.msg, this.code, this.data});

  ApiResponseBase.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    // success = json['success'];
    code = json['code'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    // data['success'] = this.success;
    data['code'] = this.code;

    data['data'] = this.data;

    return data;
  }
}
