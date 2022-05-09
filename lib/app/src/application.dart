library application;

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sarbaz/core/core.dart';
import 'package:sarbaz/utility/utility.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

import 'bindings/bindings.dart';
import 'components/components.dart';
import 'pages/pages.dart';
import 'themes/themes.dart';

part 'application_entry_point.dart';

class SarbazApplication {
  void run() async {
    IO.loadLibraries();
    WidgetsFlutterBinding.ensureInitialized();
    // Setting up logging services for better logging.
    LoggerService.setup();
    // Setting up dependency injection provided by kiwi.
    Injector.setup(Env.dev);
    // Run the app
    runApp(const ApplicationEntryPoint());
  }
}
