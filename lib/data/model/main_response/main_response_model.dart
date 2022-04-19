import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../day_weather/day_weather.dart';
import '../hour_weather/hour_weather.dart';


part 'main_response_model.freezed.dart';
part 'main_response_model.g.dart';

@HiveType(typeId: 3)
@freezed
class MainResponseModel with _$MainResponseModel {
  const factory MainResponseModel({
    @HiveField(0) List<HourWeather>? hourly,
    @HiveField(1) List<DayWeather>? daily,
  }) = _MainResponseModel;

  factory MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainResponseModelFromJson(json);
}
