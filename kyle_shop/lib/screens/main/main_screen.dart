import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kyle_shop/screens/cart/cart_screen.dart';
import 'package:kyle_shop/screens/home/home.dart';
import 'package:kyle_shop/screens/main/widgets/bottom_navbar_item.dart';
import 'package:kyle_shop/screens/main/widgets/bottom_nvabar_widget.dart';
import 'package:kyle_shop/screens/profile/profile_screen.dart';
import 'package:kyle_shop/screens/search/search_screen.dart';

import '../../bloc/main/main_bloc.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Widget> pageList = const [
    // HomeScreen(),
    HomeScreenV2(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // int pageIndex = 3;
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          bottomNavigationBar: BottomNavbarWidget(),
          body: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              return pageList[state.index];
            },
          ),
        );
      },
    );
  }
}
