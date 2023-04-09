// import 'package:collection/collection.dart';
import 'package:kyle_flutter_todolist/models/todo_item.dart';

class TodoState {
  // List<TodoItem> sources;
  List<TodoItem> todoList;
  // Map<DateTime, List> eventDays;
  // {
  //   return sources.groupListsBy((element) => element.deadline);
  // }

  TodoState({required this.todoList});
}
