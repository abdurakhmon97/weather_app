// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayWeather _$DayWeatherFromJson(Map<String, dynamic> json) {
  return _DayWeather.fromJson(json);
}

/// @nodoc
class _$DayWeatherTearOff {
  const _$DayWeatherTearOff();

  _DayWeather call(
      {@HiveField(0) int? dt,
      @HiveField(1) TempField? temp,
      @HiveField(2) int? humidity,
      @HiveField(3) int? clouds,
      @HiveField(4) List<WeatherModel>? weather}) {
    return _DayWeather(
      dt: dt,
      temp: temp,
      humidity: humidity,
      clouds: clouds,
      weather: weather,
    );
  }

  DayWeather fromJson(Map<String, Object?> json) {
    return DayWeather.fromJson(json);
  }
}

/// @nodoc
const $DayWeather = _$DayWeatherTearOff();

/// @nodoc
mixin _$DayWeather {
  @HiveField(0)
  int? get dt => throw _privateConstructorUsedError;
  @HiveField(1)
  TempField? get temp => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get humidity => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get clouds => throw _privateConstructorUsedError;
  @HiveField(4)
  List<WeatherModel>? get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWeatherCopyWith<DayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWeatherCopyWith<$Res> {
  factory $DayWeatherCopyWith(
          DayWeather value, $Res Function(DayWeather) then) =
      _$DayWeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) TempField? temp,
      @HiveField(2) int? humidity,
      @HiveField(3) int? clouds,
      @HiveField(4) List<WeatherModel>? weather});

  $TempFieldCopyWith<$Res>? get temp;
}

/// @nodoc
class _$DayWeatherCopyWithImpl<$Res> implements $DayWeatherCopyWith<$Res> {
  _$DayWeatherCopyWithImpl(this._value, this._then);

  final DayWeather _value;
  // ignore: unused_field
  final $Res Function(DayWeather) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? clouds = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempField?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
    ));
  }

  @override
  $TempFieldCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempFieldCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$DayWeatherCopyWith<$Res> implements $DayWeatherCopyWith<$Res> {
  factory _$DayWeatherCopyWith(
          _DayWeather value, $Res Function(_DayWeather) then) =
      __$DayWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) TempField? temp,
      @HiveField(2) int? humidity,
      @HiveField(3) int? clouds,
      @HiveField(4) List<WeatherModel>? weather});

  @override
  $TempFieldCopyWith<$Res>? get temp;
}

/// @nodoc
class __$DayWeatherCopyWithImpl<$Res> extends _$DayWeatherCopyWithImpl<$Res>
    implements _$DayWeatherCopyWith<$Res> {
  __$DayWeatherCopyWithImpl(
      _DayWeather _value, $Res Function(_DayWeather) _then)
      : super(_value, (v) => _then(v as _DayWeather));

  @override
  _DayWeather get _value => super._value as _DayWeather;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? clouds = freezed,
    Object? weather = freezed,
  }) {
    return _then(_DayWeather(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempField?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayWeather implements _DayWeather {
  const _$_DayWeather(
      {@HiveField(0) this.dt,
      @HiveField(1) this.temp,
      @HiveField(2) this.humidity,
      @HiveField(3) this.clouds,
      @HiveField(4) this.weather});

  factory _$_DayWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DayWeatherFromJson(json);

  @override
  @HiveField(0)
  final int? dt;
  @override
  @HiveField(1)
  final TempField? temp;
  @override
  @HiveField(2)
  final int? humidity;
  @override
  @HiveField(3)
  final int? clouds;
  @override
  @HiveField(4)
  final List<WeatherModel>? weather;

  @override
  String toString() {
    return 'DayWeather(dt: $dt, temp: $temp, humidity: $humidity, clouds: $clouds, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(clouds),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$DayWeatherCopyWith<_DayWeather> get copyWith =>
      __$DayWeatherCopyWithImpl<_DayWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayWeatherToJson(this);
  }
}

abstract class _DayWeather implements DayWeather {
  const factory _DayWeather(
      {@HiveField(0) int? dt,
      @HiveField(1) TempField? temp,
      @HiveField(2) int? humidity,
      @HiveField(3) int? clouds,
      @HiveField(4) List<WeatherModel>? weather}) = _$_DayWeather;

  factory _DayWeather.fromJson(Map<String, dynamic> json) =
      _$_DayWeather.fromJson;

  @override
  @HiveField(0)
  int? get dt;
  @override
  @HiveField(1)
  TempField? get temp;
  @override
  @HiveField(2)
  int? get humidity;
  @override
  @HiveField(3)
  int? get clouds;
  @override
  @HiveField(4)
  List<WeatherModel>? get weather;
  @override
  @JsonKey(ignore: true)
  _$DayWeatherCopyWith<_DayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
