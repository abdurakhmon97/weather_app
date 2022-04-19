import 'package:flutter/material.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';
import 'package:weather_app/presentation/home/widgets/single_daily_info.dart';
import 'package:weather_app/presentation/home/widgets/single_hour_info.dart';
import 'package:weather_app/utils/const.dart';
import 'package:weather_app/utils/style.dart';

class WeatherList extends StatelessWidget {
  const WeatherList(
      {Key? key, required this.mainResponseModel, required this.daily})
      : super(key: key);
  final MainResponseModel mainResponseModel;
  final bool daily;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          daily ? "$daily_forecast${mainResponseModel.daily!.length} $days" : hourly_forecast,
          style: primaryMediumBoldStyle,
        ),
        const SizedBox(
          height: 16,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return daily
                ? SingleDailyInfo(
                    dayWeather: mainResponseModel.daily![index],
                  )
                : SingleHourInfo(
                    hourWeather: mainResponseModel.hourly![index],
                  );
          },
          itemCount: daily
              ? mainResponseModel.daily!.length
              : mainResponseModel.hourly!.length,
        ),
      ],
    );
  }
}
