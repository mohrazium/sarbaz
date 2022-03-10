part of application;

class ApplicationEntryPoint extends StatelessWidget {
  const ApplicationEntryPoint({Key? key}) : super(key: key);

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: const [Locale("fa")],
      locale: const Locale("fa"),
      home: const DashboardPage(),
      initialBinding: ApplicationControllerBinding(),
    );
  }
}
