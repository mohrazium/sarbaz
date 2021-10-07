import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import 'package:sarbaz/src/app/app.dart';

import 'screens/screens.dart';

class ApplicationEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.config(
        enableLog: true,
        defaultPopGesture: true,
        defaultTransition: Transition.native);


    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themizer.getTheme,
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple),
      // NOTE: Optional - use themeMode to specify the startup theme
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("fa"),
      home: DashboardPage(),
      initialBinding: SoldierBinding(),
    );
  }
}
