import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:persian_tools/persian_tools.dart' as PersianTools;
import 'package:sarbaz/src/core/config/injection/injector.dart';
import 'package:sarbaz/src/core/config/logger/logger.dart';
import 'package:sarbaz/src/core/services/services.dart';

class SoldierEditorController extends GetxController {
  final GlobalKey<FormState> soldierEditorFormKey = new GlobalKey<FormState>();
  // Declare text editing controllers

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
  late PersonalInfoService _personalInfoService;
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
    firstNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    levelOfEducationController = TextEditingController();
    telephoneNumberController = TextEditingController();
    distanceController = TextEditingController();
    addressController = TextEditingController();
    this._personalInfoService = Injector.resolve<PersonalInfoService>();
    this._logger = Injector.resolve<LoggerService>();
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
      return "این فیلد نمی تواند خالی باشد*";
    } else if (!PersianTools.verifyIranianNationalId(value)) {
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
      if (!PersianTools.phoneNumberValidator(value)) {
        return errorMessage;
      }
    }
  }

  void keepSelectedMaritalStatus() {
    if (maritalStatusController.text.length > 0)
      selectedMaritalStatus = maritalStatusController.text as RxString;
  }

  void keepSelectedLevelOfEducation() {
    if (levelOfEducationController.text.length > 0)
      selectedLevelOfEducation = levelOfEducationController.text as RxString;
  }

  Future<bool> checkPersonalInfoDuplication() async {
    try {
      String code = nationalIdentityController.text;
      if (code.length == 10) {
        final value = await _personalInfoService.findByNationalIdentity(code);
        return value != null ? Future.value(true) : Future.value(false);
      } else
        return Future.value(false);
    } catch (e) {
      return Future.value(false);
    }
  }

  Future<void> save({int? personId}) async {
    _logger.log(Level.INFO,
        message: "Check validation of Soldier editor form.");
    bool isValid = soldierEditorFormKey.currentState!.validate();
    if (isValid) {
      _logger.log(Level.INFO, message: "Soldier editor form is valid.");
      _logger.log(Level.INFO,
          message: "Catching data from Soldier editor form.");
      PersonalInfoModel model = catchFormData();
      // if (personId == null) {
      //   debugPrint(model.nationalIdentity);

      //   await _personalInfoService
      //       .findByNationalIdentity(model.nationalIdentity)
      //       .then((value) => {});

      //   // bool exists = await personalInfoService
      //   //     .existsByNationalIdentity(model.nationalIdentity);
      //   // debugPrint(exists.toString());
      //   // debugPrint((exists).toString());
      //   if (exists == false) {
      //     _logger.log(Level.INFO, message: "exists national Identity.");
      //     Get.defaultDialog(
      //         title: "ذخیره اطلاعات",
      //         content: Text("شناسه ملی قبلا ثبت شده است."),
      //         confirm: TextButton.icon(
      //             onPressed: () {},
      //             icon: Icon(Icons.confirmation_num),
      //             label: Text("تایید")));
      //   } else {
      //     _logger.log(Level.INFO,
      //         message: "Saving new personal info of soldier...");
      //     //   await personalInfoService.save(model);
      //     //  clearEditor();
      //     Get.defaultDialog(
      //       title: "ذخیره اطلاعات",
      //       content: Text("اطلاعات با موفقیت ذخیره شد"),
      //     );
      //     _logger.log(Level.INFO, message: "New soldier successfully saved.");
      //   }
      // } else {}
      //} else {
      //    return;
      // }
    }
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

  PersonalInfoModel catchFormData() {
    return new PersonalInfoModel(
        nationalIdentity: nationalIdentityController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        fatherName: fatherNameController.text,
        nickName: nickNameController.text,
        dateOfBirth: dateOfBirthController.text,
        maritalStatus: maritalStatusController.text,
        numberOfChildren: int.parse(numberOfChildrenController.text),
        levelOfEducation: levelOfEducationController.text,
        filedOfStudy: filedOfStudyController.text,
        mobileNumber: mobileNumberController.text,
        telephoneNumber: telephoneNumberController.text,
        address: addressController.text,
        distance: int.parse(distanceController.text));
  }

  void clearEditor() {
    this.personalInfoId = 0 as RxInt;
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
}
