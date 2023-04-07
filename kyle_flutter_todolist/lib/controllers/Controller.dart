import 'package:get/get.dart';

class MyController extends GetxController {
// final MyRepository repository;
  MyController();
  var count = 0.obs;
  increment() => count++;
  // final _obj = ''.obs;
  // set obj(value) => this._obj.value = value;
  // get obj => this._obj.value;
}
