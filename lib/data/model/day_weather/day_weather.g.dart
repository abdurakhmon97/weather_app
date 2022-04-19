// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayWeatherAdapter extends TypeAdapter<DayWeather> {
  @override
  final int typeId = 5;

  @override
  DayWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayWeather(
      dt: fields[0] as int?,
      temp: fields[1] as TempField?,
      humidity: fields[2] as int?,
      clouds: fields[3] as int?,
      weather: (fields[4] as List?)?.cast<WeatherModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, DayWeather obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.humidity)
      ..writeByte(3)
      ..write(obj.clouds)
      ..writeByte(4)
      ..write(obj.weather);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayWeather _$$_DayWeatherFromJson(Map<String, dynamic> json) =>
    _$_DayWeather(
      dt: json['dt'] as int?,
      temp: json['temp'] == null
          ? null
          : TempField.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: json['humidity'] as int?,
      clouds: json['clouds'] as int?,
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DayWeatherToJson(_$_DayWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'weather': instance.weather,
    };
