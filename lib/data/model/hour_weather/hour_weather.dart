import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/data/model/current_weather/weather_model.dart';

part 'hour_weather.freezed.dart';

part 'hour_weather.g.dart';

@HiveType(typeId: 4)
@freezed
class HourWeather with _$HourWeather {
  const factory HourWeather({
    @HiveField(0) int? dt,
    @HiveField(1) double? temp,
    @HiveField(2) double? feels_like,
    @HiveField(3) List<WeatherModel>? weather,
    @HiveField(4) int? humidity,
    @HiveField(5) int? clouds,
  }) = _HourWeather;

  factory HourWeather.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherFromJson(json);
}
