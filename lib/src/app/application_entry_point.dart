import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sarbaz/src/app/app.dart'; // Add this line.

class ApplicationEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.config(
        enableLog: true,
        defaultPopGesture: true,
        defaultTransition: Transition.cupertino);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(primaryColor: Colors.green),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple),
      // NOTE: Optional - use themeMode to specify the startup theme
      themeMode: ThemeMode.system,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("fa"),
      home: DashboardPage(),
      initialBinding: SoldierBinding(),
    );
  }
}
