import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(loginButtonPressed);
  }

  Future<void> loginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    print('cliecked login');

    print('username: {$event.username}');
  }
}
