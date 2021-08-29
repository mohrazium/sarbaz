import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:persian_tools/persian_tools.dart' as PersianTools;
import 'package:sarbaz/src/core/config/injection/injector.dart';
import 'package:sarbaz/src/core/config/logger/logger.dart';
import 'package:sarbaz/src/core/services/services.dart';

class SoldierController extends GetxController {
  final GlobalKey<FormState> sodierEditorFormKey = new GlobalKey<FormState>();
  // Declare text editing controllers
  late TextEditingController nationalIdentityController,
      lastNameController,
      maritalStatusController,
      filedOfStudyController,
      nickNameController,
      fatherNameController,
      numberOfChildrenController,
      mobileNumberController,
      firstNameTextController,
      dateOfBirthController,
      levelOfEducationController,
      telephoneNumberController,
      distanceController,
      addressController;
  late String selectedLevelOfEducation = "";
  late String selectedMaritalStatus = "";
  late PersonalInfoService personalInfo;
  late LoggerService _logger;

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
    firstNameTextController = TextEditingController();
    dateOfBirthController = TextEditingController();
    levelOfEducationController = TextEditingController();
    telephoneNumberController = TextEditingController();
    distanceController = TextEditingController();
    addressController = TextEditingController();
    this.personalInfo = Injector.resolve<PersonalInfoService>();
    this._logger = Injector.resolve<LoggerService>();
    _logger.log(Level.INFO, message: "${this} has been initialized.");
  }

  @override
  void onReady() {}

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
    firstNameTextController.dispose();
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
      return "این فیلد نمی تواند خالی باشد*";
    } else {
      if (!PersianTools.verifyIranianNationalId(value)) {
        return errorMessage;
      }
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
      if (!PersianTools.phoneNumberValidator(value)) {
        return errorMessage;
      }
    }
  }

  void keepSelectedMaritalStatus() {
    if (maritalStatusController.text.length > 0)
      selectedMaritalStatus = maritalStatusController.text;

    update();
  }

  void keepSelectedLevelOfEducation() {
    if (levelOfEducationController.text.length > 0)
      selectedLevelOfEducation = levelOfEducationController.text;

    update();
  }

  Future<void> save({int? personId}) async {
    PersonalInfoModel personalInfoModel;
    if (personId != null) {
      personalInfoModel = await personalInfo.findById(personId);

      nationalIdentityController.text=personalInfoModel.getNationalIdentity();
      lastNameController.dispose();
      maritalStatusController.dispose();
      filedOfStudyController.dispose();
      nickNameController.dispose();
      fatherNameController.dispose();
      numberOfChildrenController.dispose();
      mobileNumberController.dispose();
      firstNameTextController.dispose();
      dateOfBirthController.dispose();
      levelOfEducationController.dispose();
      telephoneNumberController.dispose();
      distanceController.dispose();
      addressController.dispose();
    }
  }
}
