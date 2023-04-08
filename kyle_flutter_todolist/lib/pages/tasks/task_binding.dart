import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_controller.dart';
import 'package:kyle_flutter_todolist/service/category_service.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';

class TaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(
        () => TaskController(TodoService(), CategoryService()));
  }
}
