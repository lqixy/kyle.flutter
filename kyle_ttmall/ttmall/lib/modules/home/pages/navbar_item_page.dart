import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import '../../../utils/app_config.dart';

class HomeNavbarItemPage extends StatelessWidget {
  const HomeNavbarItemPage(
      {super.key, required this.onTap, required this.ioniconsData});

  final Function() onTap;
  final IoniconsData ioniconsData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36.h,
        width: 36.w,
        child: Icon(
          ioniconsData,
          color: AppConfig.primaryWhite,
          // size: 20.sp,
        ),
      ),
    );
  }
}
