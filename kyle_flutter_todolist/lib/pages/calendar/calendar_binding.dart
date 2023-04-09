import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';

import 'calendar_controller.dart';

class CalendarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalendarController>(
        () => CalendarController(service: TodoService()));
  }
}
