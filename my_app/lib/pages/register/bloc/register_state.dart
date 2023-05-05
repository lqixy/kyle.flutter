part of 'register_bloc.dart';

@immutable
class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  const RegisterState(
      {this.userName = '',
      this.email = '',
      this.password = '',
      this.rePassword = ''});
}

// class RegisterInitial extends RegisterState {}
