import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;

  SignInController({required this.context});

  void handleSignIn(LoginType type) async {
    try {
      if (type == LoginType.email) {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;

        if (emailAddress.isEmpty) {}
        if (password.isEmpty) {}

        try {
          // final credential = await FirebaseAuth.instance
          //     .signInWithEmailAndPassword(
          //         email: emailAddress, password: password);
          // if (credential.user == null) {
          //   // Todo: User is null
          // }
          // if (!credential.user!.emailVerified) {}

          // var user = credential.user;
          // if (user != null) {
          // } else {}
        } catch (e) {}
      }
    } catch (e) {}
  }
}

enum LoginType {
  email,
}
