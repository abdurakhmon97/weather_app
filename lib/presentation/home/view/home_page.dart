import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';
import 'package:weather_app/presentation/home/widgets/basic_info.dart';
import 'package:weather_app/presentation/home/widgets/weather_list.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/utils/const.dart';
import 'package:weather_app/utils/style.dart';

import '../bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = "home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          home,
          style: appBarTitle,
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) => onSelected(context, value),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: Text(
                    showByHour,
                    style: primaryStyle,
                  ),
                  value: 0,
                ),
                PopupMenuItem<int>(
                  child: Text(
                    showByDay,
                    style: primaryStyle,
                  ),
                  value: 1,
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is HomePageLoading || state is HomePageInitial) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is HomePageError) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<HomePageBloc>(context)
                    .add(const FetchCurrentWeather(false));
              },
              child: ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          state.error,
                          textAlign: TextAlign.center,
                          style: primaryStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          final CurrentWeather currentWeather =
              (state as HomePageSuccess).currentWeather;
          final MainResponseModel mainResponseModel = state.mainResponseModel;
          final bool daily = state.daily;
          return RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<HomePageBloc>(context)
                  .add(const FetchCurrentWeather(false));
            },
            child: ListView(
              shrinkWrap: true,
              children: [
                if (state.dateTime != null) ...[
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      homePageOffline,
                      textAlign: TextAlign.center,
                      style: primarySemiBold,
                    ),
                  ),
                ],
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: BasicInfo(
                    cityName: currentWeather.name!,
                    weatherType: currentWeather.weather![0]!.main!,
                    temp: currentWeather.main!.temp!.toInt(),
                    feelsLike: currentWeather.main!.feels_like!.toInt(),
                    isOffline: state.dateTime != null,
                    dateTime: state.dateTime,
                  ),
                ),
                WeatherList(
                  mainResponseModel: mainResponseModel,
                  daily: daily,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    bool currentType = BlocProvider.of<HomePageBloc>(context)
        .weatherService
        .daily; //do not update if user clicks by hour while being on by hour page

    if (item == 0 && !currentType) {
      return;
    } else if (item == 1 && currentType) {
      return;
    } else {
      BlocProvider.of<HomePageBloc>(context)
          .add(FetchCurrentWeather(!currentType));
    }
  }
}
