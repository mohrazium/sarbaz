part of controllers;

class PersonalInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> personalInfoFormGlobalKey = GlobalKey<FormState>();

  late RxBool readOnly = false.obs;

  late final PersonalInfoService service;
  late final Rx<PersonalInfoModel> model = Rx(PersonalInfoModel.init());

  late final BridgeController bridgeController;

  late TextEditingController nationalCodeController;
  late TextEditingController nationalIdentityController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController fatherNameController;
  late TextEditingController dateOfBirthController;
  late TextEditingController placeOfBirthController;
  late TextEditingController placeOfIssueController;

  @override
  void onInit() {
    super.onInit();
    nationalCodeController = TextEditingController();
    nationalIdentityController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    fatherNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    placeOfBirthController = TextEditingController();
    placeOfIssueController = TextEditingController();
    service = Get.find<PersonalInfoService>();
    bridgeController = Get.find<BridgeController>();
    logger.log(message: "$runtimeType has been initialized.");
    initForm(bridgeController.personalInfoId.value);
  }

  @override
  void onReady() {
    super.onReady();

    logger.log(message: "$runtimeType has been ready.");
  }

  @override
  void onClose() {
    nationalCodeController.dispose();
    nationalIdentityController.dispose();
    lastNameController.dispose();
    fatherNameController.dispose();
    firstNameController.dispose();
    dateOfBirthController.dispose();
    placeOfBirthController.dispose();
    placeOfIssueController.dispose();
    logger.log(level: Level.INFO, message: "$runtimeType has been closed.");
    super.onClose();
  }

  void initForm(int id) {
    if (id == 0) {
      logger.log(
          message: "$runtimeType has been initialized on new person mode.");
      bridgeController.soldierNameAndFamily("...");
      _clearEditor();
      readOnly(false);
    } else {
      logger.log(
          message:
              "$runtimeType has been initialized on editable person mode.");
      _loadPersonalInfo(id);
      readOnly(true);
    }
  }

  void getSoldierNameAndFamily(PersonalInfoModel? model) {
    if (model != null) {
      bridgeController
          .soldierNameAndFamily("${model.firstName} ${model.lastName}");
    }
  }

  void onChangedNationalCodeField(String val) async {
    if (val.length == 10) {
      await _checkPersonalInfoDuplication(val).then((value) {
        if (value) {
          MessageDialog.show(
              title: Strings.info,
              message: Strings.duplicationNationalCode,
              messageDialogButtons: MessageDialogButtons.OK,
              messageDialogType: MessageDialogType.ERROR,
              onOkPressed: () {
                nationalCodeController.clear();
              });
        }
      }).catchError((e) => null);
    }
  }

  void onChangedFirstAndLastNameField(String val) async {
    bridgeController.soldierNameAndFamily(
        firstNameController.text + " " + lastNameController.text);
  }

  void onConfirmButtonPressed() {
    if (!readOnly.value) {
      if (personalInfoFormGlobalKey.currentState!.validate()) {
        personalInfoFormGlobalKey.currentState!.save();
        logger.log(message: "personal info form is valid to save.");
        MessageDialog.show(
            title: Strings.saveInfoTitle,
            messageDialogButtons: MessageDialogButtons.YES_NO,
            messageDialogType: MessageDialogType.INFO,
            message: Strings.saveInfoMessage,
            onYesPressed: () {
              _save(bridgeController.personalInfoId.value);
              readOnly(true);
            });
      }
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    _clearEditor();
    _loadPersonalInfo(bridgeController.personalInfoId.value);
    readOnly(true);
  }

  void onCalenderPressed(context) async {
    var now = Jalali.now().year;
    Jalali? picked = await showPersianDatePicker(
      context: context,
      initialDate: Jalali(now - 20, 1),
      firstDate: Jalali(now - 40, 1),
      lastDate: Jalali(now - 16, 1),
    );
    if (picked != null) {
      dateOfBirthController.text =
          persianTools.convertEnToFa(picked.formatCompactDate());
    }
  }

  Future<bool> _checkPersonalInfoDuplication(String nationalIdentity) async {
    bool checked = false;
    await service
        .findByNationalCode(nationalIdentity)
        .then((value) {
      if (value != null) {
        checked = true;
        logger.log(
            level: Level.WARNING,
            message:
                "Personal info is duplicated by nationalIdentity :$nationalIdentity.");
      }
    });

    return Future.value(checked);
  }

  void _save(int id) async {
    if (id == 0) {
      _catchFormData();
      await service.save(model.value).then((value) {
        logger.log(message: "personal info data was saved.");
        initForm(value);
        bridgeController.personalInfoId(value);
        showToast(
          Strings.successfullySavingInfo,
        );
      }).catchError((onError) {
        showToast(
          Strings.unsuccessfullySavingInfo,
        );
      });
    } else {
      _catchFormData(personalInfoId: id);
      await service.update(model.value).then((value) {
        initForm(id);
        showToast(
          Strings.successfullyUpdatingInfo,
        );
      }).catchError((onError) {
        showToast(
          Strings.unsuccessfullyUpdatingInfo,
        );
      });
    }

    Get.find<SoldiersController>().loadAll();
  }

  Future<void> _loadPersonalInfo(int personalInfoId) async {
    var founded = await service.findById(personalInfoId);
    if (founded != null) {
      model.value = founded;
      nationalCodeController.text = model.value.nationalCode;
      nationalIdentityController.text = model.value.nationalIdentity ?? "";
      lastNameController.text = model.value.lastName;
      fatherNameController.text = model.value.fatherName ?? "";
      firstNameController.text = model.value.firstName;
      dateOfBirthController.text = toShamsi(model.value.dateOfBirth);
      placeOfBirthController.text = model.value.placeOfBirth ?? "";
      placeOfIssueController.text = model.value.placeOfIssue ?? "";
      getSoldierNameAndFamily(founded);
    }
  }

  void _catchFormData({int? personalInfoId}) {
    model.value = PersonalInfoModel(
      id: personalInfoId,
      nationalCode: nationalCodeController.text.trim(),
      nationalIdentity: nationalIdentityController.text.trim(),
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      fatherName: fatherNameController.text.trim(),
      dateOfBirth: toDateTimeFromString(dateOfBirthController.text.trim()),
      placeOfBirth: placeOfBirthController.text.trim(),
      placeOfIssue: placeOfIssueController.text.trim(),
    );
  }

  void _clearEditor() {
    model(PersonalInfoModel.init());
    nationalCodeController.clear();
    nationalIdentityController.clear();
    lastNameController.clear();
    fatherNameController.clear();
    firstNameController.clear();
    dateOfBirthController.clear();
    placeOfBirthController.clear();
    placeOfIssueController.clear();
  }
}
