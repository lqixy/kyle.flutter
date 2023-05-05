import 'package:flutter/material.dart';

import '../../../shared/appstyle.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(color: Colors.black),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            '通通优品商城',
            style: appstyleWithHt(42, Colors.white, 1.5),
          ),
          Text(
            '全球购',
            style: appstyleWithHt(42, Colors.white, 1.5),
          ),
          TabBar(
              padding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.transparent,
              isScrollable: true,
              labelColor: Colors.white,
              labelStyle: appstyle(
                24,
                Colors.white,
              ),
              unselectedLabelColor: Colors.grey.withOpacity(0.3),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: '宝宝用品',
                ),
                Tab(
                  text: '防疫专区',
                ),
                Tab(
                  text: '以色列Seamantika',
                ),
              ]),
        ]),
      ),
    );
  }
}
