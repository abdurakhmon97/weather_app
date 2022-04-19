part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();
}

class FetchCurrentWeather extends HomePageEvent {
  final bool daily;

  const FetchCurrentWeather(this.daily);

  @override
  List<Object?> get props => [daily];
}