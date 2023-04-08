import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_controller.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_state.dart';
import 'package:kyle_flutter_todolist/widgets/add_todo_item_bottom_sheet.dart';
import 'package:kyle_flutter_todolist/widgets/todo_list_item_widget.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../logic/todo_controller.dart';

// class CalendarPageV2 extends StatefulWidget {
//   const CalendarPageV2({super.key});

//   @override
//   State<CalendarPageV2> createState() => _CalendarPageV2State();
// }

// class _CalendarPageV2State extends State<CalendarPageV2> {
//   CalendarController controller = Get.find<CalendarController>();
//   CalendarState state = Get.find<CalendarController>().state;
//   TodoController todoController = Get.find<TodoController>();
//   TodoState todoState = Get.find<TodoController>().state;

//   @override
//   void initState() {
//     super.initState();
//     // controller.onInit();
//     // todoController.onInit();
//     todoController.getByDeadline(state.selectedDay);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(1),
//               // flex: 2,
//               child: GetBuilder<CalendarController>(
//                   builder: (controller) => TableCalendar(
//                         currentDay: controller.state.focusedDay,
//                         focusedDay: controller.state.selectedDay,
//                         firstDay: DateTime(2000),
//                         lastDay: DateTime(2099),
//                         eventLoader: (day) {
//                           return controller.getEventsForDay(day);
//                         },
//                         onDaySelected: (selectedDay, focusedDay) {
//                           // controller.changeSelectedDate(time)
//                           if (!isSameDay(
//                               controller.state.selectedDay, selectedDay)) {
//                             controller.changeSelectedDate(
//                                 selectedDay, focusedDay);
//                             todoController.getByDeadline(selectedDay);
//                           }
//                         },
//                         selectedDayPredicate: (day) =>
//                             isSameDay(controller.state.selectedDay, day),
//                       )),
//             ),
//             Expanded(flex: 1, child: TodolistItemWidgetV2()

//                 )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.bottomSheet(AddTodoItemBottomSheet());
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class CalendarPage extends StatelessWidget {
  // const CalendarPage({super.key});

  CalendarController controller = Get.find<CalendarController>();
  CalendarState state = Get.find<CalendarController>().state;
  TodoController todoController = Get.find<TodoController>();
  // TodoState todoState = Get.find<TodoController>().state;

  // CalendarFormat _calendarFormat = CalendarFormat.month;
  // DateTime _focusedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
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
                          return controller.getEventsForDay(day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          // controller.changeSelectedDate(time)
                          if (!isSameDay(
                              controller.state.selectedDay, selectedDay)) {
                            controller.changeSelectedDate(
                                selectedDay, focusedDay);
                            todoController.getByDeadline(selectedDay);
                          }
                        },
                        selectedDayPredicate: (day) =>
                            isSameDay(controller.state.selectedDay, day),
                      )),
            ),
            Expanded(flex: 1, child: TodolistItemWidgetV2()
                // SlidableAutoCloseBehavior(
                //     child: GetBuilder<CalendarController>(
                //   builder: (controller) {
                //     return ListView.builder(
                //       itemCount: controller.state.todoItems.length,
                //       itemBuilder: (context, index) {
                //         var item = controller.state.todoItems[index];
                //         return TodolistItemWidget(
                //           item: controller.state.todoItems[index],
                //           starOnPressed: (context) {
                //             controller.staredTodoItem(item.id);
                //             // staredTodoItem(controller.state.todoItems[index].id);
                //           },
                //           deleteOnPressed: (context) {
                //             controller.deleteTodoItem(item.id);
                //             // deleteTodoItem(controller.state.todoItems[index].id);
                //           },
                //           checkBoxOnChanged: (value) {
                //             controller.checkedTodoItem(item.id);
                //             // checkedTodoItem(controller.state.todoItems[index].id);
                //           },
                //         );
                //       },
                //     );
                //   },
                // ))
                )
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
