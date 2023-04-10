import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_events.dart';

import '../../main.dart';
import 'bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBlocs, WelcomeState>(
          builder: (context, state) => Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(alignment: Alignment.topCenter, children: [
              PageView(
                controller: pageController,
                onPageChanged: (value) {
                  state.index = value;
                  BlocProvider.of<WelcomeBlocs>(context).add(WelcomeEvents());
                  // print('${state.index}');
                },
                children: [
                  _page(
                      0,
                      context,
                      'Next',
                      'First See Learning',
                      'Forget about a for of paper all knowledge in one learning!',
                      'assets/images/reading.png'),
                  _page(
                      1,
                      context,
                      '',
                      'First See Learning',
                      'Forget about a for of paper all knowledge in one learning!',
                      'assets/images/boy.png'),
                  _page(
                      2,
                      context,
                      'Next',
                      'First See Learning',
                      'Forget about a for of paper all knowledge in one learning!',
                      'assets/images/man.png'),
                ],
              ),
              Positioned(
                bottom: 100.h,
                child: DotsIndicator(
                  position: state.index.toDouble(),
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                      color: AppColors.primaryThirdElementText,
                      activeColor: AppColors.primaryElement,
                      size: const Size.square(8.0),
                      activeSize: const Size(15.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String remark, String images) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            images,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            remark,
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (index < 2) {
              pageController.animateToPage(index + 1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('signIn', (route) => false);
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.all(Radius.circular(15.w)),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.primarySecondaryElementText,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2))
                ]),
            child: Center(
                child: Text(
              buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.normal),
            )),
          ),
        )
      ],
    );
  }
}
