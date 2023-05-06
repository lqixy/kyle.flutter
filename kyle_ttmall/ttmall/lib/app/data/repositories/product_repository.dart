import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ttmall/models/product_info_model.dart';

class ProductRepository {
  Future<ProductInfoModel> get() async {
    var jsonStr = await rootBundle.loadString('assets/datas/productInfo.json');
    return ProductInfoModel.fromJson(json.decode(jsonStr));
  }
}
