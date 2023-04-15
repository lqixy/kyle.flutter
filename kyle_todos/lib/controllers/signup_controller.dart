import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:kyle_todos/models/register.dart';
import 'package:kyle_todos/routes.dart';
import 'package:kyle_todos/utils/baseUrl.dart';
import 'package:kyle_todos/utils/custom_snackbar.dart';
import 'package:kyle_todos/utils/http_util.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SignupController extends GetxController {
  late TextEditingController accountController,
      mobileController,
      contactController,
      addressController,
      emailController,
      passwordController,
      confirmPasswoordController;

  void checkSignup() {
    if (accountController.text.isEmpty && mobileController.text.isEmpty) {
      customSnackbar('Error', '用户名或手机号不能为空', 'error');
      return;
    }
    if (passwordController.text.isEmpty) {
      customSnackbar('Error', '密码不能为空', 'error');
      return;
    }
    if (confirmPasswoordController.text.isEmpty) {
      customSnackbar('Error', '重复密码不能为空', 'error');
      return;
    }

    if (passwordController.text != confirmPasswoordController.text) {
      customSnackbar('Error', '两次密码输入不一样', 'error');
      return;
    }

    Get.showOverlay(
        asyncFunction: () => signup(),
        loadingWidget: LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white, size: 30));
  }

  signup() async {
    var url = Uri.parse('$baseUrl/register');
    var input = Register(
        mobile: mobileController.text.isEmpty ? null : mobileController.text,
        account: accountController.text.isEmpty ? null : accountController.text,
        email: emailController.text.isEmpty ? null : emailController.text,
        password: passwordController.text);

    // var result = await HttpUtil.requestPost('$baseUrl/register', input);

    // if (result.success == null || !result.success!) {
    //   customSnackbar('Error', result.message, 'error');
    // } else {
    //   customSnackbar('Success', '注册成功', 'msg');
    //   Get.offAllNamed(GetRoutes.login);
    // }
  }

  @override
  void onInit() {
    super.onInit();

    accountController = TextEditingController();
    mobileController = TextEditingController();
    contactController = TextEditingController();
    addressController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswoordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();

    accountController.dispose();
    contactController.dispose();
    addressController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswoordController.dispose();
  }
}
