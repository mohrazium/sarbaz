part of router;

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardPage(),
      binding: ApplicationControllerBinding(),
    ),
    GetPage(
      name: Routes.soldiers,
      page: () => const SoldierEditorView(),
     // binding: ApplicationControllerBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardPage(),
     // binding: ApplicationControllerBinding(),
    ),
  ];
}
