import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_config.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.prefixIcon,
      this.obscureText = false})
      : super(key: key);

  final String hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          prefixIcon: Icon(prefixIcon)),
    );
  }
}

class BuildText extends StatelessWidget {
  const BuildText({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: AppConfig.TextSecondGery),
    );
  }
}

class ReusableButton extends StatelessWidget {
  const ReusableButton({Key? key, required this.buttonTitle, this.onTap})
      : super(key: key);
  final String buttonTitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 325.w,
        height: 35.h,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.deepPurpleAccent),
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        )),
      ),
    );
  }
}
