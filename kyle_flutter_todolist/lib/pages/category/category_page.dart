import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/models/todo_category.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_controller.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_state.dart';

class CategoryPage extends StatelessWidget {
  // const CategoryPage({super.key});

  TaskController controller = Get.find<TaskController>();
  TaskState state = Get.find<TaskController>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('管理类别'),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[50],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(1),
            child: Container(
              // height: 20,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.lightBlue[100]),
              // color: Colors.lightBlue[100],
              child: Text(
                textAlign: TextAlign.center,
                '显示在首页上的类别',
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              ),
            ),
          ),
          Expanded(child: GetBuilder<TaskController>(builder: (controller) {
            // controller.getCategoryList;
            return Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: controller.state.categories
                        .map((e) => buildCategoryItem(e))
                        .toList(),
                  ),
                )),
                // Padding(
                //     padding: EdgeInsets.all(8),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [const Icon(Icons.add), Text('新建')],
                //     ))
              ],
            );
          })
              // child: SingleChildScrollView(
              //   child: Column(
              //     children:
              //         state.categories.map((e) => buildCategoryItem(e)).toList(),
              //   ),
              // ),
              ),
          // Padding(
          //     padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [const Icon(Icons.add), Text('新建')],
          //     ))
        ],
      ),
    );
    // return SafeArea(
    //   child: Center(
    //     child: Text('Category'),
    //   ),
    // );
  }

  Widget buildCategoryItem(TodoCategory item) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '●',
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
          Expanded(flex: 1, child: Text('${item.title}')),
          const Expanded(flex: 6, child: SizedBox()),
          const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Text('0'),
              )),
          const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.more_horiz),
              ))
        ],
      ),
    );
  }
}
