import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/themes/themes.dart';
import 'screens/screens.dart';

class ApplicationEntryPoint extends StatelessWidget {
  const ApplicationEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.config(
        enableLog: true,
        defaultPopGesture: true,
        defaultTransition: Transition.native);

    return GetMaterialApp(
      title: 'سرباز',
      theme: Themizer.basic,
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple),
      // NOTE: Optional - use themeMode to specify the startup theme
      themeMode: ThemeMode.light,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("fa"),
      home:  const DashboardPage(),
      initialBinding: ApplicationControllerBinding(),
    );
  }
}
