import 'package:kyle_flutter_todolist/models/todo_item.dart';

class CalendarState {
  DateTime selectedDay;
  DateTime focusedDay;
  Map<DateTime, List>? eventDays = {};
  List? eventDatas = [];

  // List<TodoItem> todoItems = [];

  CalendarState(
      {required this.selectedDay,
      required this.focusedDay,
      // required this.todoItems,
      this.eventDays,
      this.eventDatas});
}
