import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kyle_todos/commons/app_config.dart';
import 'package:kyle_todos/routes.dart';
import 'package:kyle_todos/utils/j_sp_util.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await JSpUtil.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: AppConfig.primamry,
                elevation: 0,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: AppConfig.fontFamily,
                    fontSize: 30,
                    fontWeight: FontWeight.w600)),
            primarySwatch: Colors.blue,
            fontFamily: 'Poppins'),
        // home: LoginScreen(),
        initialRoute: GetRoutes.login,
        getPages: GetRoutes.routes,
      ),
    );
  }
}
