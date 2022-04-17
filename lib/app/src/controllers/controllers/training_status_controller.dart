part of controllers;

class TrainingStatusController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> trainingStatusFormGlobalKey =
      GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final TrainingStatusService _service;
  late final Rx<TrainingStatusModel> model = Rx(TrainingStatusModel.init());

  late TextEditingController startDateController;
  late TextEditingController placeNameController;
  late TextEditingController periodController;
  late TextEditingController statusController;
  late TextEditingController typeController;
  late TextEditingController endDateController;
  late TextEditingController descriptionController;

  @override
  void onInit() {
    super.onInit();
    startDateController = TextEditingController();
    placeNameController = TextEditingController();
    periodController = TextEditingController();
    statusController = TextEditingController(text: Strings.religionList[0]);
    typeController = TextEditingController(text: Strings.sectList[0]);
    endDateController = TextEditingController();
    descriptionController = TextEditingController();
    _service = Get.find<TrainingStatusService>();
    bridgeController = Get.find<BridgeController>();
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
    placeNameController.dispose();
    periodController.dispose();
    statusController.dispose();
    typeController.dispose();
    endDateController.dispose();
    descriptionController.dispose();
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }

  void initForm() {
    _clearEditor();
    _loadInfo();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!readOnly.value) {
      await bridgeController.isSoldierSaved().then((value) {
        if (value) {
          if (trainingStatusFormGlobalKey.currentState!.validate()) {
            trainingStatusFormGlobalKey.currentState!.save();
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
      _loadInfo();
      readOnly(true);
    }
  }

  void onCalenderPressed(context, isStart) async {
    var now = Jalali.now().year;
    Jalali? picked = await showPersianDatePicker(
      context: context,
      initialDate: Jalali(now, 1),
      firstDate: Jalali(now - 2, 1),
      lastDate: Jalali(now, 6),
    );
    if (picked != null) {
      if (isStart) {
        startDateController.text =
            persianTools.convertEnToFa(picked.formatCompactDate());
      } else {
        endDateController.text =
            persianTools.convertEnToFa(picked.formatCompactDate());
      }
      if (startDateController.text.isNotEmpty &&
          endDateController.text.isNotEmpty) {
        periodController.text = daysDifferenceBetween(
                startDateController.text.trim(), endDateController.text.trim())
            .toString();
      }
    }
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await _service
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
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      _service.update(model.value).then((value) {
        if (value) {
          _loadInfo();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
  }

  Future<void> _loadInfo() async {
    await _service
        .findByPersonalInfoId(bridgeController.personalInfoId.value)
        .then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
        startDateController.text = model.value.startDate != null
            ? toShamsi(model.value.startDate)
            : "";
        placeNameController.text = model.value.placeName;
        periodController.text =
            model.value.period != null ? model.value.period.toString() : "";
        statusController.text = model.value.status ?? "";
        typeController.text = model.value.type ?? "";
        endDateController.text =
            model.value.endDate != null ? toShamsi(model.value.endDate) : "";
        descriptionController.text = model.value.description ?? "";
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void _catchFormData() {
    model(TrainingStatusModel(
      id: model.value.id,
      placeName: placeNameController.text.trim(),
      status: statusController.text.isNotEmpty
          ? startDateController.text.trim()
          : null,
      startDate: startDateController.text.isNotEmpty
          ? toDateTimeFromShamsiString(startDateController.text.trim())
          : null,
      endDate: endDateController.text.isNotEmpty
          ? toDateTimeFromShamsiString(endDateController.text.trim())
          : null,
      period: periodController.text.isNotEmpty
          ? int.parse(periodController.text.trim())
          : null,
      type: typeController.text.isNotEmpty ? typeController.text.trim() : null,
      description: descriptionController.text.isNotEmpty
          ? descriptionController.text.trim()
          : null,
    ));
  }

  void _clearEditor() {
    model(TrainingStatusModel.init());
    startDateController.clear();
    placeNameController.clear();
    periodController.clear();
    statusController.clear();
    typeController.clear();
    endDateController.clear();
    descriptionController.clear();
  }
}
