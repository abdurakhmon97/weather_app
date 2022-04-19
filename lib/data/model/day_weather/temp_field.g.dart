// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_field.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TempFieldAdapter extends TypeAdapter<TempField> {
  @override
  final int typeId = 6;

  @override
  TempField read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TempField(
      morn: fields[0] as double?,
      day: fields[1] as double?,
      eve: fields[2] as double?,
      night: fields[3] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, TempField obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.morn)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.eve)
      ..writeByte(3)
      ..write(obj.night);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TempFieldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TempField _$$_TempFieldFromJson(Map<String, dynamic> json) => _$_TempField(
      morn: (json['morn'] as num?)?.toDouble(),
      day: (json['day'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TempFieldToJson(_$_TempField instance) =>
    <String, dynamic>{
      'morn': instance.morn,
      'day': instance.day,
      'eve': instance.eve,
      'night': instance.night,
    };
