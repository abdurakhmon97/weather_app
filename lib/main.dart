
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/DI/dependency_injection.dart';
import 'package:weather_app/data/model/current_weather/current_weather.dart';
import 'package:weather_app/data/model/day_weather/temp_field.dart';
import 'package:weather_app/data/model/hour_weather/hour_weather.dart';
import 'package:weather_app/data/model/main_response/main_response_model.dart';
import 'package:weather_app/domain/weather_service.dart';
import 'package:weather_app/presentation/home/bloc/home_page_bloc.dart';
import 'package:weather_app/presentation/splash/splash_screen.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/utils/const.dart';

import 'data/model/current_weather/weather_main_field.dart';
import 'data/model/current_weather/weather_model.dart';
import 'data/model/day_weather/day_weather.dart';

import 'package:firebase_core/firebase_core.dart';


//App uses three layers
//data layer - we keep our networking layer, repos and models
//domain layer - this layer does not matter for this app, but this layer also called service, it is to filter our responses, this layer must
// return some value
//presentation - our ui and bloc

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await setupLocator();
  await setupHive();
  runApp(const MyApp());
}

Future<void> setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CurrentWeatherAdapter());
  Hive.registerAdapter(WeatherMainFieldAdapter());
  Hive.registerAdapter(WeatherModelAdapter());
  Hive.registerAdapter(DayWeatherAdapter());
  Hive.registerAdapter(TempFieldAdapter());
  Hive.registerAdapter(HourWeatherAdapter());
  Hive.registerAdapter(MainResponseModelAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomePageBloc>(create: (context) {
            return HomePageBloc(locator<WeatherService>())..add(const FetchCurrentWeather(false));
          }),
        ],
        child: MaterialApp(
          navigatorKey: navigatorKey,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('ru'),
          ],
          localeListResolutionCallback: (locale, locales) {
            String language = 'en';
            if(locale != null && locale[0].languageCode == 'ru') {
              language = 'ru';
            }
            locator<SharedPreferences>().setString("lang", language);
            return language == "ru" ? const Locale("ru") : const Locale("en");
          },
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: myColor, fontFamily: 'Sf_pro'),
          debugShowCheckedModeBanner: false,
          home: const IntroPage(),
        ),
      ),
    );
  }
}
