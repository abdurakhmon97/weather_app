import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String baseUrl = 'https://api.openweathermap.org/data/2.5';
const String appid = "97465b82b0466a487367850e5320f7cc";
const String currentInfo = 'currentInfo';
const String mainInfo = 'hourWeather';
const String savedTime = 'savedTime';
final navigatorKey = GlobalKey<NavigatorState>();
final BuildContext context = navigatorKey.currentState!.context;

String get home => AppLocalizations.of(context)!.home;
String get showByHour => AppLocalizations.of(context)!.showByHour;
String get showByDay => AppLocalizations.of(context)!.showByDay;
String get homePageOffline => AppLocalizations.of(context)!.homePageOffline;
String get lastUpdate => AppLocalizations.of(context)!.lastUpdate;
String get current_weather => AppLocalizations.of(context)!.currentWeather;
String get city => AppLocalizations.of(context)!.city;
String get weather => AppLocalizations.of(context)!.weather;
String get temperature => AppLocalizations.of(context)!.temperature;
String get feels_like => AppLocalizations.of(context)!.feels_like;
String get today_average => AppLocalizations.of(context)!.today_average;
String get tomorrow_average => AppLocalizations.of(context)!.tomorrow_average;
String get average => AppLocalizations.of(context)!.average;
String get humidity => AppLocalizations.of(context)!.humidity;
String get morning => AppLocalizations.of(context)!.morning;
String get day => AppLocalizations.of(context)!.day;
String get evening => AppLocalizations.of(context)!.evening;
String get night => AppLocalizations.of(context)!.night;
String get today => AppLocalizations.of(context)!.today;
String get tomorrow => AppLocalizations.of(context)!.tomorrow;
String get clouds => AppLocalizations.of(context)!.clouds;
String get daily_forecast => AppLocalizations.of(context)!.dailyForecast;
String get days => AppLocalizations.of(context)!.days;
String get hourly_forecast => AppLocalizations.of(context)!.hourly_forecast;
String get homeBlocOffline => AppLocalizations.of(context)!.homeBlocOffline;
String get could_not_fetch => AppLocalizations.of(context)!.couldnt_fetch;
