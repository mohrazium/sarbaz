part of config;

class Injector {
  static void setup(String environment) => _setup(environment);
}

class Env {
  static const String prod = "production";
  static const String dev = "development";

}

void _setup(String environment) {
  Get.lazyPut<LoggerService>(() => LoggerService());
  Get.lazyPut<PersonalInfoService>(() => PersonalInfoServiceImpl());
  Get.create<SoldierDatabaseHelper>(() => SoldierDatabaseHelper());
}
