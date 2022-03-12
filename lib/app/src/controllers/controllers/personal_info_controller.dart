part of controllers;

class PersonalInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> personalInfoFormGlobalKey = GlobalKey<FormState>();

  late RxInt personalInfoId = 0.obs;
  late RxBool readOnly = true.obs;
  late DateTime _dateOfBirth;

  late final PersonalInfoService _personalInfoService;
  late final SoldierCaseEditorController _soldierCaseEditorController;
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
    _soldierCaseEditorController = Get.find<SoldierCaseEditorController>();
    int personId = _soldierCaseEditorController.personalInfoId.value;
    if (personId != 0) {
      logger.log(message: "$this has been initialized on new person mode.");
      _loadPersonalInfo(personId);
    } else {
      logger.log(
          message: "$this has been initialized on editable person mode.");
      _changeReadOnly();
    }
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

  void onChangedNationalCodeField(String val) async {
    if (val.length == 10) {
      if (await _checkPersonalInfoDuplication(val)) {
        MessageDialog.show(
            title: Strings.info,
            message: Strings.duplicationNationalCode,
            messageDialogButtons: MessageDialogButtons.OK,
            messageDialogType: MessageDialogType.ERROR,
            okPressed: () {
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
        // use the email provided here

        _changeReadOnly();
      }
    } else {
      _changeReadOnly();
    }
  }

  void onCancelButtonPressed() {
    _loadPersonalInfo(_soldierCaseEditorController.personalInfoId.value);
    _changeReadOnly();
    logger.log(message: "cancel clicked");
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
      _dateOfBirth =
          toDateTime(year: picked.year, month: picked.month, day: picked.day);
      dateOfBirthController.text =
          persianTools.convertEnToFa(picked.formatCompactDate());
    }
  }

  _changeReadOnly() {
    readOnly.value = !readOnly.value;
  }

  Future<bool> _checkPersonalInfoDuplication(String nationalIdentity) async {
    //TODO: fix check person duplication
    // try {
    //   _logger.log(Level.INFO,
    //       message: "Checking personal info duplication by national identity.");
    //   if (nationalIdentity.length == 10) {
    //     final value =
    //         await _personalInfoService.findByNationalIdentity(nationalIdentity);
    //     if (value != null) {
    //       _logger.log(Level.WARNING,
    //           message:
    //               "Personal info is duplicated by nationalIdentity :$nationalIdentity.");
    //       return Future.value(true);
    //     } else {
    //       _logger.log(Level.INFO,
    //           message: "Personal info is not duplicated can be store.");
    //       return Future.value(false);
    //     }
    //   } else {
    //     return Future.value(false);
    //   }
    // } catch (e) {
    //   throw FailureException(
    //       exception: e,
    //       message: "An error was happened in checking duplication");
    // }
    return false;
  }

  Future<bool> _save({int? id}) async {
    //   _logger.log(Level.INFO,
    //       message: "Check validation of Soldier editor form.");
    //   if (soldierEditorFormKey.currentState!.validate()) {
    //     _logger.log(Level.INFO, message: "Soldier editor form is valid.");
    //     _logger.log(Level.INFO,
    //         message: "Catching data from Soldier editor form.");
    //  //   PersonalInfoModel model = catchFormData();
    //     if (id == null) {
    //       await _personalInfoService.save(model);
    //       clearEditor();
    //       return Future.value(true);
    //     } else {
    //       //TODO 1 :load personal info to editor and update here.
    //     }
    // }

    // _logger.log(Level.INFO, message: "Soldier editor form is not valid.");
    return Future.value(false);
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
    }
  }

  void _catchFormData() {
    _model.value = PersonalInfoModel(
      nationalCode: nationalCodeController.text.trim(),
      nationalIdentity: nationalIdentityController.text.trim(),
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      fatherName: fatherNameController.text.trim(),
      dateOfBirth: _dateOfBirth,
      placeOfBirth: placeOfBirthController.text.trim(),
    );
  }

  void _clearEditor() {
    personalInfoId(0);
    nationalCodeController.clear();
    nationalIdentityController.clear();
    lastNameController.clear();
    fatherNameController.clear();
    firstNameController.clear();
    dateOfBirthController.clear();
    placeOfBirthController.clear();
    placeOfBirthController.clear();
  }
}
