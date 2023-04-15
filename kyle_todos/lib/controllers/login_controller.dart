import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_todos/models/api_request_input.dart';
import 'package:kyle_todos/models/login_result.dart';
import 'package:kyle_todos/routes.dart';
import 'package:kyle_todos/utils/baseUrl.dart';
import 'package:kyle_todos/utils/custom_snackbar.dart';
import 'package:kyle_todos/utils/http_util.dart';
import 'package:kyle_todos/utils/j_sp_util.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginController extends GetxController {
  late TextEditingController accountController, passwordController;

  @override
  void onInit() {
    super.onInit();
    accountController = TextEditingController();
    passwordController = TextEditingController();
  }

  checkUser() {
    var user = JSpUtil.getMap('user');
    if (user.isEmpty) {}
  }

  @override
  void onClose() {
    super.onClose();
    accountController.dispose();
    passwordController.dispose();
  }

  checkLogin() {
    if (accountController.text.isEmpty) {
      customSnackbar('Error', '账号不能为空', 'error');
      return;
    }
    if (passwordController.text.isEmpty) {
      customSnackbar('Error', '密码不能为空', 'error');
      return;
    }

    Get.showOverlay(
        asyncFunction: () => login(),
        loadingWidget: LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white, size: 30));
  }

  login() async {
    var url = '$baseUrl/login';
    var input = LoginApiRequestInput(
        account: accountController.text, password: passwordController.text);
    var response = await HttpUtil.requestPost(url, input);
    if (response.success!) {
      var result = LoginResult.fromJson(response.data!);
      JSpUtil.setMap('user', response.data!);
      Get.offAllNamed(GetRoutes.home);
    } else {}
  }
}
