import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/utils/const.dart';
import 'package:weather_app/utils/style.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo(
      {Key? key,
      required this.cityName,
      required this.weatherType,
      required this.temp,
      required this.feelsLike, required this.isOffline, this.dateTime})
      : super(key: key);
  final String cityName;
  final String weatherType;
  final int temp;
  final int feelsLike;
  final bool isOffline;
  final String? dateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: bgGrey,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 10,
              color: shadowForIntro.withOpacity(0.1),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              isOffline ? "$lastUpdate$dateTime" : current_weather,
              textAlign: TextAlign.center,
              style: primaryMediumBoldStyle,
            ),
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                city,
                style: primarySemiBold,
              ),
              Text(
                cityName,
                style: secondaryStyle,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                weather,
                style: primarySemiBold,
              ),
              Text(
                weatherType,
                style: secondaryStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                temperature,
                style: primarySemiBold,
              ),
              Text(
                "${temp.toString()}°С",
                style: secondaryStyle,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                feels_like,
                style: primarySemiBold,
              ),
              Text(
                "${feelsLike.toString()}°С",
                style: secondaryStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
