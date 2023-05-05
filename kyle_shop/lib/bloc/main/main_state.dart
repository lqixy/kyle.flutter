part of 'main_bloc.dart';

class MainState extends Equatable {
  MainState({this.index = 0});

  int index;

  @override
  List<Object> get props => [index];
}

// class MainInitial extends MainState {}
