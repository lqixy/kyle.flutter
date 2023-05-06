import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ttmall/app/data/repositories/recommend_repository.dart';
import 'package:ttmall/models/recommend_good_model.dart';
import 'package:ttmall/models/recommend_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RecommendRepository recommendRepository;

  HomeBloc(this.recommendRepository) : super(HomeInitial()) {
    on<HomeLoadEvent>(_homeLoadEvent);

    on<HomeNavToEvent>(_homeNavToEvent);
  }

  FutureOr<void> _homeNavToEvent(
      HomeNavToEvent event, Emitter<HomeState> emit) {
    Navigator.pushNamed(event.context, event.pageName);
  }

  FutureOr<void> _homeLoadEvent(
      HomeLoadEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    try {
      final list = await recommendRepository.get();
      final goods = await recommendRepository.getGoods();
      emit(HomeLoadedState(list, goods));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}
