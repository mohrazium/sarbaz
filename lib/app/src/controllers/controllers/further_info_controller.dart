part of controllers;

class FurtherInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> furtherInfoFormGlobalKey = GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final FurtherInfoService furtherInfoService;
  late final Rx<FurtherInfoModel> model = Rx(FurtherInfoModel.init());
  late final Rx<String> selectedMaritalState = Rx("");

  late final Rx<bool> isEnableNumberOfChildrenFiled = true.obs;
  late final Rx<bool> isEnableDateOfMarriageFiled = true.obs;

  late TextEditingController maritalStateController;
  late TextEditingController dateOfMarriageController;
  late TextEditingController numberOfChildrenController;
  late TextEditingController religionController;
  late TextEditingController sectController;
  late TextEditingController heightController;
  late TextEditingController weightController;
  late TextEditingController hairColorController;
  late TextEditingController eyesColorController;
  late TextEditingController bloodTypeController;

  @override
  void onInit() {
    super.onInit();
    maritalStateController = TextEditingController();
    dateOfMarriageController = TextEditingController();
    numberOfChildrenController = TextEditingController(text: "0");
    religionController = TextEditingController(text: Strings.religionList[0]);
    sectController = TextEditingController(text: Strings.sectList[0]);
    heightController = TextEditingController(text: "0");
    weightController = TextEditingController(text: "0.0");
    hairColorController = TextEditingController(text: Strings.hairColorList[0]);
    eyesColorController = TextEditingController(text: Strings.eyesColorList[0]);
    bloodTypeController = TextEditingController();
    furtherInfoService = Get.find<FurtherInfoService>();
    bridgeController = Get.find<BridgeController>();
    initForm();
    logger.log(message: "$runtimeType has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();

    logger.log(message: "$runtimeType has been ready.");
  }

  @override
  void onClose() {
    maritalStateController.dispose();
    dateOfMarriageController.dispose();
    numberOfChildrenController.dispose();
    religionController.dispose();
    sectController.dispose();
    heightController.dispose();
    weightController.dispose();
    hairColorController.dispose();
    eyesColorController.dispose();
    bloodTypeController.dispose();
    logger.log(level: Level.INFO, message: "$runtimeType has been closed.");
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
          if (furtherInfoFormGlobalKey.currentState!.validate()) {
            furtherInfoFormGlobalKey.currentState!.save();
            logger.log(message: "Further info form is valid to save.");
            MessageDialog.show(
                title: Strings.saveInfoTitle,
                messageDialogButtons: MessageDialogButtons.YES_NO,
                messageDialogType: MessageDialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.log(message: "saving further info...");

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

  void onCalenderPressed(context) async {
    var now = Jalali.now().year;
    Jalali? picked = await showPersianDatePicker(
      context: context,
      initialDate: Jalali(now - 20, 1),
      firstDate: Jalali(now - 40, 1),
      lastDate: Jalali(now - 16, 1),
    );
    if (picked != null) {
      dateOfMarriageController.text =
          persianTools.convertEnToFa(picked.formatCompactDate());
    }
  }

  String? validateDateOfMarriage(String? val) {
    return selectedMaritalState.value == Strings.maritalStateMarried
        ? validateBeforeToday(
            value: val,
            errorMessage: Strings.dateOfMarriageIsNotBeforeTody,
          )
        : null;
  }

  validateNumberOfChildren(String? val) {
    return selectedMaritalState.value == Strings.maritalStateSingle
        ? int.parse(val!) > 0
            ? Strings.maritalStateSingle
            : ""
        : null;
  }

  PopupMenuButton<String> getBloodTypeList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        bloodTypeController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.bloodTypeList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 5, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getHairColorTypeList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        hairColorController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.hairColorList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 3, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getEyeColorTypeList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        eyesColorController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.eyesColorList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 3, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getMaritalList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        maritalStateController.text = value;
        maritalStateChanged();
      },
      itemBuilder: (BuildContext context) {
        return Strings.maritalStatusList
            .map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 5, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getReligionList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        religionController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.religionList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 5, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  PopupMenuButton<String> getSectList() {
    return PopupMenuButton<String>(
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        sectController.text = value;
      },
      itemBuilder: (BuildContext context) {
        return Strings.sectList.map<PopupMenuItem<String>>((String value) {
          return PopupMenuItem(
              child: SizedBox(width: kTextFieldWidth / 5, child: Text(value)),
              value: value);
        }).toList();
      },
    );
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await furtherInfoService
          .saveWithParentId(model.value,
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
      furtherInfoService.update(model.value).then((value) {
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
    await furtherInfoService
        .findByPersonalInfoId(bridgeController.personalInfoId.value)
        .then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
        maritalStateController.text = model.value.maritalState;
        dateOfMarriageController.text = toShamsi(model.value.dateOfMarriage);
        numberOfChildrenController.text = model.value.numberOfChildren != null
            ? model.value.numberOfChildren.toString()
            : "0";
        religionController.text = model.value.religion ?? "";
        sectController.text = model.value.sect ?? "";
        heightController.text =
            model.value.height != null ? model.value.height.toString() : "0";
        weightController.text =
            model.value.weight != null ? model.value.weight.toString() : "0.0";
        hairColorController.text = model.value.hairColor ?? "";
        eyesColorController.text = model.value.eyesColor ?? "";
        bloodTypeController.text = model.value.bloodType ?? "";
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      showToast(Strings.error);
    });
  }

  void _catchFormData() {
    model(FurtherInfoModel(
        id: model.value.id,
        maritalState: maritalStateController.text.trim(),
        dateOfMarriage:
            toDateTimeFromString(dateOfMarriageController.text.trim()),
        numberOfChildren: int.parse(
            numberOfChildrenController.text.trim().isNotEmpty
                ? numberOfChildrenController.text.trim()
                : "0"),
        religion: religionController.text.trim(),
        sect: sectController.text.trim(),
        height: int.parse(heightController.text.trim().isNotEmpty
            ? heightController.text.trim()
            : "0"),
        weight: double.parse(weightController.text.trim().isNotEmpty
            ? weightController.text.trim()
            : "0"),
        hairColor: hairColorController.text.trim(),
        eyesColor: eyesColorController.text.trim(),
        bloodType: bloodTypeController.text.trim()));
  }

  void _clearEditor() {
    model(FurtherInfoModel.init());
    maritalStateController.clear();
    dateOfMarriageController.clear();
    numberOfChildrenController.clear();
    religionController.clear();
    sectController.clear();
    heightController.clear();
    weightController.clear();
    hairColorController.clear();
    eyesColorController.clear();
    bloodTypeController.clear();
  }

  void maritalStateChanged() {
    if (maritalStateController.text == Strings.maritalStateMarried) {
      isEnableDateOfMarriageFiled(true);
      isEnableNumberOfChildrenFiled(true);
    } else {
      isEnableDateOfMarriageFiled(false);
      isEnableNumberOfChildrenFiled(false);
      dateOfMarriageController.text = "";
      numberOfChildrenController.text = "0";
    }
  }
}
