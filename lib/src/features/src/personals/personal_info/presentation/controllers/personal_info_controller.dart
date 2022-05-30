
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_tools/persian_tools.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/localization/localization.dart';
import 'package:sarbaz/src/utils/utils.dart';

import '../../../../soldiers.dart';
import '../../application.dart';
import '../../domain.dart';

class PersonalInfoController extends GetxController with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> personalInfoFormGlobalKey = GlobalKey<FormState>();
  final PersonalInfoService _personalInfoService;
  final BaseController _baseController;

  late final Rx<PersonalInfoModel> model = Rx(PersonalInfoModel.init());
  late RxBool readOnly = false.obs;

  late TextEditingController nationalCodeController;
  late TextEditingController nationalIdentityController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController fatherNameController;
  late TextEditingController dateOfBirthController;
  late TextEditingController placeOfBirthController;
  late TextEditingController placeOfIssueController;

  PersonalInfoController(this._personalInfoService, this._baseController);

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
    logger.info("$runtimeType has been initialized.");
    initForm(_baseController.personalInfoId.value);
  }

  @override
  void onReady() {
    super.onReady();

    logger.info("$runtimeType has been ready.");
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
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }

  Future<void> initForm(int id) async {
    if (id == 0) {
      logger.info("$runtimeType has been initialized on new person mode.");
      _baseController.soldierNameAndFamily("...");
      _clearEditor();
      readOnly(false);
    } else {
      logger.info("$runtimeType has been initialized on editable person mode.");
     await _loadPersonalInfo(id);
      readOnly(true);
    }
  }

  void getSoldierNameAndFamily(PersonalInfoModel? model) {
    if (model != null) {
      _baseController.soldierNameAndFamily("${model.firstName} ${model.lastName}");
    }
  }

  void onChangedNationalCodeField(String val) async {
    if (val.length == 10) {
      await _checkPersonalInfoDuplication(val).then((value) {
        if (value) {
          DialogHelper.showMessageBox(
              title: Strings.info,
              message: Strings.duplicationNationalCode,
              dialogButtons: DialogButtons.OK,
              dialogType: DialogType.ERROR,
              onOkPressed: () {
                nationalCodeController.clear();
              });
        }
      }).catchError((e) => null);
    }
  }

  void onChangedFirstAndLastNameField(String val) async {
    _baseController.soldierNameAndFamily("${firstNameController.text} ${lastNameController.text}");
  }

  void onConfirmButtonPressed() {
    if (!readOnly.value) {
      if (personalInfoFormGlobalKey.currentState!.validate()) {
        personalInfoFormGlobalKey.currentState!.save();
        logger.info("personal info form is valid to save.");
        DialogHelper.showMessageBox(
            title: Strings.saveInfoTitle,
            dialogButtons: DialogButtons.YES_NO,
            dialogType: DialogType.INFO,
            message: Strings.saveInfoMessage,
            onYesPressed: () {
              _save(_baseController.personalInfoId.value);
              readOnly(true);
            });
      }
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    _clearEditor();
    _loadPersonalInfo(_baseController.personalInfoId.value);
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
      dateOfBirthController.text = convertEnToFa(picked.formatCompactDate());
    }
  }

  Future<bool> _checkPersonalInfoDuplication(String nationalIdentity) async {
    bool checked = false;
    await _personalInfoService.findByNationalCode(nationalIdentity).then((value) {
      if (value != null) {
        checked = true;
        logger.info("Personal info is duplicated by nationalIdentity :$nationalIdentity.");
      }
    });

    return Future.value(checked);
  }

  void _save(int id) async {
    if (id == 0) {
      _catchFormData();
      await _personalInfoService.save(model.value).then((value) {
        logger.info("personal info data was saved.");
        initForm(value);
        _baseController.personalInfoId(value);
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
      await _personalInfoService.update(model.value).then((value) {
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

    Get.find<SoldiersController>().loadAllSoldiers();
  }

  Future<void> _loadPersonalInfo(int personalInfoId) async {
    var founded = await _personalInfoService.findById(personalInfoId);
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
      dateOfBirth:
          dateOfBirthController.text.isNotEmpty ? toDateTime(shamsiDate: dateOfBirthController.text.trim()) : null,
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
