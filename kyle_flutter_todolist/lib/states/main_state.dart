import 'package:kyle_flutter_todolist/common/date_util.dart';

class MainState {
  late int index;
  late int categoryId;
  late DateTime selectedDay;

  MainState() {
    index = 0;
    categoryId = 0;
    selectedDay = DateTime.now().convertToDate();
  }
}
