import 'package:artiver/domain/connection/connection_facade_interface.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'injection.config.dart';

/// [GetIt] instance required for [injectable] configuration.
GetIt s1 = GetIt.instance;

/// Default [injectable] configuration, marked with
/// [injectableInit] for code generation.
@injectableInit
void configureInjection(String env) {
  $initGetIt(s1, environment: env);
}

Future<void> init() async {
  s1.registerLazySingleton(() => InternetConnectionChecker());
}
