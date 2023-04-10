import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_state.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitAppState()) {
    on<AddEvents>(
      (event, emit) {
        emit(AppState(counter: state.counter + 1));
      },
    );
  }
}
