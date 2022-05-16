part of controllers;

class DailyVacationController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final BridgeController _bridgeController;
  final DailyVacationService _dailyVacationService;

  DailyVacationController(this._bridgeController, this._dailyVacationService);

  final GlobalKey<FormState> dailyVacationFormGlobalKey =
      GlobalKey<FormState>();
  late RxBool readOnly = false.obs;

  late final Rx<DailyVacationModel> model = Rx(DailyVacationModel.init());

  late TextEditingController startDateController;
  late TextEditingController endDateController;
  late TextEditingController amountController;
  late TextEditingController vacationTypeController;
  late TextEditingController descriptionController;

  @override
  void onInit() {
    super.onInit();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
    amountController = TextEditingController();
    descriptionController = TextEditingController();
    vacationTypeController =
        TextEditingController(text: Strings.vacationsTypeList[0]);
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
      await _bridgeController.isSoldierCaseSaved().then((value) {
        if (value) {
          if (dailyVacationFormGlobalKey.currentState!.validate()) {
            dailyVacationFormGlobalKey.currentState!.save();
            logger.info("Daily vacation form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.info("saving daily vacation...");
                });
          }
        } else {
          showToast(Strings.soldierCaseIsnotSavedPleaseSave);
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
    _calculateAmountOfVacation();
  }

  void onEndDateCalenderPressed(context) async {
    endDateController.text = (await _getDateFromPicker(context)) ?? "";
    _calculateAmountOfVacation();
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      model(model.value.copyWith(
          vacations: VacationsModel.init()
              .copyWith(id: await _bridgeController.getCurrentVacationsId())));
      await _dailyVacationService
          .saveByPersonalInfoId(
              model.value, _bridgeController.personalInfoId.value)
          .then((value) {
        if (value != null && value.id! != 0) {
          readOnly(true);
          model(model.value.copyWith(id: value.id));
          _bridgeController.dailyVacationId(value.id);
          _loadData();
          showToast(Strings.successfullySavingInfo);
          _bridgeController
              .initSoldierEditorForms(_bridgeController.personalInfoId.value);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        _handleOnError(onError);
      });
    } else {
      _dailyVacationService
          .updateByPersonalInfoId(
              model.value, _bridgeController.personalInfoId.value)
          .then((isUpdated) {
        if (isUpdated) {
          readOnly(true);
          _loadData();
          showToast(Strings.successfullyUpdatingInfo);
          _bridgeController
              .initSoldierEditorForms(_bridgeController.personalInfoId.value);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        _handleOnError(onError);
      });
    }
  }

  Future<void> _loadData() async {
    await _dailyVacationService
        .findById(model.value.id ?? _bridgeController.dailyVacationId.value)
        .then((foundedDailyVacation) {
      if (foundedDailyVacation?.id != null) {
        _clearEditor();
        readOnly(true);
        model(foundedDailyVacation);
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
    vacationTypeController.text = Strings.vacationsTypeList[0];
  }

  Future<String?> _getDateFromPicker(ctx) async {
    var now = Jalali.now().year;
    Jalali? picked = await showPersianDatePicker(
      context: ctx,
      initialDate: Jalali.now(),
      firstDate: Jalali(now - 2, 1),
      lastDate: Jalali(now, 6),
    );
    if (picked != null) {
      return persianTools.convertEnToFa(picked.formatCompactDate());
    }
    return null;
  }

  void _calculateAmountOfVacation() {
    if (startDateController.text.isNotEmpty &&
        endDateController.text.isNotEmpty) {
      amountController.text = differenceInDays(
              startDateController.text.trim(), endDateController.text.trim())
          .toString();
    }
  }

  void onChangeAmountOfVacation(String val) {
    _calculateAmountOfVacation();
  }

  void onClearFormPressed() {
    _clearEditor();
    readOnly(false);
  }

  void _handleOnError(onError) {
    if (onError is Message) {
      DialogHelper.showMessageBox(
          title: Strings.saveVacation,
          message: onError.toString(),
          dialogType: DialogType.WARNING,
          dialogButtons: DialogButtons.OK);
    } else {
      DialogHelper.showCrashReport(onError.toString());
    }
  }
}
