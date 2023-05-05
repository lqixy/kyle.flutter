part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  // const LoginState();

  // final String userName;
  // bool get isValidUserName => userName.length > 3;
  // final String password;
  // bool get isValidPassword => password.length > 6;

// final FormSubmissionStatus formStatus;

  // const LoginState({this.userName = '', this.password = ''});

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {}

// class LoginInitial extends LoginState {}
