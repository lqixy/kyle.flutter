import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ttmall/models/recommend_good_model.dart';
import 'package:ttmall/models/recommend_model.dart';

class RecommendRepository {
  Future<List<RecommendModel>> get() async {
    var jsonStr = await rootBundle.loadString('assets/datas/recommend.json');
    List<dynamic> jsonMap = json.decode(jsonStr);

    return jsonMap.map((e) => RecommendModel.fromJson(e)).toList();
  }

  Future<List<RecommendGoodModel>> getGoods() async {
    var jsonStr =
        await rootBundle.loadString('assets/datas/recommendGoods.json');
    List<dynamic> jsonMap = json.decode(jsonStr);
    return jsonMap.map((e) => RecommendGoodModel.fromJson(e)).toList();
  }
  //  List<RecommendModel> getAsync() async {
  //   var jsonStr = await rootBundle.loadString('assets/datas/recommend.json');
  //   List<dynamic> jsonMap = json.decode(jsonStr);

  //   return jsonMap.map((e) => RecommendModel.fromJson(e)).toList();
  // }
}
