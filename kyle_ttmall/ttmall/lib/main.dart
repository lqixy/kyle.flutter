import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ttmall/app/data/repositories/recommend_repository.dart';
import 'package:ttmall/modules/cart/cart_view.dart';
import 'package:ttmall/modules/home/bloc/home_bloc.dart';

import 'package:ttmall/modules/home/home_view.dart';
import 'package:ttmall/modules/product/bloc/product_bloc.dart';
import 'package:ttmall/modules/product/product_view.dart';
import 'package:ttmall/modules/profile/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(RecommendRepository()),
          ),
          BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(),
          ),
        ],
        child: MaterialApp(
          routes: {
            '/cart': (context) => CartView(),
            '/profile': (context) => ProfileView(),
            '/product': (context) => ProductView(),
          },
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        ),
      );
    });
  }
}
