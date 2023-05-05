import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<MainNavToHomeEvent>(_navToHomeEvent);
    on<MainNavToSearchEvent>(_navToSearchEvent);
    on<MainNavToCartEvent>(_navToCartEvent);
    on<MainNavToProfileEvent>(_navToProfileEvent);
  }

  _navToHomeEvent(MainNavToHomeEvent event, Emitter emit) {
    emit(MainState(index: 0));
  }

  _navToSearchEvent(MainNavToSearchEvent event, Emitter<MainState> emit) {
    emit(MainState(index: 1));
  }

  _navToCartEvent(MainNavToCartEvent event, Emitter<MainState> emit) {
    emit(MainState(index: 2));
  }

  _navToProfileEvent(MainNavToProfileEvent event, Emitter<MainState> emit) {
    emit(MainState(index: 3));
  }
}
