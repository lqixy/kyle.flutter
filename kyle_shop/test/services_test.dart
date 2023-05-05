import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kyle_shop/services/product_service.dart';

void main() {
  test('productServices', () {
    var service = ProductService();
    var list = service.getBaby();

    expect(list, isNotNull);
  });
}
