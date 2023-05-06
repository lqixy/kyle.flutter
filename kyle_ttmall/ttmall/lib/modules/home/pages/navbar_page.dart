import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ionicons/ionicons.dart';
import 'package:ttmall/app/routes.dart';

import '../../../utils/app_config.dart';

import '../bloc/home_bloc.dart';
import 'navbar_item_page.dart';

class HomeNavbarPage extends StatelessWidget {
  HomeNavbarPage({
    super.key,
  });

  // final controller = Get.put(HomeController());
  // final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          height: 40.h,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppConfig.primaryBackgroundColorRed,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeNavbarItemPage(
                ioniconsData: Ionicons.home,
                onTap: () {},
              ),
              HomeNavbarItemPage(
                ioniconsData: Ionicons.search,
                onTap: () {
                  // controller.goToPage(RouteConfig.main);
                },
              ),
              HomeNavbarItemPage(
                ioniconsData: Ionicons.add,
                onTap: () {},
              ),
              HomeNavbarItemPage(
                ioniconsData: Ionicons.cart,
                onTap: () {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeNavToEvent(context, RouteConfig.cart));
                },
              ),
              HomeNavbarItemPage(
                ioniconsData: Ionicons.person,
                onTap: () {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeNavToEvent(context, RouteConfig.profile));
                },
              ),
            ],
          )),
    ));
  }
}
