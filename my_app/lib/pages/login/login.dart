import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/common/app_config.dart';
import 'package:my_app/pages/login/widgets/login_widget.dart';

import 'bloc/bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50.h, left: 30.w, right: 30.w),
        // padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildText(title: '用户名'),
            SizedBox(
              height: 10.h,
            ),
            BuildTextField(
                hintText: '输入手机号或用户名',
                controller: _usernameController,
                prefixIcon: Icons.person),
            SizedBox(
              height: 10.h,
            ),
            const BuildText(title: '密码'),
            SizedBox(
              height: 10.h,
            ),
            BuildTextField(
              hintText: '输入密码',
              prefixIcon: Icons.lock,
              controller: _passwordController,
              obscureText: true,
            ),
            SizedBox(
              height: 40.h,
            ),
            ReusableButton(
              buttonTitle: '登陆',
              onTap: () {
                print('login');
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return ReusableButton(
                  buttonTitle: '注册',
                  onTap: () {
                    BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
                        username: _usernameController.text,
                        password: _passwordController.text));
                    // print('register');
                    // Navigator.of
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
