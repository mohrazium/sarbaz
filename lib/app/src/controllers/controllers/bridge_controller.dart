part of controllers;

class BridgeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final int dashboardTabsLen = 5;
  final int dashboardTabMain = 0;
  final int dashboardTabSoldiersList = 1;
  final int dashboardTabSoldiersEditor = 2;
  final int dashboardTabSections = 3;
  final int dashboardTabSettings = 4;

  late RxInt personalInfoId = 0.obs;

  final Rx<int> selectedDashboardMainMenuIndex = 0.obs;

  late Rx<int> dashboardShownContentIndex = 0.obs;

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

  void setPersonalInfoDataSource(data) {
    personalInfoDataSource(PersonalInfoDataSource(personalInfo: data));
  }

  void initSoldierEditorForms(int pId) {
    personalInfoId(pId);
    Get.find<PersonalInfoController>().initForm(personalInfoId.value);
    Get.find<FurtherInfoController>().initForm();
    Get.find<ContactInfoController>().initForm();
    Get.find<RelativeContactsInfoController>().initForm();
    Get.find<EducationalInfoController>().initForm();
  }

  Future<bool> isPersonalInfoSaved() async {
    return await Get.find<PersonalInfoService>()
        .findById(personalInfoId.value)
        .then((value) {
      return value != null ? true : false;
    }).catchError((onError) {});
  }
}
