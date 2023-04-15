import 'package:kyle_todos/models/api_request_input.dart';

class Register extends ApiRequestInput {
  String? account;
  String? password;
  String? email;
  String? mobile;

  Register({this.account, this.password, this.email, this.mobile});

  Register.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    // account = json['account'];
    account = json['account'];
    password = json['password'];
    email = json['email'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['account'] = this.account;
    data['account'] = this.account;
    data['password'] = this.password;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    return data;
  }
}
