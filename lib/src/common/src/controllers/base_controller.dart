import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sarbaz/src/config/config.dart';



import '../../../features/features.dart';
import '../components/components.dart';

class BaseController extends GetxController with GetSingleTickerProviderStateMixin {
  final int dashboardTabsLen = 5;
  final int dashboardTabMain = 0;
  final int dashboardTabSoldiersList = 1;
  final int dashboardTabSoldiersEditor = 2;
  final int dashboardTabSections = 3;
  final int dashboardTabSettings = 4;

  late RxInt personalInfoId = 0.obs;
  late RxInt dailyVacationId = 0.obs;

  final Rx<int> selectedDashboardMainMenuIndex = 0.obs;

  late Rx<int> dashboardShownContentIndex = 0.obs;

  final Rx<String> soldierNameAndFamily = "".obs;

  late Rx<TabController> dashboardTabController =
      Rx(TabController(vsync: this, initialIndex: 1, length: dashboardTabsLen)
        ..addListener(() {
          dashboardShownContentIndex.value = dashboardTabController.value.index;
        }));

  @override
  void onInit() {
    super.onInit();
    logger.info("Bridge controller has been initialized.");
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    logger.info("${this} has been closed.");
  }

  void setDashboardTab(int index) {
    dashboardTabController.value.index = index;
    selectedDashboardMainMenuIndex(index);
  }

  void initSoldierEditorForms(int pId, {bool withLoading = false}) {
    personalInfoId(pId);
    
    if (withLoading) Get.find<SoldierEditorController>().loadingEditor();

    Get.find<PersonalInfoController>().initForm(personalInfoId.value).then((value) async {
      await Get.find<FurtherInfoController>().initForm();
      await Get.find<ContactInfoController>().initForm();
      await Get.find<RelativeContactsInfoController>().initForm();
      await Get.find<EducationalInfoController>().initForm();
      await Get.find<SoldierController>().initForm();
      await Get.find<TrainingStatusController>().initForm();
      await Get.find<SoldierCaseController>().initForm();
      await Get.find<VacationsController>().init();
      await Get.find<DailyVacationController>().initForm();
      await Get.find<DailyVacationsController>().initForm();

      if (personalInfoId.value != 0) {
        await Future.delayed(const Duration(milliseconds: 500));
      }
    }).then((v) {
      Get.find<SoldierEditorController>().loadedEditor();
    });
  }

  Future<bool> isPersonalInfoSaved() async {
    return await Get.find<PersonalInfoService>().findById(personalInfoId.value).then((value) {
      return value != null ? true : false;
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  Future<bool> isSoldierSaved() async {
    return await Get.find<SoldierService>().findByPersonalInfoId(personalInfoId.value).then((value) {
      return value != null ? true : false;
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  Future<bool> isSoldierCaseSaved() async {
    return await Get.find<SoldierCaseService>().findByPersonalInfoId(personalInfoId.value).then((value) {
      return value != null ? true : false;
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  Future<int> getCurrentVacationsId() async {
    if (personalInfoId.value != 0) {
      return await Get.find<VacationsService>()
          .findByPersonalInfoId(personalInfoId.value)
          .then(((value) => value != null ? value.id! : 0))
          .catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      return 0;
    }
  }
}
