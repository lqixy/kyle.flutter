import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../commons/app_config.dart';
import '../routes.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan(
      {super.key,
      required this.title,
      required this.linkTitle,
      required this.onTap});

  final String title;
  final String linkTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          style: TextStyle(
            fontFamily: AppConfig.fontFamily,
            fontSize: 20,
            color: AppConfig.primarySecondText,
          ),
          children: [
            TextSpan(text: title),
            TextSpan(
                text: linkTitle,
                recognizer: TapGestureRecognizer()..onTap = onTap,
                style: TextStyle(
                    color: AppConfig.primaryThirdText,
                    fontWeight: FontWeight.w600))
          ]),
    );
  }
}
