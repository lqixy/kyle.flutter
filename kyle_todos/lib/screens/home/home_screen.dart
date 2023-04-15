import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kyle_todos/commons/app_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kyle_todos/widgets/custom_search.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('TODO'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CustomSearch(onChanged: (val) {}),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      1,
                      (index) => Slidable(
                            child: TodoTile(),
                            endActionPane:
                                ActionPane(motion: DrawerMotion(), children: [
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14),
                                    bottomLeft: Radius.circular(14)),
                                backgroundColor: Colors.lightBlue,
                                foregroundColor: AppConfig.primamry,
                                onPressed: (context) {},
                                icon: FontAwesomeIcons.star,
                                label: '标星',
                              ),
                              SlidableAction(
                                backgroundColor: Colors.blue,
                                foregroundColor: AppConfig.primamry,
                                onPressed: (context) {},
                                icon: FontAwesomeIcons.pencil,
                                label: '编辑',
                              ),
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(14),
                                    bottomRight: Radius.circular(14)),
                                backgroundColor: AppConfig.primarySecond,
                                foregroundColor: AppConfig.primamry,
                                onPressed: (context) {},
                                icon: FontAwesomeIcons.trash,
                                label: '删除',
                              ),
                            ]),
                          )).toList(),
                ),
              ))
            ],
          ),
        ));
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppConfig.primamry,
        // borderRadius: BorderRadius.circular(14),
        // boxShadow: [
        //   BoxShadow(
        //       color: AppConfig.primaryElement,
        //       offset: Offset(0, 3),
        //       blurRadius: 12)
        // ]
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Title',
          style: TextStyle(
              fontFamily: AppConfig.fontFamily,
              fontSize: 21,
              color: AppConfig.primaryText,
              fontWeight: FontWeight.w600),
        ),
        Text(
          '完整的源代码就在上面，大家可以自己运行，试一下具体的效果，总的来说体验还是蛮不错的，这个组件的应用场景主要就是可以用来显示一段包含不同样式的文本。希望大家通过本文',
          style: TextStyle(
              fontFamily: AppConfig.fontFamily,
              fontSize: 15,
              color: AppConfig.primarySecondText,
              fontWeight: FontWeight.w100),
        )
      ]),
    );
  }
}
