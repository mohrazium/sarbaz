part of controllers;

class SoldiersController extends GetxController {
  late final PersonalInfoService _personalInfoService;

  Rx<List<PersonalInfoModel>> personnelList = Rx(<PersonalInfoModel>[]);
  late final DataGridController dataGridController;
  late final BridgeController bridgeController;


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
    Get.find<PersonalInfoController>().loadPersonaInfo(id);
    bridgeController.setDashboardTab(0);
  }

  void onNewSoldierPressed() {
    bridgeController.setDashboardTab(0);
    bridgeController.personalInfoId.value = 0;
  }
}
