
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/constants/constants.dart';
import 'package:sarbaz/src/localization/localization.dart';
import 'package:sarbaz/src/utils/utils.dart';

import '../../../../soldiers/soldier.dart';
import '../../application.dart';
import '../../domain.dart';

class EducationalInfoController extends GetxController with ValidatorMixin {
  final GlobalKey<FormState> educationalInfoFormGlobalKey = GlobalKey<FormState>();

  final EducationalInfoService _educationalInfoService;
  final BaseController _baseController;

  late RxBool readOnly = false.obs;

  late final Rx<EducationalInfoModel> model = Rx(EducationalInfoModel.init());

  late TextEditingController levelOfEducationController; //req
  late TextEditingController fieldOfStudyController;
  late TextEditingController educationPlaceController;
  late TextEditingController gradeController;
  late TextEditingController skillsController;
  late TextEditingController permissionToStudyController;

  EducationalInfoController(this._educationalInfoService, this._baseController);
  @override
  void onInit() {
    super.onInit();
    levelOfEducationController = TextEditingController();
    fieldOfStudyController = TextEditingController();
    educationPlaceController = TextEditingController();
    gradeController = TextEditingController();
    skillsController = TextEditingController();
    permissionToStudyController = TextEditingController();
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
    levelOfEducationController.dispose();
    fieldOfStudyController.dispose();
    educationPlaceController.dispose();
    gradeController.dispose();
    skillsController.dispose();
    permissionToStudyController.dispose();
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }

   Future<void> initForm() async {
    _clearEditor();
    await _loadData();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!readOnly.value) {
      await _baseController.isPersonalInfoSaved().then((value) {
        if (value) {
          if (educationalInfoFormGlobalKey.currentState!.validate()) {
            educationalInfoFormGlobalKey.currentState!.save();
            logger.info("Further info form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.info("saving edu info...");

                  Get.find<SoldiersController>().loadAllSoldiers();
                  readOnly(true);
                });
          }
        } else {
          showToast(Strings.personalInfoIsnotSavedPleaseSave);
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
      _loadData();
      readOnly(true);
    }
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await _educationalInfoService
          .saveByPersonalInfoId(model.value, personalInfoId: _baseController.personalInfoId.value)
          .then((value) {
        if (value != 0) {
          model(model.value.copyWith(id: value));
          _loadData();
          showToast(Strings.successfullySavingInfo);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      await _educationalInfoService.update(model.value).then((value) {
        if (value) {
          _loadData();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
  }

  Future<void> _loadData() async {
    await _educationalInfoService.findByPersonalInfoId(_baseController.personalInfoId.value).then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
        levelOfEducationController.text =
            model.value.levelOfEducation.isNotEmpty ? model.value.levelOfEducation : Strings.levelOfEducationList[0];
        fieldOfStudyController.text = model.value.fieldOfStudy ?? "";
        educationPlaceController.text = model.value.educationPlace ?? "";
        gradeController.text = model.value.grade != null ? model.value.grade.toString() : "";
        skillsController.text = model.value.skills ?? "";
        permissionToStudyController.text =
            model.value.permissionToStudy != null && model.value.permissionToStudy! ? Strings.yes : Strings.no;
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void _catchFormData() {
    model(EducationalInfoModel(
      id: model.value.id,
      levelOfEducation: levelOfEducationController.text,
      educationPlace: educationPlaceController.text.isNotEmpty ? educationPlaceController.text.trim() : null,
      fieldOfStudy: fieldOfStudyController.text.isNotEmpty ? fieldOfStudyController.text.trim() : null,
      grade: gradeController.text.isNotEmpty ? double.parse(gradeController.text.trim()) : null,
      permissionToStudy: permissionToStudyController.text.isNotEmpty
          ? permissionToStudyController.text.trim() == Strings.yes
              ? true
              : false
          : null,
      skills: skillsController.text.isNotEmpty ? skillsController.text.trim() : null,
    ));
  }

  void _clearEditor() {
    model(EducationalInfoModel.init());
    levelOfEducationController.clear();
    fieldOfStudyController.clear();
    educationPlaceController.clear();
    gradeController.clear();
    skillsController.clear();
    permissionToStudyController.clear();
  }

  PopupMenuButton<String> getLevelOfEducation() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        levelOfEducationController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.levelOfEducationList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(value: value, child: SizedBox(width: kTextFieldWidth / 2, child: Text(value)));
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getPermissions() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        permissionToStudyController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.permissionsList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(value: value, child: SizedBox(width: kTextFieldWidth / 3, child: Text(value)));
        }).toList();
      },
    );
  }
}
