part of config;

class Injector {
  static void setup(String environment) => _setup(environment);
}

class Env {
  static const String prod = "production";
  static const String dev = "development";
}

void _setup(String environment) {
  if (environment == Env.dev) {
    Get.lazyPut<LoggerService>(() => LoggerService());
    Get.create<SoldierDatabaseHelper>(() => SoldierDatabaseHelper());
    Get.lazyPut<AnnualOvertimeService>(() => AnnualOvertimeServiceImpl());
    Get.lazyPut<ContactInfoService>(() => ContactInfoServiceImpl());
    Get.lazyPut<DailyAbsenceOvertimeService>(
        () => DailyAbsenceOvertimeServiceImpl());
    Get.lazyPut<DailyVaccationService>(() => DailyVaccationServiceImpl());
    Get.lazyPut<DisciplinalOvertimeService>(
        () => DisciplinalOvertimeServiceImpl());
    Get.lazyPut<EducationalInfoService>(() => EducationalInfoServiceImpl());
    Get.lazyPut<FurtherInfoService>(() => FurtherInfoServiceImpl());
    Get.lazyPut<HealthStatusService>(() => HealthStatusServiceImpl());
    Get.lazyPut<HourlyVaccationService>(() => HourlyVaccationServiceImpl());
    Get.lazyPut<OperationalServiceDeficitRecordService>(
        () => OperationalServiceDeficitRecordServiceImpl());
    Get.lazyPut<OvertimeService>(() => OvertimeServiceImpl());
    Get.lazyPut<PersonalInfoService>(() => PersonalInfoServiceImpl());
    Get.lazyPut<RankService>(() => RankServiceImpl());
    Get.lazyPut<SectionService>(() => SectionServiceImpl());
    Get.lazyPut<ServiceDeficitRecordService>(
        () => ServiceDeficitRecordServiceImpl());
    Get.lazyPut<ServiceDeficitService>(() => ServiceDeficitServiceImpl());
    Get.lazyPut<SoldierCaseService>(() => SoldierCaseServiceImpl());
    Get.lazyPut<SoldierService>(() => SoldierServiceImpl());
    Get.lazyPut<TrainigStatusService>(() => TrainigStatusServiceImpl());
    Get.lazyPut<UnitPropertiesService>(() => UnitPropertiesServiceImpl());
    Get.lazyPut<VaccationsService>(() => VaccationsServiceImpl());
    Get.lazyPut<ViolationsOvertimeService>(
        () => ViolationsOvertimeServiceImpl());
  }
}
