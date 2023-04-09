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
    state.categories = categoryService.getAll();

    super.onInit();
  }

  void jumpToCategoryPage() {
    Get.toNamed(RouteConfig.categoryPage);
  }

  void selectedCategoryId(int id) {
    state.categoryId = id;
    update();
  }
}
