import 'package:get/get.dart';

import '../../../common/common.dart';
import '../../../features/features.dart';
import '../logger/logger_service.dart';

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
      var storage = PrefStorage();
      storage.saveEligibleVacationPerMonth(2.5);
      storage.saveSickVacationPerMonth(2.5);
      storage.saveIncentiveLimit(2.5);
      return storage;
    });
  }
}

Future<void> _setupServices(String environment) async {
  if (environment == Env.dev) {
    _environmentMode = environment;

    final soldierDatabase = SoldierDatabaseHelper().dbInstance;
    soldierDatabase.auditDAO.setup();

    Get.lazyPut<LoggerService>(() => LoggerService());

    Get.lazyPut<ContactInfoService>(() => ContactInfoServiceImpl(
          soldierDatabase.contactInfoDAO,
        ));

    Get.lazyPut<FurtherInfoService>(() => FurtherInfoServiceImpl(
          soldierDatabase.furtherInfoDAO,
          PersonalInfoServiceImpl(soldierDatabase.personalInfoDAO),
        ));

    Get.lazyPut<HealthStatusService>(
      () => HealthStatusServiceImpl(soldierDatabase.healthStatusDAO),
    );

    Get.lazyPut<PersonalInfoService>(
      () => PersonalInfoServiceImpl(soldierDatabase.personalInfoDAO),
    );

    Get.lazyPut<RankService>(
      () => RankServiceImpl(soldierDatabase.rankDAO),
    );

    Get.lazyPut<SoldierCaseService>(() => SoldierCaseServiceImpl(
          soldierDatabase.soldierCaseDAO,
          soldierDatabase.personalInfoDAO,
          soldierDatabase.soldierDAO,
          soldierDatabase.rankDAO,
          Get.find(),
        ));

    Get.lazyPut<SoldierService>(() => SoldierServiceImpl(
        soldierDatabase.soldierDAO,
        PersonalInfoServiceImpl(soldierDatabase.personalInfoDAO),
        CaseNoServiceImpl(
          soldierDatabase.caseNoDAO,
        )));

    Get.lazyPut<TrainingStatusService>(() => TrainingStatusServiceImpl(
          soldierDatabase.trainingStatusDAO,
          soldierDatabase.personalInfoDAO,
          soldierDatabase.soldierDAO,
        ));

    Get.lazyPut<VacationsService>(() => VacationsServiceImpl(
          soldierDatabase.vacationsDAO,
          soldierDatabase.personalInfoDAO,
          soldierDatabase.soldierDAO,
          soldierDatabase.soldierCaseDAO,
          Get.find(),
        ));

    Get.lazyPut<DailyVacationService>(() => DailyVacationServiceImpl(
          soldierDatabase.dailyVacationDAO,
          Get.find(),
        ));

    Get.lazyPut<RelativeContactsInfoService>(() => RelativeContactsInfoServiceImpl(
          soldierDatabase.relativeContactsInfoDAO,
        ));

    Get.lazyPut<EducationalInfoService>(() => EducationalInfoServiceImpl(
          soldierDatabase.educationalInfoDAO,
        ));

    Get.lazyPut<CaseNoService>(() => CaseNoServiceImpl(
          soldierDatabase.caseNoDAO,
        ));
  }
}
