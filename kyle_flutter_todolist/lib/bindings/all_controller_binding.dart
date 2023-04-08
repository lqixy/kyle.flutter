import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/bindings/todo_binding.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_binding.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_binding.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    TaskBinding().dependencies();
    CalendarBinding().dependencies();
    TodoBinding().dependencies();
  }
}
