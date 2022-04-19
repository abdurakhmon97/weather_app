import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@HiveType(typeId: 1)
@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @HiveField(0) String? main,
    @HiveField(1) String? description,
  }) = _CWeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}