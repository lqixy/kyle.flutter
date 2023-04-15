import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kyle_todos/controllers/login_controller.dart';
import 'package:kyle_todos/routes.dart';

import 'package:kyle_todos/widgets/custom_button.dart';
import 'package:kyle_todos/widgets/custom_textfield.dart';
import 'package:kyle_todos/widgets/custom_textspan.dart';

import '../../commons/app_config.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder<LoginController>(
            builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120.h,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'My TODO',
                    style: TextStyle(
                        fontFamily: AppConfig.fontFamily,
                        fontSize: 54,
                        color: AppConfig.primaryText,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  hintText: 'Mobile/Account',
                  controller: controller.accountController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: controller.passwordController,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  label: '登陆',
                  onPressed: () {
                    // Get.offAllNamed(GetRoutes.home);
                    controller.login();
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextSpan(
                    title: '还没有账号?',
                    linkTitle: '注册',
                    onTap: () {
                      Get.offAllNamed(GetRoutes.signup);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
