import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/common/date_util.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_state.dart';
import 'package:kyle_flutter_todolist/service/todo_service.dart';

class CalendarController extends GetxController {
  TodoService service;
  CalendarController({required this.service});
  late CalendarState state;

  @override
  void onInit() {
    // var source = todoService.get();

    var now = DateTime.now().convertToDate();
    // var source = service.get();
    var eventDays = _getEventDasy();

    state = CalendarState(
      selectedDay: now,
      focusedDay: now,
      eventDays: eventDays,
    );
    super.onInit();
  }

  void changeSelectedDate(DateTime selectedDay, DateTime focusedDay) {
    state.selectedDay = selectedDay;
    update();
  }

  void loadEventDasy() {
    state.eventDays = _getEventDasy();
  }

  Map<DateTime, List> _getEventDasy() {
    var source = service.get();
    var eventDays = source.groupListsBy((element) => element.deadline);
    return eventDays;
  }

  // List getEventsForDay(DateTime day) {
  //   // state.eventDatas =
  //   return state.eventDays![day.convertToDate()] ?? [];
  //   // update();
  // }
}
