import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.white),
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            buildThirdPartLogin(context),
            reusableText('Or use your email account to login'),
            Container(
              margin: EdgeInsets.only(top: 50.h),
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  reusableText('Email'),
                  buildTextField('Enter your email', Icons.email),
                  reusableText('Password'),
                  buildTextField('Enter your password', Icons.lock),
                  forgotPassword(),
                  reusableButton(
                    buttonTitle: 'Log In',
                  ),
                  reusableButton(
                      buttonTitle: 'Sign Up', type: buttonType.register)
                ],
              ),
            )
          ],
        )),
      )),
    );
  }
}
