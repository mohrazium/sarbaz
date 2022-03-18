part of controllers;

class SoldiersController extends GetxController {
  late final PersonalInfoService _personalInfoService;

  Rx<List<PersonalInfoModel>> personnelList = Rx(<PersonalInfoModel>[]);
  late final DataGridController dataGridController;
  late final BridgeController bridgeController;
  late DataGridCellTapDetails cellTapDetails;
  @override
  Future<void> onInit() async {
    super.onInit();
    bridgeController = Get.find<BridgeController>();
    _personalInfoService = Get.find<PersonalInfoService>();
    dataGridController = DataGridController();
    loadAllPersons();
  }

  void loadAllPersons() async {
    final persons = await _personalInfoService.findAll();
    if (persons != null) {
      personnelList.value.clear();
      personnelList.value.addAll(persons);
    }
  }

  onCellDoubleTap(DataGridCellDoubleTapDetails details) {
    int id = int.parse(bridgeController.personalInfoDataSource.value
        .effectiveRows[details.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    bridgeController.personalInfoId(id);
    Get.find<PersonalInfoController>().initPersonaInfo();
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
  }

  void onNewSoldierPressed() {
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
    bridgeController.personalInfoId(0);
    Get.find<PersonalInfoController>().initPersonaInfo();
  }

  onEditSoldierPressed() {
    int id = int.parse(bridgeController.personalInfoDataSource.value
        .effectiveRows[cellTapDetails.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    bridgeController.personalInfoId(id);
    Get.find<PersonalInfoController>().initPersonaInfo();
    bridgeController
        .setDashboardTab(bridgeController.dashboardTabSoldiersEditor);
  }

  onDeleteSoldierPressed() {
    
  }

  onCellTap(DataGridCellTapDetails details) {
    cellTapDetails = details;
  }
}
