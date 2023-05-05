import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kyle_shop/bloc/main/main_bloc.dart';
import 'package:kyle_shop/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => MainBloc()),
                ],
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  // home: MainScreen(),
                  home: MainScreen(),
                )));

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: MainScreen(),
    // );
  }
}
