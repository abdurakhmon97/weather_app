import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';

part 'weather_api.g.dart';

@injectable
@RestApi(baseUrl: '')
abstract class WeatherApi {
  @factoryMethod
  factory WeatherApi(Dio dio) = _WeatherApi;

  @GET('/weather')
  Future<CurrentWeather> getCurrentWeather(
    @Query("lat") String lat,
    @Query("lon") String lon,
  );

  @GET('/onecall')
  Future<MainResponseModel> getForecastWeather(
      @Query("lat") String lat,
      @Query("lon") String lon,
      );
}
