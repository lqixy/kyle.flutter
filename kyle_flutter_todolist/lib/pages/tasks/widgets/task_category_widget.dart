import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../task_controller.dart';

class TaskCategoryWidget extends StatelessWidget {
  // const TaskCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 9,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GetBuilder<TaskController>(
                  // initState: (_) =>  ,
                  builder: (controller) {
                    // controller.getCategoryList();
                    return GetBuilder<TaskController>(
                        builder: (controller) => Row(
                              children: controller.state.categories
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: TextButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.grey[300])),
                                            onPressed: () {
                                              // controller
                                              //     .getAllByCategoryId(e.id);
                                              controller
                                                  .selectedCategoryId(e.id);
                                            },
                                            child: Text(e.title)),
                                      ))
                                  .toList(),
                            ));
                  },
                ))),
        Expanded(
            flex: 1,
            child: GetBuilder<TaskController>(
              builder: (controller) {
                return IconButton(
                  onPressed: () {
                    // Get.toNamed('/categoryPage');
                    controller.jumpToCategoryPage();
                  },
                  icon: Icon(Icons.category_outlined),
                );
              },
            ))
      ],
    );
  }
}
