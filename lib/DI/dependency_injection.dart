import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

final locator = GetIt.instance;
// final fdf = GetIt

@injectableInit
Future <void> setupLocator() async => await $initGetIt(locator);
