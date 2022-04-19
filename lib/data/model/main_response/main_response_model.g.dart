// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MainResponseModelAdapter extends TypeAdapter<MainResponseModel> {
  @override
  final int typeId = 3;

  @override
  MainResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MainResponseModel(
      hourly: (fields[0] as List?)?.cast<HourWeather>(),
      daily: (fields[1] as List?)?.cast<DayWeather>(),
    );
  }

  @override
  void write(BinaryWriter writer, MainResponseModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.hourly)
      ..writeByte(1)
      ..write(obj.daily);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainResponseModel _$$_MainResponseModelFromJson(Map<String, dynamic> json) =>
    _$_MainResponseModel(
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => HourWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => DayWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainResponseModelToJson(
        _$_MainResponseModel instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
