// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hour_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourWeather _$HourWeatherFromJson(Map<String, dynamic> json) {
  return _HourWeather.fromJson(json);
}

/// @nodoc
class _$HourWeatherTearOff {
  const _$HourWeatherTearOff();

  _HourWeather call(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) double? feels_like,
      @HiveField(3) List<WeatherModel>? weather,
      @HiveField(4) int? humidity,
      @HiveField(5) int? clouds}) {
    return _HourWeather(
      dt: dt,
      temp: temp,
      feels_like: feels_like,
      weather: weather,
      humidity: humidity,
      clouds: clouds,
    );
  }

  HourWeather fromJson(Map<String, Object?> json) {
    return HourWeather.fromJson(json);
  }
}

/// @nodoc
const $HourWeather = _$HourWeatherTearOff();

/// @nodoc
mixin _$HourWeather {
  @HiveField(0)
  int? get dt => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get temp => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get feels_like => throw _privateConstructorUsedError;
  @HiveField(3)
  List<WeatherModel>? get weather => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get humidity => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get clouds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherCopyWith<HourWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherCopyWith<$Res> {
  factory $HourWeatherCopyWith(
          HourWeather value, $Res Function(HourWeather) then) =
      _$HourWeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) double? feels_like,
      @HiveField(3) List<WeatherModel>? weather,
      @HiveField(4) int? humidity,
      @HiveField(5) int? clouds});
}

/// @nodoc
class _$HourWeatherCopyWithImpl<$Res> implements $HourWeatherCopyWith<$Res> {
  _$HourWeatherCopyWithImpl(this._value, this._then);

  final HourWeather _value;
  // ignore: unused_field
  final $Res Function(HourWeather) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? weather = freezed,
    Object? humidity = freezed,
    Object? clouds = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$HourWeatherCopyWith<$Res>
    implements $HourWeatherCopyWith<$Res> {
  factory _$HourWeatherCopyWith(
          _HourWeather value, $Res Function(_HourWeather) then) =
      __$HourWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) double? feels_like,
      @HiveField(3) List<WeatherModel>? weather,
      @HiveField(4) int? humidity,
      @HiveField(5) int? clouds});
}

/// @nodoc
class __$HourWeatherCopyWithImpl<$Res> extends _$HourWeatherCopyWithImpl<$Res>
    implements _$HourWeatherCopyWith<$Res> {
  __$HourWeatherCopyWithImpl(
      _HourWeather _value, $Res Function(_HourWeather) _then)
      : super(_value, (v) => _then(v as _HourWeather));

  @override
  _HourWeather get _value => super._value as _HourWeather;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? weather = freezed,
    Object? humidity = freezed,
    Object? clouds = freezed,
  }) {
    return _then(_HourWeather(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourWeather implements _HourWeather {
  const _$_HourWeather(
      {@HiveField(0) this.dt,
      @HiveField(1) this.temp,
      @HiveField(2) this.feels_like,
      @HiveField(3) this.weather,
      @HiveField(4) this.humidity,
      @HiveField(5) this.clouds});

  factory _$_HourWeather.fromJson(Map<String, dynamic> json) =>
      _$$_HourWeatherFromJson(json);

  @override
  @HiveField(0)
  final int? dt;
  @override
  @HiveField(1)
  final double? temp;
  @override
  @HiveField(2)
  final double? feels_like;
  @override
  @HiveField(3)
  final List<WeatherModel>? weather;
  @override
  @HiveField(4)
  final int? humidity;
  @override
  @HiveField(5)
  final int? clouds;

  @override
  String toString() {
    return 'HourWeather(dt: $dt, temp: $temp, feels_like: $feels_like, weather: $weather, humidity: $humidity, clouds: $clouds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.feels_like, feels_like) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.clouds, clouds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feels_like),
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(clouds));

  @JsonKey(ignore: true)
  @override
  _$HourWeatherCopyWith<_HourWeather> get copyWith =>
      __$HourWeatherCopyWithImpl<_HourWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourWeatherToJson(this);
  }
}

abstract class _HourWeather implements HourWeather {
  const factory _HourWeather(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) double? feels_like,
      @HiveField(3) List<WeatherModel>? weather,
      @HiveField(4) int? humidity,
      @HiveField(5) int? clouds}) = _$_HourWeather;

  factory _HourWeather.fromJson(Map<String, dynamic> json) =
      _$_HourWeather.fromJson;

  @override
  @HiveField(0)
  int? get dt;
  @override
  @HiveField(1)
  double? get temp;
  @override
  @HiveField(2)
  double? get feels_like;
  @override
  @HiveField(3)
  List<WeatherModel>? get weather;
  @override
  @HiveField(4)
  int? get humidity;
  @override
  @HiveField(5)
  int? get clouds;
  @override
  @JsonKey(ignore: true)
  _$HourWeatherCopyWith<_HourWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
