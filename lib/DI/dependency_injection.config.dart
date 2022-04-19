// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../data/api/register_module.dart' as _i8;
import '../data/api/weather_api.dart' as _i5;
import '../data/repository/weather_repository.dart' as _i6;
import '../domain/weather_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<String>(() => registerModule.url, instanceName: 'BaseUrl');
  gh.lazySingleton<_i4.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i5.WeatherApi>(() => _i5.WeatherApi(get<_i4.Dio>()));
  gh.lazySingleton<_i6.WeatherRepository>(
      () => _i6.WeatherRepository(get<_i5.WeatherApi>()));
  gh.lazySingleton<_i7.WeatherService>(
      () => _i7.WeatherService(get<_i6.WeatherRepository>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
