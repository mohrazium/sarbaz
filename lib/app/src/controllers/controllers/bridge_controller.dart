part of controllers;

class BridgeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Rx<int> dashboardShownContentIndex = 0.obs;
  late Rx<int> personalInfoId = Rx<int>(0);
  final Rx<String> soldierNameAndFamily = "".obs;

  late Rx<TabController> dashboardTabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: 5)
        ..addListener(() {
          dashboardShownContentIndex.value = dashboardTabController.value.index;
          print(dashboardShownContentIndex.value);
        }));
  late final Rx<PersonalInfoDataSource> personalInfoDataSource =
      Rx(PersonalInfoDataSource(personalInfo: []));
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    logger.log(level: Level.INFO, message: "${this} has been closed.");
  }

  void setDashboardTab(int index) {
    dashboardTabController.value.index = index;
  }

  void setPersonalInfoDataSource(data) {
    personalInfoDataSource.value = PersonalInfoDataSource(personalInfo: data);
  }
}
