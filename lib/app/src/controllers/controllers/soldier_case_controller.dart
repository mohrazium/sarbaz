part of controllers;

class SoldierCaseController extends GetxController with ValidatorMixin, DateConverterMixin {
  final BridgeController _bridgeController;
  final SoldierCaseService _soldierCaseService;
  final RankService _rankService;

  SoldierCaseController(this._soldierCaseService, this._bridgeController, this._rankService);

  final GlobalKey<FormState> soldierCaseFormGlobalKey = GlobalKey<FormState>();
  late RxBool readOnly = false.obs;

  late final Rx<SoldierCaseModel> model = Rx(SoldierCaseModel.init());
  late final Rx<List<RankModel>> ranks = Rx(List.empty(growable: true));
  late final Rx<RankModel> selectedRankModel = Rx(RankModel.init());

  late TextEditingController membershipTypeController;
  late TextEditingController dispatchController;
  late TextEditingController dispatcherController;
  late TextEditingController serviceCategoryController;
  late TextEditingController startDateOfServiceController;
  late TextEditingController endDateOfServiceController;
  late TextEditingController legalPeriodOfServiceController;
  late TextEditingController lastPeriodOfServiceController;
  late TextEditingController introductionDateController;
  late TextEditingController amountOfServiceController;
  late TextEditingController rankController;
  late TextEditingController descriptionController;

  @override
  void onInit() {
    super.onInit();
    membershipTypeController = TextEditingController();
    dispatchController = TextEditingController();
    dispatcherController = TextEditingController();
    serviceCategoryController = TextEditingController();
    startDateOfServiceController = TextEditingController(text: Strings.religionList[0]);
    endDateOfServiceController = TextEditingController(text: Strings.sectList[0]);
    legalPeriodOfServiceController = TextEditingController();
    introductionDateController = TextEditingController();
    lastPeriodOfServiceController = TextEditingController();
    rankController = TextEditingController();
    amountOfServiceController = TextEditingController();
    descriptionController = TextEditingController();
    initForm();
    logger.info("$runtimeType has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();
    _loadRanks();
    logger.info("$runtimeType has been ready.");
  }

  @override
  void onClose() {
    membershipTypeController.dispose();
    dispatchController.dispose();
    dispatcherController.dispose();
    serviceCategoryController.dispose();
    startDateOfServiceController.dispose();
    endDateOfServiceController.dispose();
    legalPeriodOfServiceController.dispose();
    introductionDateController.dispose();
    lastPeriodOfServiceController.dispose();
    rankController.dispose();
    amountOfServiceController.dispose();
    descriptionController.dispose();
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }

  Future<void> initForm() async {
    _clearEditor();
    await _loadData();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!readOnly.value) {
      await _bridgeController.isSoldierSaved().then((value) {
        if (value) {
          if (soldierCaseFormGlobalKey.currentState!.validate()) {
            soldierCaseFormGlobalKey.currentState!.save();
            logger.info("Soldier case form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.info("saving soldier case...");

                  Get.find<SoldiersController>().loadAllSoldiers();
                  readOnly(true);
                });
          }
        } else {
          showToast(Strings.soldierIsnotSavedPleaseSave);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    if (model.value.id == null) {
      _clearEditor();
    } else {
      _loadData();
      readOnly(true);
    }
  }

  void onDispatchCalenderPressed(context) async {
    dispatchController.text = (await _getDateFromPicker(context)) ?? "";
  }

  void onIntroCalenderPressed(context) async {
    introductionDateController.text = (await _getDateFromPicker(context)) ?? "";
  }

  void onStartServiceDateCalenderPressed(context) async {
    startDateOfServiceController.text = (await _getDateFromPicker(context)) ?? "";
    _calculateEndServiceDate();
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await _soldierCaseService
          .saveByPersonalInfoId(model.value, personalInfoId: _bridgeController.personalInfoId.value)
          .then((value) {
        if (value != 0) {
          model(model.value.copyWith(id: value));
          _loadData();
          showToast(Strings.successfullySavingInfo);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      _soldierCaseService.update(model.value).then((value) {
        if (value) {
          _loadData();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
  }

  Future<void> _loadData() async {
    await _soldierCaseService
        .findByPersonalInfoId(_bridgeController.personalInfoId.value)
        .then((foundedSoldierCase) async {
      if (foundedSoldierCase?.id != null) {
        _clearEditor();
        readOnly(true);
        model(foundedSoldierCase);
        if (foundedSoldierCase?.rank != null) {
          selectedRankModel(foundedSoldierCase?.rank!);
        }

        dispatchController.text = toShamsi(model.value.dispatchDate);
        dispatcherController.text = model.value.dispatcher;
        introductionDateController.text = toShamsi(model.value.introductionDate);
        legalPeriodOfServiceController.text = model.value.legalPeriodOfService.toString();
        membershipTypeController.text = model.value.membershipType;
        serviceCategoryController.text = model.value.serviceCategory;
        amountOfServiceController.text =
            model.value.amountOfService != null ? model.value.amountOfService.toString() : "";
        lastPeriodOfServiceController.text =
            model.value.lastPeriodOfService != null ? model.value.lastPeriodOfService.toString() : "";
        rankController.text = _getRankPattern();
        startDateOfServiceController.text = toShamsi(model.value.startDateOfService);
        endDateOfServiceController.text = toShamsi(model.value.endDateOfService);
        descriptionController.text = model.value.description ?? "";
        await _updateAmountOfService();
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void _catchFormData() {
    model(SoldierCaseModel(
      id: model.value.id,
      dispatchDate: toDateTime(shamsiDate: dispatchController.text.trim()),
      dispatcher: dispatcherController.text.trim(),
      introductionDate: toDateTime(shamsiDate: introductionDateController.text.trim()),
      legalPeriodOfService: int.parse(legalPeriodOfServiceController.text.trim()),
      membershipType: membershipTypeController.text.trim(),
      serviceCategory: serviceCategoryController.text.trim(),
      amountOfService:
          amountOfServiceController.text.isNotEmpty ? int.parse(amountOfServiceController.text.trim()) : null,
      lastPeriodOfService:
          lastPeriodOfServiceController.text.isNotEmpty ? int.parse(lastPeriodOfServiceController.text.trim()) : null,
      rank: selectedRankModel.value.gradeCode != 0 ? selectedRankModel.value : null,
      startDateOfService: toDateTime(shamsiDate: startDateOfServiceController.text.trim()),
      endDateOfService: toDateTime(shamsiDate: endDateOfServiceController.text.trim()),
      description: descriptionController.text.isNotEmpty ? descriptionController.text.trim() : null,
    ));
  }

  void _clearEditor() {
    model(SoldierCaseModel.init());
    membershipTypeController.clear();
    dispatchController.clear();
    dispatcherController.clear();
    serviceCategoryController.clear();
    startDateOfServiceController.clear();
    endDateOfServiceController.clear();
    legalPeriodOfServiceController.clear();
    introductionDateController.clear();
    lastPeriodOfServiceController.clear();
    rankController.clear();
    amountOfServiceController.clear();
    descriptionController.clear();
  }

  Future<String?> _getDateFromPicker(ctx) async {
    var now = Jalali.now().year;
    Jalali? picked = await showPersianDatePicker(
      context: ctx,
      initialDate: Jalali(now, 1),
      firstDate: Jalali(now - 2, 1),
      lastDate: Jalali(now, 6),
    );
    if (picked != null) {
      return persianTools.convertEnToFa(picked.formatCompactDate());
    }
    return null;
  }

  void _calculateEndServiceDate() {
    try {
      if (startDateOfServiceController.text.isNotEmpty && legalPeriodOfServiceController.text.isNotEmpty) {
        endDateOfServiceController.text = calculateEndDate(
          startDate: startDateOfServiceController.text.trim(),
          months: int.parse(legalPeriodOfServiceController.text.trim()),
          pastDays:
              lastPeriodOfServiceController.text.isNotEmpty ? int.parse(lastPeriodOfServiceController.text.trim()) : 0,
        );

        amountOfServiceController.text = updateAmountOfServiceField().toString();
      }

      // ignore: empty_catches
    } catch (ignore) {}
  }

  Future<void> _updateAmountOfService() async {
    if (model.value.id != null) {
      int amount = updateAmountOfServiceField();
      bool result = await _soldierCaseService.updateAmountOfServiceById(model.value.id!, amount);
      if (result) {
        model(model.value.copyWith(amountOfService: amount));
        amountOfServiceController.text = model.value.amountOfService.toString();
      }
    }
  }

  int updateAmountOfServiceField() => differenceInDays(shamsiNow(), endDateOfServiceController.text.trim());

  void onChangeCalculateEndDate(String val) {
    _calculateEndServiceDate();
  }

  Future<void> _loadRanks() async {
    await _rankService.findAll().then((value) => ranks.value.addAll(value!)).catchError((err) {
      DialogHelper.showCrashReport(err.toString());
    });
  }

  void selectRank(String value) {
    selectedRankModel(ranks.value.elementAt(int.parse(value) - 1));
    rankController.text = _getRankPattern();
  }

  onRankChanged(String val) {
    rankController.text = _getRankPattern();
  }

  String _getRankPattern() {
    return selectedRankModel.value.name.isNotEmpty
        ? "${selectedRankModel.value.gradeCode} - ${selectedRankModel.value.name}"
        : "";
  }
}
