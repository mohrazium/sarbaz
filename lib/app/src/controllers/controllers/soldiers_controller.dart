part of controllers;

class SoldiersController extends GetxController {
  final PersonalInfoService _personalInfoService;
  final BridgeController _bridgeController;

  Rx<SoldiersDataSource> soldiersDataSource = Rx(SoldiersDataSource(soldierDataList: []));
  late final DataGridController dataGridController;

  final List<SoldiersDataCellModel> _loadedSoldiers = List.empty(growable: true);

  late DataGridCellTapDetails cellTapDetails;

  late final TextEditingController searchFieldController;

  SoldiersController(this._personalInfoService, this._bridgeController);

  @override
  Future<void> onInit() async {
    super.onInit();
    searchFieldController = TextEditingController();
    dataGridController = DataGridController();
  }

  @override
  void onReady() {
    super.onReady();
    _loadAll();
    searchSoldier(null);
    logger.info('$runtimeType as been ready.');
  }

  @override
  void dispose() {
    super.dispose();
    searchFieldController.dispose();
  }

  void _loadAll() async {
    _loadedSoldiers.clear();
    await _personalInfoService.findAll().then((values) {
      if (values != null) {
        List<SoldiersDataCellModel> soldiers = List.empty(growable: true);
        _loadedSoldiers.clear();
        for (var person in values) {
          soldiers.add(SoldiersDataCellModel(
              id: person.id,
              caseNo: (person.soldier?.caseNo?.caseName ?? "") + "-" + (person.soldier?.caseNo?.caseCode ?? ""),
              firstName: person.firstName,
              lastName: person.lastName,
              fatherName: person.fatherName,
              mobileNumber: person.contactInfo?.mobileNumber,
              nationalCode: person.nationalCode,
              personnelCode: person.soldier?.personnelCode,
              soldierStatus: person.soldier?.latestStatus,
              isSelected: false));
        }
        _loadedSoldiers.addAll(soldiers);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    }).whenComplete(() => DialogHelper.hideLoading());
  }

  void searchSoldier(String? key) {
    if (key == null || key.isEmpty) {
      soldiersDataSource(SoldiersDataSource(soldierDataList: []));
      soldiersDataSource(SoldiersDataSource(soldierDataList: _loadedSoldiers));
    } else {
      soldiersDataSource.value = SoldiersDataSource(soldierDataList: []);
      soldiersDataSource(SoldiersDataSource(
          soldierDataList: _loadedSoldiers.where((soldier) {
        getCaseNo() {
          var caseNo = soldier.caseNo ?? "";
          return caseNo.isNotEmpty ? caseNo.contains(key) : false;
        }

        getFirstName() {
          var firstName = soldier.firstName ?? "";
          return firstName.isNotEmpty ? firstName.contains(key) : false;
        }

        getLastName() {
          var lastName = soldier.lastName ?? "";
          return lastName.isNotEmpty ? lastName.contains(key) : false;
        }

        getFatherName() {
          var fatherName = soldier.fatherName ?? "";
          return fatherName.isNotEmpty ? fatherName.contains(key) : false;
        }

        getNationalCode() {
          var nationalCode = soldier.nationalCode ?? "";
          return nationalCode.isNotEmpty ? nationalCode.contains(key) : false;
        }

        getMobileNumber() {
          var mobileNumber = soldier.mobileNumber ?? "";
          return mobileNumber.isNotEmpty ? mobileNumber.contains(key) : false;
        }

        getPersonnelCode() {
          var personnelCode = soldier.personnelCode ?? "";
          return personnelCode.isNotEmpty ? personnelCode.contains(key) : false;
        }

        getSoldierStatus() {
          var soldierStatus = soldier.soldierStatus ?? "";
          return soldierStatus.isNotEmpty ? soldierStatus.contains(key) : false;
        }

        return getCaseNo() ||
            getFirstName() ||
            getLastName() ||
            getFatherName() ||
            getNationalCode() ||
            getMobileNumber() ||
            getPersonnelCode() ||
            getSoldierStatus();
      }).toList()));
    }
    DialogHelper.hideLoading();
  }

  Future<void> _removeSoldier() async {
    int id = int.parse(
        soldiersDataSource.value.effectiveRows[cellTapDetails.rowColumnIndex.rowIndex - 1].getCells().last.value);
    await Get.find<PersonalInfoService>().deleteById(id).then((isDeleted) {
      if (isDeleted) {
        showToast(Strings.successfullyDeleted);
        _loadAll();
        searchSoldier(null);
        _bridgeController.initSoldierEditorForms(0);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void onCellDoubleTap(DataGridCellDoubleTapDetails details) {
    int id =
        int.parse(soldiersDataSource.value.effectiveRows[details.rowColumnIndex.rowIndex - 1].getCells().last.value);
    _bridgeController.setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
    _bridgeController.initSoldierEditorForms(id);
  }

  void onNewSoldierPressed() async {
    _bridgeController.setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
    _bridgeController.initSoldierEditorForms(0);
    _bridgeController.dailyVacationId(0);
  }

  void onEditSoldierPressed() {
    _bridgeController.setDashboardTab(_bridgeController.dashboardTabSoldiersEditor);
    int id = int.parse(
        soldiersDataSource.value.effectiveRows[cellTapDetails.rowColumnIndex.rowIndex - 1].getCells().last.value);
    _bridgeController.initSoldierEditorForms(id);
  }

  void onDeleteSoldierPressed() {
    try {
      DialogHelper.showMessageBox(
        title: Strings.deleteInfo,
        message: Strings.deleteInfoMessage,
        dialogType: DialogType.WARNING,
        dialogButtons: DialogButtons.YES_NO,
        onYesPressed: () {
          _removeSoldier();
        },
      );
    } catch (e) {
      DialogHelper.showMessageBox(
          title: Strings.deleteInfo,
          message: Strings.pleaseSelectAnItemFromList,
          dialogType: DialogType.INFO,
          dialogButtons: DialogButtons.OK);
    }
  }

  void onCellTap(DataGridCellTapDetails details) {
    cellTapDetails = details;
  }

  void onRefreshSoldiersPressed() {
    DialogHelper.showLoading();
    searchSoldier(null);
  }

  void onSearchSoldierChanged(String? val) {
    searchSoldier(val);
  }

  void loadAllSoldiers() {
    _loadAll();
    searchSoldier(null);
    if (_bridgeController.personalInfoId.value != 0) {
      _bridgeController.initSoldierEditorForms(_bridgeController.personalInfoId.value);
    }
  }
}
