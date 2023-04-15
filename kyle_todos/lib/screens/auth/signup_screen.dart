import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kyle_todos/controllers/signup_controller.dart';
import 'package:kyle_todos/widgets/custom_button.dart';
import 'package:kyle_todos/widgets/custom_textfield.dart';
import 'package:kyle_todos/widgets/custom_textspan.dart';

import '../../routes.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: GetBuilder<SignupController>(
            builder: (controller) => Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                CustomTextField(
                  hintText: 'Mobile',
                  controller: controller.mobileController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Account',
                  controller: controller.accountController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Address',
                  controller: controller.addressController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Email',
                  controller: controller.emailController,
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
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                  controller: controller.confirmPasswoordController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                    label: '注册',
                    onPressed: () {
                      controller.checkSignup();
                    }),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextSpan(
                    title: '已经注册账号?',
                    linkTitle: '登陆',
                    onTap: () {
                      Get.offAllNamed(GetRoutes.login);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
