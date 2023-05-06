import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import 'package:ttmall/modules/home/pages/home_tabbar_page.dart';
import 'package:ttmall/modules/home/pages/home_tabbar_view_page.dart';
import 'package:ttmall/modules/home/pages/navbar_page.dart';
import 'package:ttmall/shared/custom_cached_network_image_widget.dart';
import 'package:ttmall/shared/custom_loading_circle_widget.dart';
import 'package:ttmall/shared/custom_nodata_widget.dart';
import 'package:ttmall/utils/app_config.dart';

import 'bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16.w, 45.h, 0, 0),
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                  // color: AppConfig.primaryBackgroundColorRed,
                  image: DecorationImage(
                image: AssetImage('assets/images/ttlogo.png'),
              )),
            ),
            HomeTabbarPage(tabController: _tabController),
            HomeTabbarViewPage(tabController: _tabController),
            const HomeRecommendGoodsWidget()
          ],
        ),
      ),
      bottomNavigationBar: HomeNavbarPage(),
    );
  }

  // @override
  // void dispose() {
  //   Get.delete<HomeController>();
  //   super.dispose();
  // }
}

class HomeRecommendGoodsWidget extends StatelessWidget {
  const HomeRecommendGoodsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 505.h),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const CustomLoadingCircleWidget();
          } else if (state is HomeLoadedState) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.goods.length,
                  itemBuilder: (context, index) {
                    var curGoods = state.goods[index];
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            color: AppConfig.primaryWhite,
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  curGoods.goodsurl!),
                            ),
                            border: Border.all(
                                color: AppConfig.primaryBackgroundColorGrey,
                                width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    );
                  }),
            );
          } else {
            return const CustomNodataWidget();
          }
        },
      ),
    );
  }
}
