import 'package:injectable/injectable.dart';
import 'package:weather_app/data/api/weather_api.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';

@lazySingleton
class WeatherRepository {
  final WeatherApi weatherApi;

  WeatherRepository(this.weatherApi);

  Future<CurrentWeather> getCurrentWeather(String lat, String lon) async {
    return weatherApi.getCurrentWeather(lat, lon);
  }

  Future<MainResponseModel> getForecastWeather(String lat, String lon) async {
    return weatherApi.getForecastWeather(lat, lon);
  }
}