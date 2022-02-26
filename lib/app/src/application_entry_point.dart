part of application;

class _ApplicationEntryPoint extends StatelessWidget {
  const _ApplicationEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.config(
        enableLog: true,
        defaultPopGesture: true,
        defaultTransition: Transition.native);

    return GetMaterialApp(
       smartManagement: SmartManagement.full,
       enableLog: true,
      title: Strings.title,
      theme: Themizer.basic,
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple),
      // NOTE: Optional - use themeMode to specify the startup theme
      themeMode: ThemeMode.light,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("fa"),
      home: const DashboardPage(),
      initialBinding: ApplicationControllerBinding(),
    );
  }
}
