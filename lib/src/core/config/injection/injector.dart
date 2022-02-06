import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final GetIt _getIt = GetIt.instance;

@injectableInit
void _setup(String environment) => $initGetIt(_getIt, environment: environment);

class Injector {
  static void setup(String environment) => _setup(environment);

  static final GetIt resolve = _getIt;
}

