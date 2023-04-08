import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/common/date_util.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';
import 'package:kyle_flutter_todolist/states/todo_sate.dart';

class TodoController extends GetxController {
  final TodoService service;

  TodoController(this.service);

  late TodoState state;

  @override
  void onInit() {
    var list = service.get();
    state = TodoState(todoList: list);

    super.onInit();
  }

  void getAllByCategoryId(int id) {
    if (id > 0) {
      state.todoList = service.get(predicate: (x) => x.categoryId == id);
    } else {
      state.todoList = service.get();
    }
    update();
  }

  void getByDeadline(DateTime date) {
    state.todoList =
        service.get(predicate: (x) => x.deadline == date.convertToDate());

    update();
  }

  void deleteTodoItem(int id) {
    state.todoList.removeWhere((element) => element.id == id);
    update();
  }

  void staredTodoItem(int index) {
    var cur = state.todoList.firstWhere((element) => element.id == index);
    cur.isMark = !cur.isMark;
    // cur.mark(!cur.isMark);
    update();
  }

  void checkedTodoItem(int index) {
    var cur = state.todoList.firstWhere((element) => element.id == index);
    // cur.setFinished(finished);
    cur.finished = !cur.finished;
    update();
  }
}
