import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_flutter_todolist/bindings/all_controller_binding.dart';
import 'package:kyle_flutter_todolist/logic/main_logic.dart';
import 'package:kyle_flutter_todolist/pages/calendar/calendar_page.dart';
import 'package:kyle_flutter_todolist/pages/category/category_page.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_binding.dart';
import 'package:kyle_flutter_todolist/pages/tasks/task_page.dart';
import 'package:kyle_flutter_todolist/states/main_state.dart';

import 'package:kyle_flutter_todolist/views/mine_page.dart';

void main() {
  // runApp(GetMaterialApp(
  //   getPages: RouteConfig.getPages,
  //   home: Home(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      debugShowCheckedModeBanner: false,
      getPages: RouteConfig.getPages,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final mainLogic = Get.put(MainLogic());
  final MainState mainState = Get.find<MainLogic>().state;

  late List<Widget> _bodyPages = [TaskPage(), CalendarPage(), MinePage()];

  List<BottomNavigationBarItem> barItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.feed_outlined),
        label: '任务',
        activeIcon: Icon(Icons.feed)),
    const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today_outlined),
        label: '日历',
        activeIcon: Icon(Icons.calendar_month)),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: '我的',
        activeIcon: Icon(Icons.person)),
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: _bodyPages,
          onPageChanged: (index) {
            mainLogic.changeIndex(index);
          },
        ),
        bottomNavigationBar: GetBuilder<MainLogic>(
          builder: (logic) => BottomNavigationBar(
              currentIndex: mainState.index,
              items: barItems.map((e) => e).toList(),
              onTap: (index) {
                mainLogic.changeIndex(index);
                _pageController.jumpToPage(index);
              }),
        ));
  }
}

class RouteConfig {
  static const String taskPage = '/taskPage';
  static const String calendarPage = '/calendarPage';
  static const String minePage = '/minePage';
  static const String categoryPage = '/categoryPage';

  static final List<GetPage> getPages = [
    GetPage(name: taskPage, page: () => TaskPage(), binding: TaskBinding()),
    GetPage(name: calendarPage, page: () => CalendarPage()),
    GetPage(name: minePage, page: () => MinePage()),
    GetPage(name: categoryPage, page: () => CategoryPage()),
  ];
}
