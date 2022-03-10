part of controllers;

class PersonalInfoController extends GetxController with ValidatorMixin {
  late RxInt personalInfoId = 0.obs;
  late RxBool keepWindowOpen = false.obs;
  late RxBool isEdit = false.obs;
  late RxBool isEditable = false.obs;
  late RxString selectedLevelOfEducation = "".obs;
  late RxString selectedMaritalStatus = "".obs;
  late LoggerService _logger;
  late final PersonalInfoService _personalInfoService;

  late TextEditingController nationalCodeController,
      nationalIdentityController,
      firstNameController,
      lastNameController,
      fatherNameController,
      dateOfBirthController,
      placeOfBirthController,
      placeOfIssueController;

  // maritalStatusController,
  // filedOfStudyController,
  // nickNameController,
  // numberOfChildrenController,
  // mobileNumberController,
  // levelOfEducationController,
  // telephoneNumberController,
  // distanceController,
  // addressController;

  @override
  void onInit() {
    super.onInit();
    nationalCodeController = TextEditingController();
    lastNameController = TextEditingController();
    fatherNameController = TextEditingController();
    firstNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    placeOfBirthController = TextEditingController();
    placeOfIssueController = TextEditingController();

    _personalInfoService = Get.find<PersonalInfoService>();
  }

  @override
  void onReady() {
    super.onReady();

    debugPrint("onReady $this");
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
    _logger.log(Level.INFO, message: "${this} has been closed.");
    super.onClose();
  }

  // void keepSelectedMaritalStatus() {
  //   if (maritalStatusController.text.length > 0) {
  //     selectedMaritalStatus = RxString(maritalStatusController.text);
  //     if (Strings.maritalStatusSingle == maritalStatusController.text) {
  //       numberOfChildrenController.text = 0.toString();
  //     }
  //   }

  //   update();
  // }

  // void keepSelectedLevelOfEducation() {
  //   if (levelOfEducationController.text.length > 0)
  //     selectedLevelOfEducation.value = levelOfEducationController.text;
  // }

  Future<bool> _checkPersonalInfoDuplication(String nationalIdentity) async {
    try {
      _logger.log(Level.INFO,
          message: "Checking personal info duplication by national identity.");
      if (nationalIdentity.length == 10) {
        final value =
            await _personalInfoService.findByNationalIdentity(nationalIdentity);
        if (value != null) {
          _logger.log(Level.WARNING,
              message:
                  "Personal info is duplicated by nationalIdentity :$nationalIdentity.");
          return Future.value(true);
        } else {
          _logger.log(Level.INFO,
              message: "Personal info is not duplicated can be store.");
          return Future.value(false);
        }
      } else {
        return Future.value(false);
      }
    } catch (e) {
      throw FailureException(
          exception: e,
          message: "An error was happened in checking duplication");
    }
  }

  Future<bool> save({int? id}) async {
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

  Future<void> loadPersonalInfo(int personalInfoId) async {
    // PersonalInfoModel model =
    //     await personalInfoService.findById(personalInfoId);
    // nationalIdentityController.text = model.nationalIdentity;
    // lastNameController.text = model.lastName;
    // maritalStatusController.text = model.maritalStatus;
    // filedOfStudyController.text = model.filedOfStudy!;
    // nickNameController.text = model.nickName!;
    // fatherNameController.text = model.fatherName;
    // numberOfChildrenController.text = model.numberOfChildren.toString();
    // mobileNumberController.text = model.mobileNumber;
    // firstNameController.text = model.firstName;
    // dateOfBirthController.text = model.dateOfBirth;
    // levelOfEducationController.text = model.levelOfEducation;
    // telephoneNumberController.text = model.telephoneNumber;
    // distanceController.text = model.distance.toString();
    // addressController.text = model.address;

    update();
  }

  // PersonalInfoModel catchFormData() {
  //   return PersonalInfoModel(
  //       nationalIdentity: nationalIdentityController.text,
  //       firstName: firstNameController.text,
  //       lastName: lastNameController.text,
  //       fatherName: fatherNameController.text,
  //       dateOfBirth: dateOfBirthController.text,
  //       // maritalStatus: maritalStatusController.text,
  //       // numberOfChildren: int.parse(numberOfChildrenController.text),
  //       // levelOfEducation: levelOfEducationController.text,
  //       // filedOfStudy: filedOfStudyController.text,
  //       // mobileNumber: mobileNumberController.text,
  //       // telephoneNumber: telephoneNumberController.text,
  //       // address: addressController.text,
  //       // distance: int.parse(distanceController.text));
  // }

  void clearEditor() {
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

  void onConfirmButtonClick() {
    printError(info: "onConfirmButtonClick");
    isEdit.value = !isEdit.value;
  }

  void onConfirmButtonPressed() {
    isEdit.value = !isEdit.value;
  }

  void onCancelButtonPressed() {}
}
