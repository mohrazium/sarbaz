part of config;

class Injector {
  static void setup(String environment) {
    _setupServices(environment);
  }
}

class Env {
  static String get mode => _environmentMode;
  static const String prod = "production";
  static const String dev = "development";
}

String _environmentMode = "";

Future<void> _setupServices(String environment) async {
  if (environment == Env.dev) {
    _environmentMode = environment;
    // final soldierDatabase = kIsWeb ? soldierWebDb() : soldierNativeDb();
    final _soldierDatabase = SoldierDatabaseHelper().dbInstance;
    _soldierDatabase.auditDAO.setup();

    Get.lazyPut<LoggerService>(() => LoggerService());

    // _setupDb();
    Get.lazyPut<AnnualOvertimeService>(
        () => AnnualOvertimeServiceImpl(_soldierDatabase.annualOvertimeDAO));

    Get.lazyPut<ContactInfoService>(
        () => ContactInfoServiceImpl(_soldierDatabase.contactInfoDAO));

    Get.lazyPut<DailyAbsenceOvertimeService>(() =>
        DailyAbsenceOvertimeServiceImpl(
            _soldierDatabase.dailyAbsenceOvertimeDAO));

    Get.lazyPut<DailyVacationService>(
        () => DailyVacationServiceImpl(_soldierDatabase.dailyVacationDAO));

    Get.lazyPut<DisciplinaryOvertimeService>(() =>
        DisciplinaryOvertimeServiceImpl(
            _soldierDatabase.disciplinaryOvertimeDAO));

    Get.lazyPut<EducationalInfoService>(
        () => EducationalInfoServiceImpl(_soldierDatabase.educationalInfoDAO));

    Get.lazyPut<FurtherInfoService>(() => FurtherInfoServiceImpl(
        _soldierDatabase.furtherInfoDAO,
        PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO)));

    Get.lazyPut<HealthStatusService>(
        () => HealthStatusServiceImpl(_soldierDatabase.healthStatusDAO));

    Get.lazyPut<HourlyVacationService>(
        () => HourlyVacationServiceImpl(_soldierDatabase.hourlyVacationDAO));

    Get.lazyPut<OperationalServiceDeficitRecordService>(() =>
        OperationalServiceDeficitRecordServiceImpl(
            _soldierDatabase.operationalServiceDeficitRecordDAO));

    Get.lazyPut<OvertimeService>(
        () => OvertimeServiceImpl(_soldierDatabase.overtimeDAO));

    Get.lazyPut<PersonalInfoService>(
        () => PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO));

    Get.lazyPut<RankService>(() => RankServiceImpl(_soldierDatabase.rankDAO));

    Get.lazyPut<SectionService>(
        () => SectionServiceImpl(_soldierDatabase.sectionDAO));

    Get.lazyPut<ServiceDeficitRecordService>(() =>
        ServiceDeficitRecordServiceImpl(
            _soldierDatabase.serviceDeficitRecordDAO));

    Get.lazyPut<ServiceDeficitService>(
        () => ServiceDeficitServiceImpl(_soldierDatabase.serviceDeficitDAO));

    Get.lazyPut<SoldierCaseService>(
        () => SoldierCaseServiceImpl(_soldierDatabase.soldierCaseDAO));

    Get.lazyPut<SoldierService>(() => SoldierServiceImpl(
        _soldierDatabase.soldierDAO,
        PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO),
        CaseNoServiceImpl(_soldierDatabase.caseNoDAO)));

    Get.lazyPut<TrainingStatusService>(
        () => TrainingStatusServiceImpl(_soldierDatabase.trainingStatusDAO));

    Get.lazyPut<UnitPropertiesService>(
        () => UnitPropertiesServiceImpl(_soldierDatabase.unitPropertiesDAO));

    Get.lazyPut<VacationsService>(
        () => VacationsServiceImpl(_soldierDatabase.vacationsDAO));

    Get.lazyPut<ViolationsOvertimeService>(() =>
        ViolationsOvertimeServiceImpl(_soldierDatabase.violationsOvertimeDAO));

    Get.lazyPut<CaseNoService>(
        () => CaseNoServiceImpl(_soldierDatabase.caseNoDAO));

    Get.lazyPut<RelativeContactsInfoService>(() =>
        RelativeContactsInfoServiceImpl(
            _soldierDatabase.relativeContactsInfoDAO));

    Get.lazyPut<EducationalInfoService>(
        () => EducationalInfoServiceImpl(_soldierDatabase.educationalInfoDAO));

    Get.lazyPut<CaseNoService>(
        () => CaseNoServiceImpl(_soldierDatabase.caseNoDAO));
  }
}
