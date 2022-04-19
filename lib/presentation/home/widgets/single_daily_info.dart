import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/DI/dependency_injection.dart';
import 'package:weather_app/data/model/day_weather/day_weather.dart';
import 'package:weather_app/utils/const.dart';

import '../../../utils/style.dart';

class SingleDailyInfo extends StatelessWidget {
  const SingleDailyInfo({Key? key, required this.dayWeather}) : super(key: key);
  final DayWeather dayWeather;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.fromMillisecondsSinceEpoch(dayWeather.dt! * 1000);
    String time = "";
    double averageTemp = (dayWeather.temp!.morn! +
            dayWeather.temp!.day! +
            dayWeather.temp!.eve! +
            dayWeather.temp!.night!) /
        4;
    if (DateTime.now().day == date.day) {
      time = "$today_average${averageTemp.toInt()}°С";
    } else if (DateTime.now().day == date.day - 1) {
      time = "$tomorrow_average${averageTemp.toInt()}°С";
    } else {
      time =
          "${DateFormat('EEE, MMM d', locator<SharedPreferences>().getString("lang")).format(date)}, $average${averageTemp.toInt()}°С";
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(time),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$weather${dayWeather.weather![0].main}",
                        style: primaryStyle,
                      ),
                      Text(
                        "$humidity${dayWeather.humidity}%",
                        style: primaryStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$morning${dayWeather.temp!.morn!.toInt()}°С",
                        style: primaryStyle,
                      ),
                      Text(
                        "$day${dayWeather.temp!.day!.toInt()}°С",
                        style: primaryStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$evening${dayWeather.temp!.eve!.toInt()}°С",
                        style: primaryStyle,
                      ),
                      Text(
                        "$night${dayWeather.temp!.day!.toInt()}°С",
                        style: primaryStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
