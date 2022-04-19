import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/DI/dependency_injection.dart';

import '../../utils/const.dart';

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get url => baseUrl;

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) =>
      Dio(BaseOptions(baseUrl: url, queryParameters: {
        'appid': appid,
        'lang': locator<SharedPreferences>().getString("lang"),
        'units': 'metric',
        'exclude': ['minutely', 'alerts', 'current'],
      }))
        ..interceptors.addAll(
          [
            if (kDebugMode)
              Alice(navigatorKey: navigatorKey).getDioInterceptor(),
          ],
        );
}
