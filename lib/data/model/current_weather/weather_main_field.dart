import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weather_main_field.freezed.dart';
part 'weather_main_field.g.dart';

@HiveType(typeId: 2)
@freezed
class WeatherMainField with _$WeatherMainField {
  const factory WeatherMainField({
    @HiveField(0) double? temp,
    @HiveField(1) double? feels_like,
  }) = _WeatherMainField;

  factory WeatherMainField.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFieldFromJson(json);
}