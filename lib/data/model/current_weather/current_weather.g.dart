// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentWeatherAdapter extends TypeAdapter<CurrentWeather> {
  @override
  final int typeId = 0;

  @override
  CurrentWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentWeather(
      weather: (fields[0] as List?)?.cast<WeatherModel?>(),
      main: fields[1] as WeatherMainField?,
      id: fields[2] as int?,
      name: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentWeather obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.weather)
      ..writeByte(1)
      ..write(obj.main)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: json['main'] == null
          ? null
          : WeatherMainField.fromJson(json['main'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'id': instance.id,
      'name': instance.name,
    };
