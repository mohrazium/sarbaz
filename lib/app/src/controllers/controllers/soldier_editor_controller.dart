part of controllers;

class SoldierEditorController extends GetxController with GetSingleTickerProviderStateMixin {
  final soldierCaseEditorScaffoldKey = GlobalKey<ScaffoldState>();

  late Rx<TabController> tabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: soldierCaseEditorContentLen.value)
        ..addListener(() {
          soldierCaseEditorShownContentIndex.value = tabController.value.index;
        }));

  late Rx<int> soldierCaseEditorShownContentIndex = 0.obs;
  late Rx<int> soldierCaseEditorContentLen = 0.obs;

  late Rx<int> gridColumns = Rx(0);

  late final BridgeController bridgeController;

  late Rx<bool> isLoadedView = Rx(false);

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

  void loadedEditor() {
    isLoadedView(false);
    Future.delayed(
      const Duration(milliseconds: 500),
    ).whenComplete(() {
      isLoadedView(true);
    });
  }

  void isLoadingEditor() {
    isLoadedView(false);
  }

  onSelectedMainMenu(int index, TabMenu value) {
    tabController.value.index = index;
  }

  void getStaggeredAxis(BuildContext context) {
    gridColumns(MediaQuery.of(context).size.width ~/ 625);
  }
}
