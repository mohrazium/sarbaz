part of config;

class Injector {
  static void setup(String environment) {
    _setupDefaultPrefStorage(environment);
    _setupServices(environment);
  }
}

class Env {
  static String get mode => _environmentMode;
  static const String prod = "production";
  static const String dev = "development";
}

String _environmentMode = "";

Future<void> _setupDefaultPrefStorage(String environment) async {
  if (environment == Env.dev) {
    _environmentMode = environment;

    PrefStorage.setup();
    Get.lazyPut(() {
      var _storage = PrefStorage();
      _storage.saveEligibleVacationPerMonth(2.5);
      _storage.saveSickVacationPerMonth(2.5);
      _storage.saveIncentiveLimit(2.5);
      return _storage;
    });
  }
}

Future<void> _setupServices(String environment) async {
  if (environment == Env.dev) {
    _environmentMode = environment;

    final _soldierDatabase = SoldierDatabaseHelper().dbInstance;
    _soldierDatabase.auditDAO.setup();

    Get.lazyPut<LoggerService>(() => LoggerService());

    Get.lazyPut<ContactInfoService>(() => ContactInfoServiceImpl(
          _soldierDatabase.contactInfoDAO,
        ));

    Get.lazyPut<FurtherInfoService>(() => FurtherInfoServiceImpl(
          _soldierDatabase.furtherInfoDAO,
          PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO),
        ));

    Get.lazyPut<HealthStatusService>(
      () => HealthStatusServiceImpl(_soldierDatabase.healthStatusDAO),
    );

    Get.lazyPut<PersonalInfoService>(
      () => PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO),
    );

    Get.lazyPut<RankService>(
      () => RankServiceImpl(_soldierDatabase.rankDAO),
    );

    Get.lazyPut<SoldierCaseService>(() => SoldierCaseServiceImpl(
          _soldierDatabase.soldierCaseDAO,
          _soldierDatabase.personalInfoDAO,
          _soldierDatabase.soldierDAO,
          _soldierDatabase.rankDAO,
          Get.find(),
        ));

    Get.lazyPut<SoldierService>(() => SoldierServiceImpl(
        _soldierDatabase.soldierDAO,
        PersonalInfoServiceImpl(_soldierDatabase.personalInfoDAO),
        CaseNoServiceImpl(
          _soldierDatabase.caseNoDAO,
        )));

    Get.lazyPut<TrainingStatusService>(() => TrainingStatusServiceImpl(
          _soldierDatabase.trainingStatusDAO,
          _soldierDatabase.personalInfoDAO,
          _soldierDatabase.soldierDAO,
        ));

    Get.lazyPut<VacationsService>(() => VacationsServiceImpl(
          _soldierDatabase.vacationsDAO,
          _soldierDatabase.personalInfoDAO,
          _soldierDatabase.soldierDAO,
          _soldierDatabase.soldierCaseDAO,
          Get.find(),
        ));

    Get.lazyPut<DailyVacationService>(() => DailyVacationServiceImpl(
          _soldierDatabase.dailyVacationDAO,
          Get.find(),
        ));

    Get.lazyPut<RelativeContactsInfoService>(() => RelativeContactsInfoServiceImpl(
          _soldierDatabase.relativeContactsInfoDAO,
        ));

    Get.lazyPut<EducationalInfoService>(() => EducationalInfoServiceImpl(
          _soldierDatabase.educationalInfoDAO,
        ));

    Get.lazyPut<CaseNoService>(() => CaseNoServiceImpl(
          _soldierDatabase.caseNoDAO,
        ));
  }
}
