part of controllers;

class BridgeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final int dashboardTabsLen = 5;
  final int dashboardTabMain = 0;
  final int dashboardTabSoldiersList = 1;
  final int dashboardTabSoldiersEditor = 2;
  final int dashboardTabSections = 3;
  final int dashboardTabSettings = 4;

  final Rx<int> selectedDashboardMainMenuIndex = 0.obs;

  late Rx<int> dashboardShownContentIndex = 0.obs;
  late Rx<int> personalInfoId = Rx<int>(0);
  final Rx<String> soldierNameAndFamily = "".obs;

  late Rx<TabController> dashboardTabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: dashboardTabsLen)
        ..addListener(() {
          dashboardShownContentIndex.value = dashboardTabController.value.index;
        }));

  late final Rx<PersonalInfoDataSource> personalInfoDataSource =
      Rx(PersonalInfoDataSource(personalInfo: []));

  @override
  void onInit() {
    super.onInit();
    logger.log(message: "Bridge controller has been initialized.");
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    logger.log(level: Level.INFO, message: "${this} has been closed.");
  }

  void setDashboardTab(int index) {
    dashboardTabController.value.index = index;
    selectedDashboardMainMenuIndex(index);
  }

  void setPersonalInfoDataSource(data) {
    personalInfoDataSource.value = PersonalInfoDataSource(personalInfo: data);
  }

  void initSoldierEditorForms() {
    Get.find<PersonalInfoController>().initForm();
    
    Get.find<FurtherInfoController>().initForm();
  }
}
