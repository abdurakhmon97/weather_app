// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_main_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherMainField _$WeatherMainFieldFromJson(Map<String, dynamic> json) {
  return _WeatherMainField.fromJson(json);
}

/// @nodoc
class _$WeatherMainFieldTearOff {
  const _$WeatherMainFieldTearOff();

  _WeatherMainField call(
      {@HiveField(0) double? temp, @HiveField(1) double? feels_like}) {
    return _WeatherMainField(
      temp: temp,
      feels_like: feels_like,
    );
  }

  WeatherMainField fromJson(Map<String, Object?> json) {
    return WeatherMainField.fromJson(json);
  }
}

/// @nodoc
const $WeatherMainField = _$WeatherMainFieldTearOff();

/// @nodoc
mixin _$WeatherMainField {
  @HiveField(0)
  double? get temp => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get feels_like => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherMainFieldCopyWith<WeatherMainField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainFieldCopyWith<$Res> {
  factory $WeatherMainFieldCopyWith(
          WeatherMainField value, $Res Function(WeatherMainField) then) =
      _$WeatherMainFieldCopyWithImpl<$Res>;
  $Res call({@HiveField(0) double? temp, @HiveField(1) double? feels_like});
}

/// @nodoc
class _$WeatherMainFieldCopyWithImpl<$Res>
    implements $WeatherMainFieldCopyWith<$Res> {
  _$WeatherMainFieldCopyWithImpl(this._value, this._then);

  final WeatherMainField _value;
  // ignore: unused_field
  final $Res Function(WeatherMainField) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feels_like = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherMainFieldCopyWith<$Res>
    implements $WeatherMainFieldCopyWith<$Res> {
  factory _$WeatherMainFieldCopyWith(
          _WeatherMainField value, $Res Function(_WeatherMainField) then) =
      __$WeatherMainFieldCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) double? temp, @HiveField(1) double? feels_like});
}

/// @nodoc
class __$WeatherMainFieldCopyWithImpl<$Res>
    extends _$WeatherMainFieldCopyWithImpl<$Res>
    implements _$WeatherMainFieldCopyWith<$Res> {
  __$WeatherMainFieldCopyWithImpl(
      _WeatherMainField _value, $Res Function(_WeatherMainField) _then)
      : super(_value, (v) => _then(v as _WeatherMainField));

  @override
  _WeatherMainField get _value => super._value as _WeatherMainField;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feels_like = freezed,
  }) {
    return _then(_WeatherMainField(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherMainField implements _WeatherMainField {
  const _$_WeatherMainField(
      {@HiveField(0) this.temp, @HiveField(1) this.feels_like});

  factory _$_WeatherMainField.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherMainFieldFromJson(json);

  @override
  @HiveField(0)
  final double? temp;
  @override
  @HiveField(1)
  final double? feels_like;

  @override
  String toString() {
    return 'WeatherMainField(temp: $temp, feels_like: $feels_like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherMainField &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.feels_like, feels_like));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feels_like));

  @JsonKey(ignore: true)
  @override
  _$WeatherMainFieldCopyWith<_WeatherMainField> get copyWith =>
      __$WeatherMainFieldCopyWithImpl<_WeatherMainField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherMainFieldToJson(this);
  }
}

abstract class _WeatherMainField implements WeatherMainField {
  const factory _WeatherMainField(
      {@HiveField(0) double? temp,
      @HiveField(1) double? feels_like}) = _$_WeatherMainField;

  factory _WeatherMainField.fromJson(Map<String, dynamic> json) =
      _$_WeatherMainField.fromJson;

  @override
  @HiveField(0)
  double? get temp;
  @override
  @HiveField(1)
  double? get feels_like;
  @override
  @JsonKey(ignore: true)
  _$WeatherMainFieldCopyWith<_WeatherMainField> get copyWith =>
      throw _privateConstructorUsedError;
}
