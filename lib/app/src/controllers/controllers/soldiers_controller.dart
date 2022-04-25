part of controllers;

class SoldiersController extends GetxController {
  final PersonalInfoService _personalInfoService;
  final BridgeController _bridgeController;

  Rx<List<SoldiersDataCellModel>> soldiersList = Rx(List.empty(growable: true));
  late final DataGridController dataGridController;

  late DataGridCellTapDetails cellTapDetails;

  SoldiersController(this._personalInfoService, this._bridgeController);

  @override
  Future<void> onInit() async {
    super.onInit();
    dataGridController = DataGridController();
    loadAll();
  }

  void loadAll() async {
    await _personalInfoService.findAll().then((values) {
      if (values != null) {
        List<SoldiersDataCellModel> soldiers = List.empty(growable: true);
        soldiersList.value.clear();
        for (var person in values) {
          soldiers.add(SoldiersDataCellModel(
              id: person.id,
              caseNo: (person.soldier?.caseNo?.caseName ?? "") +
                  "-" +
                  (person.soldier?.caseNo?.caseCode ?? ""),
              firstName: person.firstName,
              lastName: person.lastName,
              fatherName: person.fatherName,
              mobileNumber: person.contactInfo?.mobileNumber,
              nationalCode: person.nationalCode,
              personnelCode: person.soldier?.personnelCode,
              soldierStatus: person.soldier?.latestStatus,
              isSelected: false));
        }
        soldiersList.value.addAll(soldiers);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void onCellDoubleTap(DataGridCellDoubleTapDetails details) {
    int id = int.parse(_bridgeController.soldiersDataSource.value
        .effectiveRows[details.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    _bridgeController.initSoldierEditorForms(id);
    _bridgeController
        .setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
  }

  void onNewSoldierPressed() {
    _bridgeController
        .setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
    _bridgeController.initSoldierEditorForms(0);
  }

  void onEditSoldierPressed() {
    int id = int.parse(_bridgeController.soldiersDataSource.value
        .effectiveRows[cellTapDetails.rowColumnIndex.rowIndex - 1]
        .getCells()
        .last
        .value);
    _bridgeController.initSoldierEditorForms(id);
    _bridgeController
        .setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
  }

  void onDeleteSoldierPressed() {
    loadAll();
  }

  void onCellTap(DataGridCellTapDetails details) {
    cellTapDetails = details;
  }
}
