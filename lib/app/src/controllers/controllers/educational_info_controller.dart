part of controllers;

class EducationalInfoController extends GetxController with ValidatorMixin {
  final GlobalKey<FormState> educationalInfoFormGlobalKey =
      GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final EducationalInfoService service;
  late final Rx<EducationalInfoModel> model = Rx(EducationalInfoModel.init());

  late TextEditingController levelOfEducationController; //req
  late TextEditingController fieldOfStudyController;
  late TextEditingController educationPlaceController;
  late TextEditingController gradeController;
  late TextEditingController skillsController;
  late TextEditingController permissionToStudyController;

  @override
  void onInit() {
    super.onInit();
    levelOfEducationController = TextEditingController();
    fieldOfStudyController = TextEditingController();
    educationPlaceController = TextEditingController();
    gradeController = TextEditingController();
    skillsController = TextEditingController();
    permissionToStudyController = TextEditingController();
    bridgeController = Get.find<BridgeController>();
    service = Get.find<EducationalInfoService>();
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

  void initForm() {
    _clearEditor();
    _loadInfo();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!readOnly.value) {
      await bridgeController.isPersonalInfoSaved().then((value) {
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

                  Get.find<SoldiersController>().loadAll();
                  readOnly(true);
                });
          }
        } else {
          showToast(Strings.personalInfoIsnotSavedPleaseSave);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    if (model.value.id == null) {
      _clearEditor();
    } else {
      _loadInfo();
      readOnly(true);
    }
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await service
          .saveByPersonalInfoId(model.value,
              personalInfoId: bridgeController.personalInfoId.value)
          .then((value) {
        if (value != 0) {
          model(model.value.copyWith(id: value));
          _loadInfo();
          showToast(Strings.successfullySavingInfo);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    } else {
      await service.update(model.value).then((value) {
        if (value) {
          _loadInfo();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        showToast(Strings.error);
      });
    }
  }

  Future<void> _loadInfo() async {
    await service
        .findByPersonalInfoId(bridgeController.personalInfoId.value)
        .then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
        levelOfEducationController.text =
            model.value.levelOfEducation.isNotEmpty
                ? model.value.levelOfEducation
                : Strings.levelOfEducationList[0];
        fieldOfStudyController.text = model.value.fieldOfStudy ?? "";
        educationPlaceController.text = model.value.educationPlace ?? "";
        gradeController.text =
            model.value.grade != null ? model.value.grade.toString() : "";
        skillsController.text = model.value.skills ?? "";
        permissionToStudyController.text =
            model.value.permissionToStudy != null &&
                    model.value.permissionToStudy!
                ? Strings.yes
                : Strings.no;
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      showToast(Strings.error);
    });
  }

  void _catchFormData() {
    model(EducationalInfoModel(
      id: model.value.id,
      levelOfEducation: levelOfEducationController.text,
      educationPlace: educationPlaceController.text.isNotEmpty
          ? educationPlaceController.text.trim()
          : null,
      fieldOfStudy: fieldOfStudyController.text.isNotEmpty
          ? fieldOfStudyController.text.trim()
          : null,
      grade: gradeController.text.isNotEmpty
          ? double.parse(gradeController.text.trim())
          : null,
      permissionToStudy: permissionToStudyController.text.isNotEmpty
          ? permissionToStudyController.text.trim() == Strings.yes
              ? true
              : false
          : null,
      skills: skillsController.text.isNotEmpty
          ? skillsController.text.trim()
          : null,
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
        return Strings.levelOfEducationList
            .map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 2, child: Text(value)),
              value: value);
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
        return Strings.permissionsList
            .map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 3, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }
}
