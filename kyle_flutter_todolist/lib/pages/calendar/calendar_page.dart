import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/common/date_util.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_controller.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_state.dart';
import 'package:kyle_flutter_todolist/widgets/add_todo_item_bottom_sheet.dart';
import 'package:kyle_flutter_todolist/widgets/todo_list_item_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../logic/todo_controller.dart';

class CalendarPage extends StatelessWidget {
  CalendarController controller = Get.find<CalendarController>();
  CalendarState state = Get.find<CalendarController>().state;
  TodoController todoController = Get.find<TodoController>();
  // TodoState todoState = Get.find<TodoController>().state;

  @override
  Widget build(BuildContext context) {
    // controller.loadEventDasy();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(1),
              // flex: 2,
              child: GetBuilder<CalendarController>(
                  builder: (controller) => TableCalendar(
                        currentDay: controller.state.focusedDay,
                        focusedDay: controller.state.selectedDay,
                        firstDay: DateTime(2000),
                        lastDay: DateTime(2099),
                        eventLoader: (day) {
                          return state.eventDays[day.convertToDate()] ?? [];
                          // return controller.getEventsForDay(day);
                          // return state.eventDays![day.convertToDate()] ?? [];
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          // controller.changeSelectedDate(time)
                          if (!isSameDay(
                              controller.state.selectedDay, selectedDay)) {
                            controller.changeSelectedDate(
                                selectedDay, focusedDay);
                            controller.loadEventDasy();
                            todoController.getByDeadline(selectedDay);
                          }
                        },
                        selectedDayPredicate: (day) =>
                            isSameDay(controller.state.selectedDay, day),
                      )),
            ),
            Expanded(
                flex: 1,
                child: TodolistItemWidgetV2(
                  selectedDay: state.selectedDay,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(AddTodoItemBottomSheet());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
