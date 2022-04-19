// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _CWeatherModel.fromJson(json);
}

/// @nodoc
class _$WeatherModelTearOff {
  const _$WeatherModelTearOff();

  _CWeatherModel call(
      {@HiveField(0) String? main, @HiveField(1) String? description}) {
    return _CWeatherModel(
      main: main,
      description: description,
    );
  }

  WeatherModel fromJson(Map<String, Object?> json) {
    return WeatherModel.fromJson(json);
  }
}

/// @nodoc
const $WeatherModel = _$WeatherModelTearOff();

/// @nodoc
mixin _$WeatherModel {
  @HiveField(0)
  String? get main => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? main, @HiveField(1) String? description});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res> implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  final WeatherModel _value;
  // ignore: unused_field
  final $Res Function(WeatherModel) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CWeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$CWeatherModelCopyWith(
          _CWeatherModel value, $Res Function(_CWeatherModel) then) =
      __$CWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? main, @HiveField(1) String? description});
}

/// @nodoc
class __$CWeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res>
    implements _$CWeatherModelCopyWith<$Res> {
  __$CWeatherModelCopyWithImpl(
      _CWeatherModel _value, $Res Function(_CWeatherModel) _then)
      : super(_value, (v) => _then(v as _CWeatherModel));

  @override
  _CWeatherModel get _value => super._value as _CWeatherModel;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_CWeatherModel(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CWeatherModel implements _CWeatherModel {
  const _$_CWeatherModel(
      {@HiveField(0) this.main, @HiveField(1) this.description});

  factory _$_CWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_CWeatherModelFromJson(json);

  @override
  @HiveField(0)
  final String? main;
  @override
  @HiveField(1)
  final String? description;

  @override
  String toString() {
    return 'WeatherModel(main: $main, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CWeatherModel &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$CWeatherModelCopyWith<_CWeatherModel> get copyWith =>
      __$CWeatherModelCopyWithImpl<_CWeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CWeatherModelToJson(this);
  }
}

abstract class _CWeatherModel implements WeatherModel {
  const factory _CWeatherModel(
      {@HiveField(0) String? main,
      @HiveField(1) String? description}) = _$_CWeatherModel;

  factory _CWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_CWeatherModel.fromJson;

  @override
  @HiveField(0)
  String? get main;
  @override
  @HiveField(1)
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$CWeatherModelCopyWith<_CWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
