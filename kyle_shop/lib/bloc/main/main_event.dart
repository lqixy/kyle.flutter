part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class MainNavToHomeEvent extends MainEvent {}

class MainNavToSearchEvent extends MainEvent {}

class MainNavToCartEvent extends MainEvent {}

class MainNavToProfileEvent extends MainEvent {}
