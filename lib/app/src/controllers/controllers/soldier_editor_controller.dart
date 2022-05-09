part of controllers;

class SoldierEditorController extends GetxController with GetSingleTickerProviderStateMixin {
  final soldierCaseEditorScaffoldKey = GlobalKey<ScaffoldState>();
  final BridgeController bridgeController;

  late Rx<TabController> tabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: soldierCaseEditorContentLen.value)
        ..addListener(() {
          soldierCaseEditorShownContentIndex.value = tabController.value.index;
        }));

  late Rx<int> soldierCaseEditorShownContentIndex = 0.obs;
  late Rx<int> soldierCaseEditorContentLen = 0.obs;

  late Rx<int> gridColumns = Rx(0);

  late Rx<bool> isLoadedView = Rx(false);

  SoldierEditorController(this.bridgeController);

  @override
  void onInit() {
    super.onInit();
    logger.info("$runtimeType has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();

    logger.info("$runtimeType has been ready.");
  }

  @override
  void onClose() {
    tabController.value.dispose();
    logger.info("${this} has been closed.");
  }

  String getHeaderText() {
    return bridgeController.soldierNameAndFamily.value;
  }

  void loadingEditor() {
    isLoadedView(false);
  }

  void loadedEditor() {
    Future.delayed(
      const Duration(milliseconds: 500),
    ).whenComplete(() {
      isLoadedView(true);
    });
  }

  onSelectedMainMenu(int index, TabMenu value) {
    tabController.value.index = index;
  }

  void getStaggeredAxis(BuildContext context) {
    gridColumns(MediaQuery.of(context).size.width ~/ 625);
  }

  getLoading() {
    update();
    return isLoadedView.isFalse
        ? Center(
            child: LoadingAnimationWidget.discreteCircle(
                color: Colorize.primaryColor, secondRingColor: Colorize.accentColor, size: 65))
        : Container();
  }
}
