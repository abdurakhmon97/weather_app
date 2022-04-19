import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';
import 'package:weather_app/domain/weather_service.dart';
import 'package:weather_app/utils/const.dart';
import 'package:weather_app/utils/function.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final WeatherService weatherService;

  HomePageBloc(this.weatherService) : super(HomePageInitial()) {
    on<FetchCurrentWeather>(_onFetchCurrentWeather);
  }

  FutureOr<void> _onFetchCurrentWeather(
      FetchCurrentWeather event, Emitter<HomePageState> emit) async {
    emit(HomePageLoading());

    weatherService.changeType(event.daily);
    try {
      LocationData? locationData = await getLocation();
      String lat = "50.45089146626904"; //by default Kiev location given
      String long = "30.512269281559018";
      if (locationData != null) {
        lat = locationData.latitude.toString();
        long = locationData.longitude.toString();
      }
      //two requests, because onecall endpoint does not return city name
      final CurrentWeather currentWeather =
          await weatherService.getCurrentWeather(lat, long);
      final MainResponseModel mainResponseModel =
          await weatherService.getForecastWeather(lat, long);

      emit(HomePageSuccess(
          currentWeather, mainResponseModel, event.daily, null));
      await storeToDatabase(mainResponseModel, currentWeather);
    } catch (e) {
      if (e.toString().contains("SocketException")) {
        final databaseCurrent = await Hive.openBox(currentInfo);
        final databaseMain = await Hive.openBox(mainInfo);
        final databaseTime = await Hive.openBox(savedTime);

        CurrentWeather? currentWeather = await databaseCurrent.get(currentInfo);
        MainResponseModel? mainResponseModel = await databaseMain.get(mainInfo);
        String? savedDate = await databaseTime.get(savedTime);

        if (currentWeather != null &&
            mainResponseModel != null &&
            savedDate != null) {
          emit(HomePageSuccess(currentWeather, mainResponseModel,
              weatherService.daily, savedDate));
        } else {
          emit(HomePageError(homeBlocOffline));
        }
      } else {
        log(e.toString());
        emit(HomePageError(could_not_fetch));
      }
    }
  }

  Future<void> storeToDatabase(MainResponseModel mainResponseModel,
      CurrentWeather currentWeather) async {
    final databaseCurrent = await Hive.openBox(currentInfo);
    final databaseMain = await Hive.openBox(mainInfo);
    final databaseTime = await Hive.openBox(savedTime);

    await databaseTime.put(
        savedTime, DateFormat('EEE, MMM d, ' 'h:mm a').format(DateTime.now()));
    await databaseCurrent.put(currentInfo, currentWeather);
    await databaseMain.put(mainInfo, mainResponseModel);
  }
}
