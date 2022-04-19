// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_field.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherMainFieldAdapter extends TypeAdapter<WeatherMainField> {
  @override
  final int typeId = 2;

  @override
  WeatherMainField read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherMainField(
      temp: fields[0] as double?,
      feels_like: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherMainField obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.temp)
      ..writeByte(1)
      ..write(obj.feels_like);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherMainFieldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherMainField _$$_WeatherMainFieldFromJson(Map<String, dynamic> json) =>
    _$_WeatherMainField(
      temp: (json['temp'] as num?)?.toDouble(),
      feels_like: (json['feels_like'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_WeatherMainFieldToJson(_$_WeatherMainField instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
    };
