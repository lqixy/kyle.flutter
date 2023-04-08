import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';
import '../logic/todo_controller.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(() => TodoController(TodoService()));
  }
}
