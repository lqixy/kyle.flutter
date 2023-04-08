import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/main.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_state.dart';
import 'package:kyle_flutter_todolist/service/category_service.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';

class TaskController extends GetxController {
  final TodoService todoService;
  final CategoryService categoryService;

  TaskController(this.todoService, this.categoryService);

  TaskState state = TaskState();

  @override
  void onInit() {
    // var list = todoService.getAll();
    // var categories = categoryService.getAll();
    state.categories = categoryService.getAll();
    // state.todoItems = todoService.get();
    super.onInit();
  }

  // void deleteTodoItem(int id) {
  //   state.todoItems.removeWhere((element) => element.id == id);
  //   update();
  // }

  // void staredTodoItem(int index) {
  //   var cur = state.todoItems.firstWhere((element) => element.id == index);
  //   cur.isMark = !cur.isMark;
  //   // cur.mark(!cur.isMark);
  //   update();
  // }

  // void checkedTodoItem(int index) {
  //   var cur = state.todoItems.firstWhere((element) => element.id == index);
  //   // cur.setFinished(finished);
  //   cur.finished = !cur.finished;
  //   update();
  // }

  void jumpToCategoryPage() {
    Get.toNamed(RouteConfig.categoryPage);
  }

  // void getAllByCategoryId(int id) {
  //   if (id > 0) {
  //     state.todoItems = todoService.getAllByCategoryId(id);
  //   } else {
  //     state.todoItems = todoService.get();
  //   }
  //   update();
  // }
}
