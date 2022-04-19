// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainResponseModel _$MainResponseModelFromJson(Map<String, dynamic> json) {
  return _MainResponseModel.fromJson(json);
}

/// @nodoc
class _$MainResponseModelTearOff {
  const _$MainResponseModelTearOff();

  _MainResponseModel call(
      {@HiveField(0) List<HourWeather>? hourly,
      @HiveField(1) List<DayWeather>? daily}) {
    return _MainResponseModel(
      hourly: hourly,
      daily: daily,
    );
  }

  MainResponseModel fromJson(Map<String, Object?> json) {
    return MainResponseModel.fromJson(json);
  }
}

/// @nodoc
const $MainResponseModel = _$MainResponseModelTearOff();

/// @nodoc
mixin _$MainResponseModel {
  @HiveField(0)
  List<HourWeather>? get hourly => throw _privateConstructorUsedError;
  @HiveField(1)
  List<DayWeather>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainResponseModelCopyWith<MainResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResponseModelCopyWith<$Res> {
  factory $MainResponseModelCopyWith(
          MainResponseModel value, $Res Function(MainResponseModel) then) =
      _$MainResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) List<HourWeather>? hourly,
      @HiveField(1) List<DayWeather>? daily});
}

/// @nodoc
class _$MainResponseModelCopyWithImpl<$Res>
    implements $MainResponseModelCopyWith<$Res> {
  _$MainResponseModelCopyWithImpl(this._value, this._then);

  final MainResponseModel _value;
  // ignore: unused_field
  final $Res Function(MainResponseModel) _then;

  @override
  $Res call({
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourWeather>?,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DayWeather>?,
    ));
  }
}

/// @nodoc
abstract class _$MainResponseModelCopyWith<$Res>
    implements $MainResponseModelCopyWith<$Res> {
  factory _$MainResponseModelCopyWith(
          _MainResponseModel value, $Res Function(_MainResponseModel) then) =
      __$MainResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) List<HourWeather>? hourly,
      @HiveField(1) List<DayWeather>? daily});
}

/// @nodoc
class __$MainResponseModelCopyWithImpl<$Res>
    extends _$MainResponseModelCopyWithImpl<$Res>
    implements _$MainResponseModelCopyWith<$Res> {
  __$MainResponseModelCopyWithImpl(
      _MainResponseModel _value, $Res Function(_MainResponseModel) _then)
      : super(_value, (v) => _then(v as _MainResponseModel));

  @override
  _MainResponseModel get _value => super._value as _MainResponseModel;

  @override
  $Res call({
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_MainResponseModel(
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourWeather>?,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DayWeather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainResponseModel implements _MainResponseModel {
  const _$_MainResponseModel(
      {@HiveField(0) this.hourly, @HiveField(1) this.daily});

  factory _$_MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainResponseModelFromJson(json);

  @override
  @HiveField(0)
  final List<HourWeather>? hourly;
  @override
  @HiveField(1)
  final List<DayWeather>? daily;

  @override
  String toString() {
    return 'MainResponseModel(hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainResponseModel &&
            const DeepCollectionEquality().equals(other.hourly, hourly) &&
            const DeepCollectionEquality().equals(other.daily, daily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hourly),
      const DeepCollectionEquality().hash(daily));

  @JsonKey(ignore: true)
  @override
  _$MainResponseModelCopyWith<_MainResponseModel> get copyWith =>
      __$MainResponseModelCopyWithImpl<_MainResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainResponseModelToJson(this);
  }
}

abstract class _MainResponseModel implements MainResponseModel {
  const factory _MainResponseModel(
      {@HiveField(0) List<HourWeather>? hourly,
      @HiveField(1) List<DayWeather>? daily}) = _$_MainResponseModel;

  factory _MainResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MainResponseModel.fromJson;

  @override
  @HiveField(0)
  List<HourWeather>? get hourly;
  @override
  @HiveField(1)
  List<DayWeather>? get daily;
  @override
  @JsonKey(ignore: true)
  _$MainResponseModelCopyWith<_MainResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
