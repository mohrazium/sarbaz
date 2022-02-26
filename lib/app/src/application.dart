library application;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/core/core.dart';
import 'package:sarbaz/utility/utility.dart';


import 'bindings/bindings.dart';
import 'pages/pages.dart';
import 'themes/themes.dart';

part 'application_entry_point.dart';

class SarbazApplication {
  void run() {
    WidgetsFlutterBinding.ensureInitialized();
    // Setting up logging services for better logging.
    LoggerService.setup();
    // Setting up dependency injection provided by kiwi.
    Injector.setup(Env.dev);
    // Setting hive data base as locale storage.
    // HiveDB.setup();
    // Using phoenix to restart application from inside when is running.
    runApp(const _ApplicationEntryPoint());
  }
}
