import 'package:flutter_test/flutter_test.dart';
import 'package:kyle_shop/common/http_util.dart';
import 'package:kyle_shop/models/api_request_base.dart';

void main() {
  test('get', () async {
    var input = ApiRequestRecommend(placename: '首页-三图专区');
    var result =
        await HttpUtil.instance.requestGet('/public/recommend-ver4', input);

    expect(result.success, true);
  });
}
