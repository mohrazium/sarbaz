part of config;

class Injector {
  static void setup(String environment) => _setup(environment);
}

class Env {
  static String get mode => _environmentMode;
  static const String prod = "production";
  static const String dev = "development";
}

String _environmentMode = "";

void _setup(String environment) {
  if (environment == Env.dev) {
    _environmentMode = environment;
    final soldierDatabase = SoldierDatabaseHelper().instance;
    soldierDatabase.auditDAO.setup();
    Get.lazyPut<LoggerService>(() => LoggerService());
    // _setupDb();
    Get.lazyPut<AnnualOvertimeService>(
        () => AnnualOvertimeServiceImpl(soldierDatabase.annualOvertimeDAO));
    Get.lazyPut<ContactInfoService>(
        () => ContactInfoServiceImpl(soldierDatabase.contactInfoDAO));
    Get.lazyPut<DailyAbsenceOvertimeService>(() =>
        DailyAbsenceOvertimeServiceImpl(
            soldierDatabase.dailyAbsenceOvertimeDAO));
    Get.lazyPut<DailyVacationService>(
        () => DailyVacationServiceImpl(soldierDatabase.dailyVacationDAO));
    Get.lazyPut<DisciplinaryOvertimeService>(() =>
        DisciplinaryOvertimeServiceImpl(
            soldierDatabase.disciplinaryOvertimeDAO));
    Get.lazyPut<EducationalInfoService>(
        () => EducationalInfoServiceImpl(soldierDatabase.educationalInfoDAO));
    Get.lazyPut<FurtherInfoService>(
        () => FurtherInfoServiceImpl(soldierDatabase.furtherInfoDAO));
    Get.lazyPut<HealthStatusService>(
        () => HealthStatusServiceImpl(soldierDatabase.healthStatusDAO));
    Get.lazyPut<HourlyVacationService>(
        () => HourlyVacationServiceImpl(soldierDatabase.hourlyVacationDAO));
    Get.lazyPut<OperationalServiceDeficitRecordService>(() =>
        OperationalServiceDeficitRecordServiceImpl(
            soldierDatabase.operationalServiceDeficitRecordDAO));
    Get.lazyPut<OvertimeService>(
        () => OvertimeServiceImpl(soldierDatabase.overtimeDAO));
    Get.lazyPut<PersonalInfoService>(
        () => PersonalInfoServiceImpl(soldierDatabase.personalInfoDAO));
    Get.lazyPut<RankService>(() => RankServiceImpl(soldierDatabase.rankDAO));
    Get.lazyPut<SectionService>(
        () => SectionServiceImpl(soldierDatabase.sectionDAO));
    Get.lazyPut<ServiceDeficitRecordService>(() =>
        ServiceDeficitRecordServiceImpl(
            soldierDatabase.serviceDeficitRecordDAO));
    Get.lazyPut<ServiceDeficitService>(
        () => ServiceDeficitServiceImpl(soldierDatabase.serviceDeficitDAO));
    Get.lazyPut<SoldierCaseService>(
        () => SoldierCaseServiceImpl(soldierDatabase.soldierCaseDAO));
    Get.lazyPut<SoldierService>(
        () => SoldierServiceImpl(soldierDatabase.soldierDAO));
    Get.lazyPut<TrainingStatusService>(
        () => TrainingStatusServiceImpl(soldierDatabase.trainingStatusDAO));
    Get.lazyPut<UnitPropertiesService>(
        () => UnitPropertiesServiceImpl(soldierDatabase.unitPropertiesDAO));
    Get.lazyPut<VacationsService>(
        () => VacationsServiceImpl(soldierDatabase.vacationsDAO));
    Get.lazyPut<ViolationsOvertimeService>(() =>
        ViolationsOvertimeServiceImpl(soldierDatabase.violationsOvertimeDAO));
    Get.lazyPut<CaseService>(() => CaseServiceImpl(soldierDatabase.caseDAO));
  }
}
