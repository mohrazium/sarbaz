import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:persian_tools/persian_tools.dart' as PersianTools;
import 'package:sarbaz/src/core/config/injection/injector.dart';
import 'package:sarbaz/src/core/config/logger/logger_service.dart';

class DashboardController extends GetxController {
  // From state key
  final GlobalKey<FormState> sodierEditorFormKey = new GlobalKey<FormState>();
  // Declare text editing controllers
  late TextEditingController nationalIdentityController,
      lastNameController,
      maritalStatusController,
      filedOfStudy,
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

  @override
  void onInit() {
    super.onInit();
    nationalIdentityController = TextEditingController();
    lastNameController = TextEditingController();
    maritalStatusController = TextEditingController();
    filedOfStudy = TextEditingController();
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
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    nationalIdentityController.dispose();
    lastNameController.dispose();
    maritalStatusController.dispose();
    filedOfStudy.dispose();
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
}
