class ApiRequestBase {
  ApiRequestBase();

  ApiRequestBase.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class ApiRequestRecommend extends ApiRequestBase {
  String? placename;
  ApiRequestRecommend({this.placename});

  ApiRequestRecommend.fromJson(Map<String, dynamic> json) {
    placename = json['placename'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['placename'] = this.placename;
    return data;
  }
}
