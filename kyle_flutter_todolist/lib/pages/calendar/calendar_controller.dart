import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/common/date_util.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_state.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';

class CalendarController extends GetxController {
  late CalendarState state;
  final TodoService todoService;
  CalendarController(this.todoService);
  // CalendarState(selectedTime: DateTime.now(), focusedDay: DateTime.now());

  @override
  void onInit() {
    var source = todoService.get();

    var now = DateTime.now().convertToDate();

    // var todoList = todoService.get(predicate: (x) => x.deadline == now);

    var eventDays = source.groupListsBy((element) => element.deadline);
    // var eventDays = monthTodos.map((e) => e.deadline.day).toSet().toList();
    // var eventDatas = eventDays[now.convertToDate()];
    state = CalendarState(
      selectedDay: now,
      focusedDay: now,
      // todoItems: todoList,
      eventDays: eventDays,
      // eventDatas: eventDatas
    );
    super.onInit();
  }

  void changeSelectedDate(DateTime selectedDay, DateTime focusedDay) {
    state.selectedDay = selectedDay;
    // state.todoItems = todoService.get(
    //     predicate: (x) => x.deadline == selectedDay.convertToDate());

    update();
  }

  List getEventsForDay(DateTime day) {
    // state.eventDatas =
    return state.eventDays![day.convertToDate()] ?? [];
    // update();
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
}
