part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeLoadEvent extends HomeEvent {}

class HomeNavToEvent extends HomeEvent {
  final BuildContext context;
  final String pageName;
  const HomeNavToEvent(this.context, this.pageName);
}
