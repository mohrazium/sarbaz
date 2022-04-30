part of controllers;

class DailyVacationController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final BridgeController _bridgeController;
  final SoldierCaseService _soldierCaseService;
  final DailyVacationService _dailyVacationService;

  DailyVacationController(this._soldierCaseService, this._bridgeController,
      this._dailyVacationService);

  final GlobalKey<FormState> dailyVacationFormGlobalKey =
      GlobalKey<FormState>();
  late RxBool readOnly = false.obs;

  late final Rx<DailyVacationModel> model = Rx(DailyVacationModel.init());

  late TextEditingController startDateController;
  late TextEditingController endDateController;
  late TextEditingController amountController;
  late TextEditingController vacationTypeController;
  late TextEditingController descriptionController;

// IntColumn get id => integer().autoIncrement().nullable()();
//   DateTimeColumn get startDate => dateTime()();
//   DateTimeColumn get endDate => dateTime()();
//   IntColumn get amount => integer()();
//   TextColumn get vacationType => text()();
//   TextColumn get  => text().nullable()();
//   DateTimeColumn get createdAt => dateTime().nullable()();
//   DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  void onInit() {
    super.onInit();
    startDateController = TextEditingController(text: Strings.religionList[0]);
    endDateController = TextEditingController(text: Strings.sectList[0]);
    amountController = TextEditingController();
    descriptionController = TextEditingController();
    vacationTypeController = TextEditingController();
    initForm();
    logger.info("$runtimeType has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();
    logger.info("$runtimeType has been ready.");
  }

  @override
  void onClose() {
    startDateController.dispose();
    endDateController.dispose();
    amountController.dispose();
    descriptionController.dispose();
    vacationTypeController.dispose();

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
          if (dailyVacationFormGlobalKey.currentState!.validate()) {
            dailyVacationFormGlobalKey.currentState!.save();
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

  void onStartDateCalenderPressed(context) async {
    startDateController.text = (await _getDateFromPicker(context)) ?? "";
  }

  void onEndDateCalenderPressed(context) async {
    endDateController.text = (await _getDateFromPicker(context)) ?? "";
    _calculateAmountOfVacation();
  }

  void _save() async {
    throw UnimplementedError(" save method of daily vacation");
    //_catchFormData();
    // if (model.value.id == null) {
    //   await _soldierCaseService
    //       .saveByPersonalInfoId(model.value,
    //           personalInfoId: _bridgeController.personalInfoId.value)
    //       .then((value) {
    //     if (value != 0) {
    //       model(model.value.copyWith(id: value));
    //       _loadData();
    //       showToast(Strings.successfullySavingInfo);
    //     } else {
    //       showToast(Strings.unsuccessfullySavingInfo);
    //     }
    //   }).catchError((onError) {
    //     DialogHelper.showCrashReport(onError.toString());
    //   });
    // } else {
    //   _soldierCaseService.update(model.value).then((value) {
    //     if (value) {
    //       _loadData();
    //       showToast(Strings.successfullyUpdatingInfo);
    //     } else {
    //       showToast(Strings.unsuccessfullyUpdatingInfo);
    //     }
    //   }).catchError((onError) {
    //     DialogHelper.showCrashReport(onError.toString());
    //   });
    // }
  }

  Future<void> _loadData() async {
    await _soldierCaseService
        .findByPersonalInfoId(_bridgeController.personalInfoId.value)
        .then((foundedSoldierCase) {
      if (foundedSoldierCase?.id != null) {
        _clearEditor();
        readOnly(true);
        //  model(foundedSoldierCase);
        descriptionController.text = model.value.description ?? "";
        amountController.text = model.value.amount.toString();
        vacationTypeController.text = model.value.vacationType;
        startDateController.text = toShamsi(model.value.startDate);
        endDateController.text = toShamsi(model.value.endDate);
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void _catchFormData() {
    model(DailyVacationModel(
      id: model.value.id,
      startDate: toDateTime(shamsiDate: startDateController.text.trim()),
      endDate: toDateTime(shamsiDate: endDateController.text.trim()),
      amount: int.parse(amountController.text.trim()),
      vacationType: vacationTypeController.text.trim(),
      description: descriptionController.text.isNotEmpty
          ? descriptionController.text.trim()
          : null,
    ));
  }

  void _clearEditor() {
    model(DailyVacationModel.init());
    startDateController.clear();
    endDateController.clear();
    amountController.clear();
    descriptionController.clear();
    vacationTypeController.clear();
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

  void _calculateAmountOfVacation() {
    try {
      if (startDateController.text.isNotEmpty &&
          amountController.text.isNotEmpty &&
          model.value.id == null) {
        endDateController.text = differenceInDays(
                startDateController.text.trim(), endDateController.text.trim())
            .toString();

        amountController.text =
            differenceInDays(shamsiNow(), endDateController.text.trim())
                .toString();
      }

      // ignore: empty_catches
    } catch (ignore) {}
  }

  void onChangeAmountOfVacation(String val) {
    _calculateAmountOfVacation();
  }
}
