import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
        child: Container(
          height: 1.0.h,
          color: AppColors.primarySecondaryBackground,
        ),
        preferredSize: Size.fromHeight(1.0)),
    // backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(
      'Log In',
      style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal),
    ),
  );
}

Widget buildThirdPartLogin(BuildContext context) {
  return Center(
    child: Container(
      padding: EdgeInsets.only(left: 60.w, right: 60.w),
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons('google', () {
            print('click google');
          }),
          _reusableIcons('apple', () {
            print('click apple');
          }),
          _reusableIcons('facebook', () {
            print('click facebook');
          })
        ],
      ),
    ),
  );
}

Widget _reusableIcons(String iconName, Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 40.w,
      height: 40.w,
      child: Image.asset('assets/icons/$iconName.png'),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.grey[400],
          fontWeight: FontWeight.normal,
          fontSize: 14.sp),
    ),
  );
}

Widget reusableButton(
    {required String buttonTitle,
    buttonType type = buttonType.login,
    Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: type == buttonType.login ? 40.h : 10.h),
      width: 325.w,
      height: 35.h,
      decoration: BoxDecoration(
        border: Border.all(
            color: type == buttonType.login
                ? Colors.transparent
                : AppColors.primaryFourthElementText,
            width: 0.5.w),
        color: type == buttonType.login
            ? AppColors.primaryElement
            : AppColors.primaryBackground,
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
      ),
      child: Center(
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: type == buttonType.login
                ? AppColors.primaryBackground
                : Colors.black,
            fontSize: 16.sp,
            // fontWeight: FontWeight.normal
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField(String hintText, IconData prefixIcon) {
  return Container(
    margin: EdgeInsets.only(bottom: 10.h),
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          // labelText: 'Password',
          // hintText: 'Enter your password',
          hintText: hintText,
          prefixIcon: Icon(prefixIcon)),
      obscureText: true,
    ),
  );
}

Widget forgotPassword() {
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        'Forgot password',
        style: TextStyle(
            color: AppColors.primaryText, decoration: TextDecoration.underline),
      ),
    ),
  );
}

enum buttonType { login, register }
