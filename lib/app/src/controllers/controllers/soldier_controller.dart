part of controllers;

class SoldierController extends GetxController with ValidatorMixin {
  final GlobalKey<FormState> soldierFormGlobalKey = GlobalKey<FormState>();

  late RxBool readOnly = false.obs;

  late final SoldierService service;
  late final CaseNoService caseNoService;
  late final Rx<SoldierModel> model = Rx(SoldierModel.init());

  late List<CaseNoModel> _allCaseNumbers = List.empty(growable: true);
  late final Rx<List<CaseNoModel>> foundedCaseNoList =
      Rx(List.empty(growable: true));
  late final Rx<CaseNoModel> selectedCaseNoModel = Rx(CaseNoModel.init());
  late final Rx<String> selectedCaseNoTitleText = Rx("");

  late final BridgeController bridgeController;

  final Rx<String> imagePath = "".obs;
  late TextEditingController personnelCodeController;
  late TextEditingController latestStatusController;
  late TextEditingController divisionStatusController;
  late TextEditingController caseStatusController;
  late TextEditingController archiveCaseNoController;
  late TextEditingController caseNoController;
  late TextEditingController searchController;

  @override
  void onInit() {
    super.onInit();
    personnelCodeController = TextEditingController();
    latestStatusController = TextEditingController();
    divisionStatusController = TextEditingController();
    caseStatusController = TextEditingController();
    archiveCaseNoController = TextEditingController();
    caseNoController = TextEditingController();
    searchController = TextEditingController();
    service = Get.find<SoldierService>();
    bridgeController = Get.find<BridgeController>();
    caseNoService = Get.find<CaseNoService>();
    logger.info("$runtimeType has been initialized.");
    initForm();
  }

  @override
  void onReady() {
    super.onReady();

    logger.info("$runtimeType has been ready.");
  }

  void initForm() {
    _clearEditor();
    _loadInfo();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!readOnly.value) {
      await bridgeController.isPersonalInfoSaved().then((value) {
        if (value) {
          if (soldierFormGlobalKey.currentState!.validate()) {
            soldierFormGlobalKey.currentState!.save();
            logger.info("Further info form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.info("saving further info...");

                  Get.find<SoldiersController>().loadAll();
                  readOnly(true);
                });
          }
        } else {
          showToast(Strings.personalInfoIsnotSavedPleaseSave);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    if (model.value.id == null) {
      _clearEditor();
    } else {
      _loadInfo();
      readOnly(true);
    }
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await service
          .saveByPersonalInfoId(model.value,
              personalInfoId: bridgeController.personalInfoId.value)
          .then((value) {
        if (value != 0) {
          model(model.value.copyWith(id: value));
          _loadInfo();
          showToast(Strings.successfullySavingInfo);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    } else {
      service.update(model.value).then((value) {
        if (value) {
          _loadInfo();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    }
  }

  Future<void> _loadInfo() async {
    await service
        .findByPersonalInfoId(bridgeController.personalInfoId.value)
        .then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      showToast(Strings.error);
    });
  }

  void _catchFormData() {
    model(SoldierModel(
        caseStatus: "",
        divisionStatus: false,
        isArchived: false,
        caseNo: selectedCaseNoModel.value));
  }

  void _clearEditor() {
    model(SoldierModel.init());
    personnelCodeController.clear();
    latestStatusController.clear();
    caseStatusController.clear();
    divisionStatusController.clear();
    archiveCaseNoController.clear();
    caseNoController.clear();
  }

  void onNewImagePressed() async {
    final res = IO.openFilePicker(['png', 'jpg', 'jepg']);

    imagePath(res!);
  }

  onRemoveImagePressed() {}

  Future<void> loadAllCaseNo() async {
    foundedCaseNoList.value.clear();
    _allCaseNumbers.clear();
    _allCaseNumbers = await caseNoService.findAll().then((models) {
          if (models != null && models.isNotEmpty) {
            return models;
          } else {
            showToast(
                "لیست شماره پرونده های بایگانی در دسترس نمی باشد, لطفا آن را ایجاد نمایید");
          }
        }).catchError((onError) {
          showToast(Strings.error);
        }) ??
        List.empty(growable: true);
    foundedCaseNoList(_allCaseNumbers);
  }

  void sendSelectedCaseNoModelToTextEditing() {
    caseNoController.text =
        "${selectedCaseNoModel.value.caseName} - ${selectedCaseNoModel.value.caseCode}";
  }

  void onSearchCaseNo(String value) {
    foundedCaseNoList(List.empty(growable: true));
    if (value.isEmpty || searchController.text.isEmpty) {
      foundedCaseNoList(_allCaseNumbers);
    } else {
      foundedCaseNoList.value = _allCaseNumbers
          .where((model) => model.caseName!.contains(value) ||
                  model.caseCode.contains(value) ||
                  model.description!.contains(value)
              ? true
              : false)
          .toList();
    }
  }

  Future<void> onGenerateCaseNoListPressed() async {
    await caseNoService
        .saveAll(100)
        .catchError((err) => showToast(Strings.error));
  }
}
