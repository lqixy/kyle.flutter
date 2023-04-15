class ApiRequestInput {
  ApiRequestInput();

  ApiRequestInput.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class LoginApiRequestInput extends ApiRequestInput {
  String? account;
  String? password;

  LoginApiRequestInput({required this.account, required this.password});

  // RegisterApiRequestInput.fromJson(super.json) : super.fromJson();

  LoginApiRequestInput.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    account = json['account'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['account'] = account;

    data['password'] = password;
    return data;
  }
}
