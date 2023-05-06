part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<RecommendModel> recommends;
  final List<RecommendGoodModel> goods;
  const HomeLoadedState(this.recommends, this.goods);
}

class HomeErrorState extends HomeState {
  final String msg;
  const HomeErrorState(this.msg);
}
