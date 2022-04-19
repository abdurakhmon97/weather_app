import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

@lazySingleton
@injectable
class WeatherService {
  final WeatherRepository weatherRepository;
  bool daily = false;

  WeatherService(this.weatherRepository);

  void changeType(bool value){
    daily = value;
  }

  Future<CurrentWeather> getCurrentWeather(String lat, String lon) async{
    try {
      CurrentWeather? currentWeather = await weatherRepository.getCurrentWeather(lat, lon);

      return currentWeather;
    } on DioError catch (e) {
      log('Service: catalog error fetch menu ${e.response?.statusMessage}');
      rethrow;
    }
  }

  Future<MainResponseModel> getForecastWeather(String lat, String lon) async{
    try {
      MainResponseModel? mainResponseModel = await weatherRepository.getForecastWeather(lat, lon);

      return mainResponseModel;
    } on DioError catch (e) {
      log('Service: catalog error fetch menu ${e.response?.statusMessage}');
      rethrow;
    }
  }
}