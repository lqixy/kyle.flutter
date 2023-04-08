import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/states/main_state.dart';

class MainLogic extends GetxController {
  MainState state = MainState();

  changeIndex(int index) {
    state.index = index;
    update();
  }
}
