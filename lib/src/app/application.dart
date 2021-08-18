import 'package:flutter/material.dart';
import 'package:sarbaz/src/app/application_entry_point.dart';
import 'package:sarbaz/src/core/config/config.dart';


class Application {
  void run() {
    WidgetsFlutterBinding.ensureInitialized();
    // Setting up logging services for better logging.
    LoggerService.setup();
    // Setting up dependency injection provided by kiwi.
    Injector.setup(Env.prod);
    // Setting hive data base as locale storage.
   // HiveDB.setup();
    // Using phoenix to restart application from inside when is running.
    runApp(ApplicationEntryPoint());
  }
}
