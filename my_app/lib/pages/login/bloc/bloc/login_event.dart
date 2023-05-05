part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  // @override
  // List<Object> get props => [];
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  const LoginButtonPressed({required this.username, required this.password});

  @override
  List<Object> get props => throw UnimplementedError();

  @override
  String toString() {
    return 'LoginButtonPressed { username: $username}';
  }
}
