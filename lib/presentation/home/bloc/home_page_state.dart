part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  @override
  List<Object> get props => [];
}


class HomePageLoading extends HomePageState {
  @override
  List<Object> get props => [];
}


class HomePageSuccess extends HomePageState {
  final CurrentWeather currentWeather;
  final MainResponseModel mainResponseModel;
  final bool daily;
  final String? dateTime;

  const HomePageSuccess(this.currentWeather, this.mainResponseModel, this.daily, this.dateTime);

  @override
  List<Object> get props => [currentWeather, mainResponseModel, daily];
}

class HomePageError extends HomePageState {
  final String error;

  const HomePageError(this.error);

  @override
  List<Object> get props => [error];
}