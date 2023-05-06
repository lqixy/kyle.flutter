import 'package:flutter_test/flutter_test.dart';
import 'package:ttmall/app/data/repositories/product_repository.dart';
import 'package:ttmall/app/data/repositories/recommend_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('recommend', () {
    test('get', () async {
      var result = await RecommendRepository().get();
      expect(result, isNotNull);
    });

    test('getGoods', () async {
      var result = await RecommendRepository().getGoods();
      expect(result, isNotNull);
    });
  });

  group('product', () {
    test('get', () async {
      var result = await ProductRepository().get();
      expect(result, isNotNull);
    });
  });
}
