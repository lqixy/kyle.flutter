import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:kyle_flutter_todolist/logic/todo_controller.dart';
import 'package:kyle_flutter_todolist/models/todo_item.dart';
import 'package:kyle_flutter_todolist/states/todo_sate.dart';

import '../pages/tasks/task_controller.dart';

class TodolistItemWidget extends StatelessWidget {
  // const TodolistItemWidget({super.key});
  TodoItem item;
  SlidableActionCallback? starOnPressed;
  SlidableActionCallback? calendarOnPressed;
  SlidableActionCallback? deleteOnPressed;
  ValueChanged<bool?>? checkBoxOnChanged;

  TodolistItemWidget(
      {super.key,
      required this.item,
      this.starOnPressed,
      this.calendarOnPressed,
      this.deleteOnPressed,
      this.checkBoxOnChanged});

  @override
  Widget build(BuildContext context) {
    return Slidable(
        endActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            icon: item.isMark ? Icons.star : Icons.star_outline,
            backgroundColor: Color.fromARGB(255, 70, 189, 244),
            foregroundColor: item.isMark ? Colors.blue : Colors.white,
            // onPressed: starOnPressed,
            // onPressed: starOnPressed,
            onPressed: starOnPressed,
          ),
          SlidableAction(
            icon: Icons.calendar_month_outlined,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            // onPressed: calendarOnPressed,
            onPressed: calendarOnPressed,
          ),
          SlidableAction(
            icon: Icons.delete_outline,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: deleteOnPressed,
          ),
        ]),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          elevation: 0,
          child: ListTile(
            leading: Checkbox(
              activeColor: Colors.grey,
              shape: CircleBorder(),
              // onChanged: checkBoxOnChanged,
              onChanged: checkBoxOnChanged,
              value: item.finished,
            ),
            title: Text(
              item.title,
              style: item.finished
                  ? TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey[400])
                  : null,
            ),
            subtitle: item.time != null || item.remindTime != null
                ? Text('${item.time ?? ""}  ${item.remindTime ?? ""}')
                : null,
            // trailing: Text('${item.isMark}'),
          ),
        ));
  }
}

class TodolistItemWidgetV2 extends StatelessWidget {
  // const TodolistItemWidget({super.key});
  // TodoItem item;
  // SlidableActionCallback? starOnPressed;
  // SlidableActionCallback? calendarOnPressed;
  // SlidableActionCallback? deleteOnPressed;
  // ValueChanged<bool?>? checkBoxOnChanged;
  // GetxController controller;

  TodoController controller = Get.find<TodoController>();
  TodoState state = Get.find<TodoController>().state;

  TodolistItemWidgetV2({
    super.key,
    // required this.controller
    // required this.item,
    // this.starOnPressed,
    // this.calendarOnPressed,
    // this.deleteOnPressed,
    // this.checkBoxOnChanged
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(child: GetBuilder<TodoController>(
      builder: (controller) {
        return ListView.builder(
          itemCount: controller.state.todoList.length,
          itemBuilder: (context, index) {
            var item = controller.state.todoList[index];
            return Slidable(
                endActionPane: ActionPane(motion: DrawerMotion(), children: [
                  SlidableAction(
                    icon: item.isMark ? Icons.star : Icons.star_outline,
                    backgroundColor: Color.fromARGB(255, 70, 189, 244),
                    foregroundColor: item.isMark ? Colors.blue : Colors.white,
                    // onPressed: starOnPressed,
                    // onPressed: starOnPressed,
                    onPressed: (context) {
                      controller.staredTodoItem(item.id);
                    },
                  ),
                  SlidableAction(
                    icon: Icons.calendar_month_outlined,
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    // onPressed: calendarOnPressed,
                    onPressed: (context) {},
                  ),
                  SlidableAction(
                    icon: Icons.delete_outline,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    onPressed: (context) {
                      controller.deleteTodoItem(item.id);
                    },
                  ),
                ]),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  elevation: 0,
                  child: ListTile(
                    leading: Checkbox(
                      activeColor: Colors.grey,
                      shape: CircleBorder(),
                      // onChanged: checkBoxOnChanged,
                      onChanged: (context) {
                        controller.checkedTodoItem(item.id);
                      },
                      value: item.finished,
                    ),
                    title: Text(
                      item.title,
                      style: item.finished
                          ? TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey[400])
                          : null,
                    ),
                    subtitle: item.time != null || item.remindTime != null
                        ? Text('${item.time ?? ""}  ${item.remindTime ?? ""}')
                        : null,
                    // trailing: Text('${item.isMark}'),
                  ),
                ));
          },
        );
      },
    ));
  }
}


// todoListItemView({
//   // required int itemCount,
//   // required List<TodoItem> item,
//   required TodoItem item,
//   SlidableActionCallback? starOnPressed,
//   SlidableActionCallback? calendarOnPressed,
//   SlidableActionCallback? deleteOnPressed,
//   ValueChanged<bool?>? checkBoxOnChanged,
// }) {
//   return Slidable(
//       endActionPane: ActionPane(motion: DrawerMotion(), children: [
//         SlidableAction(
//           icon: item.isMark ? Icons.star : Icons.star_outline,
//           backgroundColor: Color.fromARGB(255, 70, 189, 244),
//           foregroundColor: item.isMark ? Colors.blue : Colors.white,
//           // onPressed: starOnPressed,
//           // onPressed: starOnPressed,
//           onPressed: starOnPressed,
//         ),
//         SlidableAction(
//           icon: Icons.calendar_month_outlined,
//           backgroundColor: Colors.blue,
//           foregroundColor: Colors.white,
//           // onPressed: calendarOnPressed,
//           onPressed: calendarOnPressed,
//         ),
//         SlidableAction(
//           icon: Icons.delete_outline,
//           backgroundColor: Colors.red,
//           foregroundColor: Colors.white,
//           onPressed: deleteOnPressed,
//         ),
//       ]),
//       child: Card(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15))),
//         elevation: 0,
//         child: ListTile(
//           leading: Checkbox(
//             activeColor: Colors.grey,
//             shape: CircleBorder(),
//             // onChanged: checkBoxOnChanged,
//             onChanged: checkBoxOnChanged,
//             value: item.finished,
//           ),
//           title: Text(
//             item.title,
//             style: item.finished
//                 ? TextStyle(
//                     decoration: TextDecoration.lineThrough,
//                     color: Colors.grey[400])
//                 : null,
//           ),
//           subtitle: item.time != null || item.remindTime != null
//               ? Text('${item.time ?? ""}  ${item.remindTime ?? ""}')
//               : null,
//           // trailing: Text('${item.isMark}'),
//         ),
//       ));
// }
