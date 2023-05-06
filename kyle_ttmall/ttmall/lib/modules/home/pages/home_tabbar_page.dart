import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ttmall/modules/home/bloc/home_bloc.dart';
import 'package:ttmall/shared/custom_loading_circle_widget.dart';

import '../../../utils/app_config.dart';

class HomeTabbarPage extends StatelessWidget {
  HomeTabbarPage({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    bloc.add(HomeLoadEvent());
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return const CustomLoadingCircleWidget();
        } else if (state is HomeLoadedState) {
          return TabBar(
            padding: EdgeInsets.only(top: 100.h),
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppConfig.primaryBackgroundColorRed,
            isScrollable: true,
            labelColor: AppConfig.primaryBackgroundColorRed,
            labelStyle: AppTextStyle.appTextStyle(
                AppConfig.primaryTextColorBlack, 20.sp,
                fw: FontWeight.bold),
            unselectedLabelColor: AppConfig.primaryColorPink,
            tabs: state.recommends
                .map((e) => Tab(
                      text: e.list!.first.title,
                    ))
                .toList(),
          );
        } else {
          return const Center(
            child: Text('no data'),
          );
        }
      },
    );
  }
}
