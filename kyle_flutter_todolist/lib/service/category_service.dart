import 'package:kyle_flutter_todolist/models/todo_category.dart';

class CategoryService {
  static List<TodoCategory> list = [
    TodoCategory(id: 0, title: '所有'),
    TodoCategory(id: 1, title: '个人'),
    TodoCategory(id: 2, title: '工作'),
    TodoCategory(id: 3, title: '心愿'),
    TodoCategory(id: 4, title: '生日'),
    TodoCategory(id: 5, title: '所有'),
    TodoCategory(id: -1, title: '新建', sort: 999),
    // TodoCategory(id: 0, title: '个人'),
    // TodoCategory(id: 0, title: '工作'),
    // TodoCategory(id: 0, title: '心愿'),
    // TodoCategory(id: 0, title: '生日'),
    // TodoCategory(id: 0, title: '所有'),
    // TodoCategory(id: 0, title: '个人'),
    // TodoCategory(id: 0, title: '工作'),
    // TodoCategory(id: 0, title: '心愿'),
    // TodoCategory(id: 0, title: '生日'),
    // TodoCategory(id: 0, title: '所有'),
    // TodoCategory(id: 0, title: '个人'),
    // TodoCategory(id: 0, title: '工作'),
    // TodoCategory(id: 0, title: '心愿'),
    // TodoCategory(id: 0, title: '生日'),
    // TodoCategory(id: 0, title: '所有'),
    // TodoCategory(id: 0, title: '个人'),
    // TodoCategory(id: 0, title: '工作'),
    // TodoCategory(id: 0, title: '心愿'),
    // TodoCategory(id: 0, title: '生日'),
  ];

  List<TodoCategory> getAll() {
    return list;
  }
}
