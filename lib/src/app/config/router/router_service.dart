
import 'package:get/get.dart';
import 'package:sarbaz/src/app/screens/screens.dart';

part 'routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => DashboardPage(),
      binding: ApplicationControllerBinding(),
    ),
  ];
}
