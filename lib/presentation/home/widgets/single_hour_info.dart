import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/data/model/hour_weather/hour_weather.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/utils/const.dart';
import 'package:weather_app/utils/style.dart';

import '../../../DI/dependency_injection.dart';

class SingleHourInfo extends StatelessWidget {
  const SingleHourInfo({Key? key, required this.hourWeather}) : super(key: key);
  final HourWeather hourWeather;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.fromMillisecondsSinceEpoch(hourWeather.dt! * 1000);
    String time = "";
    if (DateTime.now().day == date.day) {
      time =
          "$today${DateFormat('h:mm a').format(date)}: ${hourWeather.temp!.toInt()}°С";
    } else if (DateTime.now().day == date.day - 1) {
      time =
          "$tomorrow${DateFormat('h:mm a').format(date)}: ${hourWeather.temp!.toInt()}°С";
    } else {
      time =
          "${DateFormat('EEE, MMM d, ' 'h:mm a', locator<SharedPreferences>().getString("lang")).format(date)}: ${hourWeather.temp!.toInt()}°С";
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
                        "$feels_like${hourWeather.feels_like!.toInt()}°С",
                        style: primaryStyle,
                      ),
                      Text(
                        "$humidity${hourWeather.humidity}%",
                        style: primaryStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$clouds ${hourWeather.clouds}%",
                        style: primaryStyle,
                      ),
                      Text(
                        "$weather ${hourWeather.weather![0].main}",
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
