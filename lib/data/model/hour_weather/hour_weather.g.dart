// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HourWeatherAdapter extends TypeAdapter<HourWeather> {
  @override
  final int typeId = 4;

  @override
  HourWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HourWeather(
      dt: fields[0] as int?,
      temp: fields[1] as double?,
      feels_like: fields[2] as double?,
      weather: (fields[3] as List?)?.cast<WeatherModel>(),
      humidity: fields[4] as int?,
      clouds: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HourWeather obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.feels_like)
      ..writeByte(3)
      ..write(obj.weather)
      ..writeByte(4)
      ..write(obj.humidity)
      ..writeByte(5)
      ..write(obj.clouds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourWeather _$$_HourWeatherFromJson(Map<String, dynamic> json) =>
    _$_HourWeather(
      dt: json['dt'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feels_like: (json['feels_like'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      humidity: json['humidity'] as int?,
      clouds: json['clouds'] as int?,
    );

Map<String, dynamic> _$$_HourWeatherToJson(_$_HourWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'weather': instance.weather,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
    };
