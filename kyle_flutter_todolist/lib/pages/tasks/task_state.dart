import 'package:kyle_flutter_todolist/models/todo_category.dart';
import 'package:kyle_flutter_todolist/models/todo_item.dart';

class TaskState {
  late List<TodoCategory> categories;
  // late List<TodoItem> todoItems;
  late int categoryId;

  TaskState() {
    categories = [];
    categoryId = 0;
    // todoItems = [];
  }
}
