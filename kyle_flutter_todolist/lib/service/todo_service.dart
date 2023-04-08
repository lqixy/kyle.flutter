import 'dart:math';

import 'package:kyle_flutter_todolist/common/date_util.dart';
import 'package:kyle_flutter_todolist/models/todo_item.dart';

class TodoService {
  static Random random = Random();
  static DateTime now = DateTime.now();
  static List<TodoItem> list = List.generate(20, (index) {
    var time = now.add(Duration(days: random.nextInt(7)));
    return TodoItem(
        id: index,
        title: 'title: $index',
        categoryId: random.nextInt(6),
        deadline: time.convertToDate());
  });

  List<TodoItem> getAllByCategoryId(int categoryId) {
    // return list.where((element) => element.categoryId == categoryId).toList();
    return get(predicate: (x) => x.categoryId == categoryId).toList();
  }

  List<TodoItem> get({bool Function(TodoItem)? predicate}) {
    if (predicate == null) {
      return list;
    }

    return list.where(predicate).toList();
  }
  // List<TodoItem> getAll() {
  //   return list;
  // }
}
