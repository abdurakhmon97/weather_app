import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/data/model/current_weather/weather_model.dart';
import 'package:weather_app/data/model/day_weather/temp_field.dart';


part 'day_weather.freezed.dart';
part 'day_weather.g.dart';

@HiveType(typeId: 5)
@freezed
class DayWeather with _$DayWeather {
  const factory DayWeather({
    @HiveField(0) int? dt,
    @HiveField(1) TempField? temp,
    @HiveField(2) int? humidity,
    @HiveField(3) int? clouds,
    @HiveField(4) List<WeatherModel>? weather,
  }) = _DayWeather;

  factory DayWeather.fromJson(Map<String, dynamic> json) =>
      _$DayWeatherFromJson(json);
}
