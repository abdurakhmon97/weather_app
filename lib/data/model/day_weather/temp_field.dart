import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';


part 'temp_field.freezed.dart';
part 'temp_field.g.dart';

@HiveType(typeId: 6)
@freezed
class TempField with _$TempField {
  const factory TempField({
    @HiveField(0) double? morn,
    @HiveField(1) double? day,
    @HiveField(2) double? eve,
    @HiveField(3) double? night,
  }) = _TempField;

  factory TempField.fromJson(Map<String, dynamic> json) =>
      _$TempFieldFromJson(json);
}