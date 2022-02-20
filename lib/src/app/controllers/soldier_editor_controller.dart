part of controllers;
class SoldierEditorController extends GetxController {
  final GlobalKey<FormState> soldierEditorFormKey = GlobalKey<FormState>();
  // Declare text editing controllers
  RxInt currentStep = 0.obs;

  late TextEditingController nationalIdentityController,
      lastNameController,
      maritalStatusController,
      filedOfStudyController,
      nickNameController,
      fatherNameController,
      numberOfChildrenController,
      mobileNumberController,
      firstNameController,
      dateOfBirthController,
      levelOfEducationController,
      telephoneNumberController,
      distanceController,
      addressController;

  late RxInt personalInfoId = 0.obs;
  late RxBool keepWindowOpen = false.obs;
  late RxBool isEditable = false.obs;
  late RxString selectedLevelOfEducation = "".obs;
  late RxString selectedMaritalStatus = "".obs;
  late LoggerService _logger;
 late final  PersonalInfoService _personalInfoService;

  @override
  void onInit() {
    super.onInit();
    nationalIdentityController = TextEditingController();
    lastNameController = TextEditingController();
    maritalStatusController = TextEditingController();
    filedOfStudyController = TextEditingController();
    nickNameController = TextEditingController();
    fatherNameController = TextEditingController();
    numberOfChildrenController = TextEditingController();
    mobileNumberController = TextEditingController();
    firstNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    levelOfEducationController = TextEditingController();
    telephoneNumberController = TextEditingController();
    distanceController = TextEditingController();
    addressController = TextEditingController();

    _personalInfoService = Get.find<PersonalInfoService>();
    _logger =Get.find<LoggerService>();
    _logger.log(Level.INFO, message: "${this} has been initialized.");
  }

  @override
  void onReady() {
    _logger.log(Level.INFO, message: "${this} has been ready.");
  }

  @override
  void onClose() {
    nationalIdentityController.dispose();
    lastNameController.dispose();
    maritalStatusController.dispose();
    filedOfStudyController.dispose();
    nickNameController.dispose();
    fatherNameController.dispose();
    numberOfChildrenController.dispose();
    mobileNumberController.dispose();
    firstNameController.dispose();
    dateOfBirthController.dispose();
    levelOfEducationController.dispose();
    telephoneNumberController.dispose();
    distanceController.dispose();
    addressController.dispose();
    _logger.log(Level.INFO, message: "${this} has been closed.");
  }

  String? validateNationalIdentity(
      {required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return "این فیلد الزامی است*";
    } else if (!verifyIranianNationalId(value)) {
      return errorMessage;
    }
  }

  String? validateIsNotEmpty(
      {required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return errorMessage;
    }
  }

  String? validateMobileNumber(
      {required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return "این فیلد نمی تواند خالی باشد*";
    } else {
      if (!phoneNumberValidator(value)) {
        return errorMessage;
      }
    }
  }

  void keepSelectedMaritalStatus() {
    if (maritalStatusController.text.length > 0) {
      selectedMaritalStatus = RxString(maritalStatusController.text);
      if (Strings.maritalStatusSingle == maritalStatusController.text) {
        numberOfChildrenController.text = 0.toString();
      }
    }

    update();
  }

  void keepSelectedLevelOfEducation() {
    if (levelOfEducationController.text.length > 0)
      selectedLevelOfEducation.value = levelOfEducationController.text;
  }

  Future<bool> checkPersonalInfoDuplication(String nationalIdentity) async {
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
          message: "An error was happend in checking duplication");
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
    nationalIdentityController.clear();
    lastNameController.clear();
    maritalStatusController.clear();
    filedOfStudyController.clear();
    nickNameController.clear();
    fatherNameController.clear();
    numberOfChildrenController.clear();
    mobileNumberController.clear();
    firstNameController.clear();
    dateOfBirthController.clear();
    levelOfEducationController.clear();
    telephoneNumberController.clear();
    distanceController.clear();
    addressController.clear();
  }

  void stepContinue() {
    if (currentStep.value < 1) currentStep.value += 1;

    _logger.log(Level.INFO,
        message: "Countinue step, the current step is ${currentStep.value}");

    update();
  }

  void stepCancel() {
    if (currentStep.value == 1) currentStep.value -= 1;
    _logger.log(Level.INFO,
        message: "Cancel step, the current step is ${currentStep.value}");
    update();
  }
}
