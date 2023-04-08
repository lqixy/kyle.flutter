import 'package:flutter/material.dart';

class AddTodoItemBottomSheet extends StatelessWidget {
  const AddTodoItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '输入新任务',
                    hintStyle: TextStyle(color: Colors.grey[500])),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('click`'),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey[350])),
                    ),
                    // TextButton(onPressed: () {}, child: Text('click`')),
                    // TextButton(onPressed: () {}, child: Text('click`')),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.calendar_today,
                            color: Colors.blue, size: 20)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined,
                            color: Colors.blue, size: 20)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_tree_outlined,
                            color: Colors.blue, size: 20)),
                    Expanded(
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: IconButton(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 70,
                            ),
                            // style: ButtonStyle(
                            //     backgroundColor:
                            //         MaterialStatePropertyAll(Colors.blue)),
                            onPressed: () {
                              print('点击了');
                            },
                            icon:
                                Icon(Icons.send, color: Colors.blue, size: 40)),
                      ),
                    )
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.send, color: Colors.blue, size: 40))
                  ],
                ),
              )
              // Expanded(flex: 2, child: TextField()),
              // Expanded(
              //     flex: 1,
              //     child: Padding(
              //       padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              //       child: Row(
              //         children: [
              //           TextButton(onPressed: () {}, child: Text('button'))
              //         ],
              //       ),
              //     )),

              // Padding(
              //   padding: EdgeInsets.all(8),
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child:
              //               TextButton(onPressed: () {}, child: Text('button')))
              //     ],
              //   ),
              // )
            ],
          ),
        ));
  }
}
