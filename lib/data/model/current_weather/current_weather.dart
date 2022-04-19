import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/data/model/current_weather/weather_main_field.dart';
import 'package:weather_app/data/model/current_weather/weather_model.dart';


part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@HiveType(typeId: 0)
@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @HiveField(0) List<WeatherModel?>? weather,
    @HiveField(1) WeatherMainField? main,
    @HiveField(2) int? id,
    @HiveField(3) String? name,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
