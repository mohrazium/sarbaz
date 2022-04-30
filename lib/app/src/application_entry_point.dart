part of application;

class ApplicationEntryPoint extends StatelessWidget {
  const ApplicationEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.config(
        enableLog: true,
        defaultPopGesture: true,
        defaultTransition: Transition.zoom);

    return Toast(
        materialApp: GetMaterialApp(
      smartManagement: SmartManagement.full,
      enableLog: true,
      title: Strings.title,
      theme: Themizer.light,
      darkTheme: ThemeData.light(),
      // NOTE: Optional - use themeMode to specify the startup theme
      themeMode: ThemeMode.light,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: const [Locale("fa")],
      locale: kDefaultLocale,
      home: SplashPage.timer(
        seconds: 2,
        navigateAfterSeconds: const DashboardPage(),
        title: const Text(
          'مدیریت منابع انسانی سرباز',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset(
          ImagesConstants.sepahLogo,
        ),
        photoSize: 120,
        backgroundColor: Colors.white,
        loaderColor: Colors.red,
      ),
      initialBinding: ApplicationControllerBinding(),
    ));
  }
}
