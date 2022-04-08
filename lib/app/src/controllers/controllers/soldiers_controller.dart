part of controllers;

class SoldiersController extends GetxController {
  late final PersonalInfoService personalInfoService;

  Rx<List<PersonalInfoModel>> personalInfoList = Rx(List.empty(growable: true));
  late final DataGridController dataGridController;
  late final BridgeController bridgeController;
  late DataGridCellTapDetails cellTapDetails;
  @override
  Future<void> onInit() async {
    super.onInit();
    bridgeController = Get.find<BridgeController>();
    personalInfoService = Get.find<PersonalInfoService>();
    dataGridController = DataGridController();
    loadAll();
  }

  void loadAll() async {
    await personalInfoService.findAll().then((value) {
      if (value != null) {
        personalInfoList.value.clear();
        personalInfoList.value.addAll(value);
      }
    }).catchError((onError) {
      showToast(Strings.error);
    });
  }

  void onCellDoubleTap(DataGridCellDoubleTapDetails details) {
    int id = int.parse(bridgeController.personalInfoDataSource.value
        .effectiveRows[details.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    bridgeController.initSoldierEditorForms(id);
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
  }

  void onNewSoldierPressed() {
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
    bridgeController.initSoldierEditorForms(0);
  }

  void onEditSoldierPressed() {
    int id = int.parse(bridgeController.personalInfoDataSource.value
        .effectiveRows[cellTapDetails.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    bridgeController.initSoldierEditorForms(id);
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
  }

  void onDeleteSoldierPressed() {}

  void onCellTap(DataGridCellTapDetails details) {
    cellTapDetails = details;
  }
}
