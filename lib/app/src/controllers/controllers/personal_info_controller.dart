part of controllers;

class PersonalInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> personalInfoFormGlobalKey = GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final PersonalInfoService _personalInfoService;
  late final Rx<PersonalInfoModel> _model = Rx(PersonalInfoModel.empty());

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
    _personalInfoService = Get.find<PersonalInfoService>();
    bridgeController = Get.find<BridgeController>();
    initPersonaInfo();
    logger.log(message: "$this has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();

    logger.log(message: "$this has been ready.");
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
    logger.log(level: Level.INFO, message: "$this has been closed.");
    super.onClose();
  }

  void initPersonaInfo() {
    final id = bridgeController.personalInfoId.value;
    if (id == 0) {
      logger.log(message: "$this has been initialized on new person mode.");
      bridgeController.soldierNameAndFamily("...");
      _clearEditor();
      readOnly(false);
    } else {
      logger.log(
          message: "$this has been initialized on editable person mode.");
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
      if (await _checkPersonalInfoDuplication(val)) {
        MessageDialog.show(
            title: Strings.info,
            message: Strings.duplicationNationalCode,
            messageDialogButtons: MessageDialogButtons.OK,
            messageDialogType: MessageDialogType.ERROR,
            onOkPressed: () {
              nationalCodeController.clear();
            });
      }
    }
  }

  void onConfirmButtonPressed() {
    logger.log(message: "onConfirmButtonClick");
    if (!readOnly.value) {
      if (personalInfoFormGlobalKey.currentState!.validate()) {
        personalInfoFormGlobalKey.currentState!.save();
        logger.log(message: "save clicked");
        MessageDialog.show(
            title: "Strings.saveInfoTitle",
            messageDialogButtons: MessageDialogButtons.YES_NO,
            messageDialogType: MessageDialogType.INFO,
            message: "اطلاعات ثبت شود",
            onYesPressed: () {
              _save();
            });
        readOnly(true);
      }
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    if (bridgeController.personalInfoId.value == 0) {
      _clearEditor();
    } else {
      _loadPersonalInfo(bridgeController.personalInfoId.value);
      readOnly(true);
    }
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
    if (await _personalInfoService.findByNationalCode(nationalIdentity) !=
        null) {
      logger.log(
          level: Level.WARNING,
          message:
              "Personal info is duplicated by nationalIdentity :$nationalIdentity.");
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  void _save() async {
    _catchFormData();
    final id = bridgeController.personalInfoId.value;
    if (id == 0) {
      await _personalInfoService.save(_model.value);
      showToast(
        "person saved",
      );
      Get.find<SoldiersController>().loadAllPersons();
    } else {
      //TODO 1 :load personal info to editor and update here.
      showToast(
        "person updated",
      );
    }
  }

  Future<void> _loadPersonalInfo(int personalInfoId) async {
    var founded = await _personalInfoService.findById(personalInfoId);
    if (founded != null) {
      _model.value = founded;
      nationalCodeController.text = _model.value.nationalCode;
      nationalIdentityController.text = _model.value.nationalIdentity ?? "";
      lastNameController.text = _model.value.lastName;
      fatherNameController.text = _model.value.fatherName ?? "";
      firstNameController.text = _model.value.firstName;
      dateOfBirthController.text = toShamsi(_model.value.dateOfBirth);
      placeOfBirthController.text = _model.value.placeOfBirth ?? "";
      placeOfIssueController.text = _model.value.placeOfIssue ?? "";
      getSoldierNameAndFamily(founded);
    }
  }

  void _catchFormData() {
    _model.value = PersonalInfoModel(
      nationalCode: nationalCodeController.text.trim(),
      nationalIdentity: nationalIdentityController.text.trim(),
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      fatherName: fatherNameController.text.trim(),
      dateOfBirth: toDateTimeFomString(dateOfBirthController.text.trim()),
      placeOfBirth: placeOfBirthController.text.trim(),
      placeOfIssue: placeOfIssueController.text.trim(),
    );
  }

  void _clearEditor() {
    bridgeController.personalInfoId(0);
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
