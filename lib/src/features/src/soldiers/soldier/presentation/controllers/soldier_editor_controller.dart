import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';

class SoldierEditorController extends GetxController with GetSingleTickerProviderStateMixin {
  final soldierCaseEditorScaffoldKey = GlobalKey<ScaffoldState>();
  final BaseController _baseController;

  late Rx<TabController> tabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: soldierCaseEditorContentLen.value)
        ..addListener(() {
          soldierCaseEditorShownContentIndex.value = tabController.value.index;
        }));

  late Rx<int> soldierCaseEditorShownContentIndex = 0.obs;
  late Rx<int> soldierCaseEditorContentLen = 0.obs;

  late Rx<int> gridColumns = Rx(0);

  late Rx<bool> isLoadedView = Rx(false);

  SoldierEditorController(this._baseController);

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
    return _baseController.soldierNameAndFamily.value;
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
