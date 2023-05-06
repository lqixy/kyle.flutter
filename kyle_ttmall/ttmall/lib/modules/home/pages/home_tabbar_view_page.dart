import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ttmall/app/routes.dart';
import 'package:ttmall/shared/custom_cached_network_image_widget.dart';
import 'package:ttmall/shared/custom_loading_circle_widget.dart';
import 'package:ttmall/shared/custom_nodata_widget.dart';
import 'package:ttmall/utils/app_config.dart';

import '../../../models/recommend_model.dart';
import '../bloc/home_bloc.dart';

class HomeTabbarViewPage extends StatelessWidget {
  const HomeTabbarViewPage({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.21),
      child: Container(
        padding: EdgeInsets.only(left: 12.w),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const CustomLoadingCircleWidget();
            } else if (state is HomeLoadedState) {
              return TabBarView(
                  controller: _tabController,
                  children: state.recommends
                      .map((e) => HomeTabbarViewItemPage(
                          imageUrl: e.list!.first.pic!,
                          models: e.list!
                              .where((element) => element.args!.isNotEmpty)
                              .toList()))
                      .toList());
            } else {
              return const CustomNodataWidget();
            }
          },
        ),
      ),
    );
  }
}

class HomeTabbarViewItemPage extends StatelessWidget {
  const HomeTabbarViewItemPage(
      {super.key, required this.imageUrl, required this.models});
  final String imageUrl;
  final List<RecommendItemModel> models;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCachedNetworkImageWidget(imageUrl: imageUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: models.length,
              itemBuilder: (context, index) {
                var curModel = models[index];
                return HomeTabbarViewProductCardWidget(curModel: curModel);
              }),
        )
      ],
    );
  }
}

class HomeTabbarViewProductCardWidget extends StatelessWidget {
  const HomeTabbarViewProductCardWidget({
    super.key,
    required this.curModel,
  });

  final RecommendItemModel curModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: EdgeInsets.fromLTRB(0, 8.h, 16.w, 8.h),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<HomeBloc>(context)
              .add(HomeNavToEvent(context, RouteConfig.product));
        },
        child: Container(
          decoration: BoxDecoration(
              color: AppConfig.primaryWhite,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                  color: AppConfig.primaryBackgroundColorGrey, width: 1)),
          // color: AppConfig.primaryWhite,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(curModel.pic!),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: GestureDetector(
                        onTap: () {
                          // TODO 关注商品
                        },
                        child: Icon(
                          Ionicons.heart_outline,
                          color: AppConfig.primaryBackgroundColorRed,
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      curModel.title!,
                      style: AppTextStyle.appTextStyle(
                          AppConfig.primaryTextColorBlack, 14.sp,
                          fw: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      curModel.brandname!,
                      style: AppTextStyle.appTextStyle(
                        AppConfig.secondColorGrey,
                        10.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '¥${curModel.sellprice}',
                      style: AppTextStyle.appTextStyle(
                          AppConfig.primaryTextColorBlack, 18.sp,
                          fw: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          '规格',
                          style: AppTextStyle.appTextStyle(
                              AppConfig.secondColorGrey, 10.sp),
                        ),
                        // SizedBox(
                        //   width: 5.w,
                        // ),
                        // ChoiceChip(
                        //     label: Text(' '), selected: true)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
