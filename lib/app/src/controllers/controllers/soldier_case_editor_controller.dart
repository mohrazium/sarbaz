part of controllers;

class SoldierCaseEditorController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final soldierCaseEditorScaffoldKey = GlobalKey<ScaffoldState>();

  late Rx<TabController> tabController = Rx(TabController(
      vsync: this, initialIndex: 0, length: soldierCaseEditorContentLen.value)
    ..addListener(() {
      soldierCaseEditorShownContentIndex.value = tabController.value.index;
    }));

  late Rx<int> soldierCaseEditorShownContentIndex = 0.obs;
  late Rx<int> soldierCaseEditorContentLen = 0.obs;

  late final BridgeController bridgeController;

  @override
  void onInit() {
    super.onInit();
    bridgeController = Get.find<BridgeController>();
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    tabController.value.dispose();
    logger.info("${this} has been closed.");
  }

  String getHeaderText() {
    return bridgeController.soldierNameAndFamily.value;
  }

  

  

  // void keepSelectedLevelOfEducation() {
  //   if (levelOfEducationController.text.length > 0)
  //     selectedLevelOfEducation.value = levelOfEducationController.text;
  // }

  onSelectedMainMenu(int index, TabMenu value) {
    tabController.value.index = index;
  }
}
