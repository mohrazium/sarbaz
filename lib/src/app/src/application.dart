import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'sarbaz_entry_point.dart';

class SarbazApplication {
  void run() async {
    IO.loadLibraries();
    WidgetsFlutterBinding.ensureInitialized();
    // Setting up logging services for better logging.
    LoggerService.setup();
    // Setting up dependency injection provided by kiwi.
    Injector.setup(Env.dev);
    // Run the app
    runApp(const SarbazEntryPoint());
  }
}
