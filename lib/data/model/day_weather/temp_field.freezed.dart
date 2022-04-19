// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempField _$TempFieldFromJson(Map<String, dynamic> json) {
  return _TempField.fromJson(json);
}

/// @nodoc
class _$TempFieldTearOff {
  const _$TempFieldTearOff();

  _TempField call(
      {@HiveField(0) double? morn,
      @HiveField(1) double? day,
      @HiveField(2) double? eve,
      @HiveField(3) double? night}) {
    return _TempField(
      morn: morn,
      day: day,
      eve: eve,
      night: night,
    );
  }

  TempField fromJson(Map<String, Object?> json) {
    return TempField.fromJson(json);
  }
}

/// @nodoc
const $TempField = _$TempFieldTearOff();

/// @nodoc
mixin _$TempField {
  @HiveField(0)
  double? get morn => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get day => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get eve => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get night => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempFieldCopyWith<TempField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempFieldCopyWith<$Res> {
  factory $TempFieldCopyWith(TempField value, $Res Function(TempField) then) =
      _$TempFieldCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) double? morn,
      @HiveField(1) double? day,
      @HiveField(2) double? eve,
      @HiveField(3) double? night});
}

/// @nodoc
class _$TempFieldCopyWithImpl<$Res> implements $TempFieldCopyWith<$Res> {
  _$TempFieldCopyWithImpl(this._value, this._then);

  final TempField _value;
  // ignore: unused_field
  final $Res Function(TempField) _then;

  @override
  $Res call({
    Object? morn = freezed,
    Object? day = freezed,
    Object? eve = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$TempFieldCopyWith<$Res> implements $TempFieldCopyWith<$Res> {
  factory _$TempFieldCopyWith(
          _TempField value, $Res Function(_TempField) then) =
      __$TempFieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) double? morn,
      @HiveField(1) double? day,
      @HiveField(2) double? eve,
      @HiveField(3) double? night});
}

/// @nodoc
class __$TempFieldCopyWithImpl<$Res> extends _$TempFieldCopyWithImpl<$Res>
    implements _$TempFieldCopyWith<$Res> {
  __$TempFieldCopyWithImpl(_TempField _value, $Res Function(_TempField) _then)
      : super(_value, (v) => _then(v as _TempField));

  @override
  _TempField get _value => super._value as _TempField;

  @override
  $Res call({
    Object? morn = freezed,
    Object? day = freezed,
    Object? eve = freezed,
    Object? night = freezed,
  }) {
    return _then(_TempField(
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempField implements _TempField {
  const _$_TempField(
      {@HiveField(0) this.morn,
      @HiveField(1) this.day,
      @HiveField(2) this.eve,
      @HiveField(3) this.night});

  factory _$_TempField.fromJson(Map<String, dynamic> json) =>
      _$$_TempFieldFromJson(json);

  @override
  @HiveField(0)
  final double? morn;
  @override
  @HiveField(1)
  final double? day;
  @override
  @HiveField(2)
  final double? eve;
  @override
  @HiveField(3)
  final double? night;

  @override
  String toString() {
    return 'TempField(morn: $morn, day: $day, eve: $eve, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TempField &&
            const DeepCollectionEquality().equals(other.morn, morn) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.night, night));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morn),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(night));

  @JsonKey(ignore: true)
  @override
  _$TempFieldCopyWith<_TempField> get copyWith =>
      __$TempFieldCopyWithImpl<_TempField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempFieldToJson(this);
  }
}

abstract class _TempField implements TempField {
  const factory _TempField(
      {@HiveField(0) double? morn,
      @HiveField(1) double? day,
      @HiveField(2) double? eve,
      @HiveField(3) double? night}) = _$_TempField;

  factory _TempField.fromJson(Map<String, dynamic> json) =
      _$_TempField.fromJson;

  @override
  @HiveField(0)
  double? get morn;
  @override
  @HiveField(1)
  double? get day;
  @override
  @HiveField(2)
  double? get eve;
  @override
  @HiveField(3)
  double? get night;
  @override
  @JsonKey(ignore: true)
  _$TempFieldCopyWith<_TempField> get copyWith =>
      throw _privateConstructorUsedError;
}
