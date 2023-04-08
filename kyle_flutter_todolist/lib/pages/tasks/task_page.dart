import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_controller.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_state.dart';
import 'package:kyle_flutter_todolist/pages/tasks/widgets/task_category_widget.dart';
import 'package:kyle_flutter_todolist/widgets/todo_list_item_widget.dart';

// class TaskPageV2 extends StatefulWidget {
//   const TaskPageV2({super.key});

//   @override
//   State<TaskPageV2> createState() => _TaskPageV2State();
// }

// class _TaskPageV2State extends State<TaskPageV2> {
//   TaskController taskController = Get.find<TaskController>();
//   TaskState state = Get.find<TaskController>().state;

//   @override
//   void initState() {
//     super.initState();
//     // taskController.onInit();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                     flex: 1,
//                     child: IconButton(
//                         onPressed: () {}, icon: Icon(Icons.menu_outlined))),
//                 Expanded(flex: 8, child: TextField()),
//                 Expanded(
//                     flex: 1,
//                     child: IconButton(
//                         onPressed: () {}, icon: Icon(Icons.abc_outlined)))
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: TaskCategoryWidget(),
//           ),
//           Expanded(child: TodolistItemWidgetV2()
//               )
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class TaskPage extends StatelessWidget {
  // const TaskPage({super.key});

  TaskController taskController = Get.find<TaskController>();
  TaskState state = Get.find<TaskController>().state;
  // TodoController todoController = Get.find<TodoController>();

  // void deleteTodoItem(int id) {
  //   taskController.deleteTodoItem(id);
  // }

  // void staredTodoItem(int id) {
  //   taskController.staredTodoItem(id);
  // }

  // void checkedTodoItem(int id) {
  //   taskController.checkedTodoItem(id);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.menu_outlined))),
                Expanded(flex: 8, child: TextField()),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.abc_outlined)))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TaskCategoryWidget(),
          ),
          Expanded(child: TodolistItemWidgetV2()
              //     SlidableAutoCloseBehavior(child: GetBuilder<TaskController>(
              //   builder: (controller) {
              //     return ListView.builder(
              //       itemCount: controller.state.todoItems.length,
              //       itemBuilder: (context, index) {
              //         return TodolistItemWidget(
              //           item: controller.state.todoItems[index],
              //           starOnPressed: (context) {
              //             staredTodoItem(controller.state.todoItems[index].id);
              //           },
              //           deleteOnPressed: (context) {
              //             deleteTodoItem(controller.state.todoItems[index].id);
              //           },
              //           checkBoxOnChanged: (value) {
              //             checkedTodoItem(controller.state.todoItems[index].id);
              //           },
              //         );
              //       },
              //     );
              //   },
              // ))
              )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
