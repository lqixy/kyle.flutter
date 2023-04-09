import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/logic/main_logic.dart';
import 'package:kyle_flutter_todolist/logic/todo_controller.dart';
import 'package:kyle_flutter_todolist/states/main_state.dart';
import 'package:kyle_flutter_todolist/states/todo_sate.dart';

class TodolistItemWidgetV2 extends StatelessWidget {
  DateTime? selectedDay;
  int? categoryId;

  TodoController controller = Get.find<TodoController>();
  TodoState state = Get.find<TodoController>().state;
  MainState mainState = Get.find<MainLogic>().state;

  TodolistItemWidgetV2({
    super.key,
    this.selectedDay,
    this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    if (mainState.index == 0) {
      controller.reloadData(categoryId: categoryId);
    } else {
      controller.reloadData(selectedDay: selectedDay);
    }

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
