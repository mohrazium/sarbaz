part of controllers;

class FurtherInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {
  final GlobalKey<FormState> furtherInfoFormGlobalKey = GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final FurtherInfoService _furtherInfoService;
  late final Rx<FurtherInfoModel> model = Rx(FurtherInfoModel.init());
  late final Rx<String> selectedMaritalState = Rx("");

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
    numberOfChildrenController = TextEditingController();
    religionController = TextEditingController();
    sectController = TextEditingController();
    heightController = TextEditingController();
    weightController = TextEditingController();
    hairColorController = TextEditingController();
    eyesColorController = TextEditingController();
    bloodTypeController = TextEditingController();
    _furtherInfoService = Get.find<FurtherInfoService>();
    bridgeController = Get.find<BridgeController>();
    initForm();
    logger.log(message: "$this has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();

    logger.log(message: "$this has been ready.");
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
    logger.log(level: Level.INFO, message: "$this has been closed.");
    super.onClose();
  }

  void initForm() {
    print("555555555555");
    _loadInfo();

    int personalInfoId = bridgeController.personalInfoId.value;
    logger.log(
        message:
            "======================= $personalInfoId /// ${model.value.id}");

    if (personalInfoId == 0 && model.value.id == 0) {
      logger.log(message: "$this has been initialized on new info mode.");
      _clearEditor();
      readOnly(false);
    } else if (personalInfoId != 0 && model.value.id == 0) {
      logger.log(message: "$this has been initialized on new info mode.");
      _clearEditor();
      readOnly(false);
    } else if (personalInfoId != 0 && model.value.id != 0) {
      logger.log(
          message: "$this has been initialized on editable person mode.");
      readOnly(true);
    } else {
      logger.log(
          message:
              "====fuuuuuuuuuuuuuuuuuuuck ${personalInfoId}///${model.value.id}");
    }
  }

  void onConfirmButtonPressed() {
    if (!readOnly.value) {
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
            });
        readOnly(true);
      }
    } else {
      readOnly(false);
    }
  }

  void onCancelButtonPressed() {
    if (bridgeController.personalInfoId.value == 0 || model.value.id == 0) {
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
        _keepSelectedMaritalStatus();
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
    logger.log(
        message:
            "Going to save further info with data ${model.value.toString()}");
    int personalInfoId = bridgeController.personalInfoId.value;
    if (personalInfoId != 0 && model.value.id == 0) {
      _catchFormData();
      logger.log(
          message:
              "in save : Going to save further info with data ${model.value.toString()}");
      await _furtherInfoService.saveWithParentId(model.value,
          personalInfoId: personalInfoId);
      initForm();
      showToast(
        Strings.successfullySavingInfo,
      );
    } else if (personalInfoId != 0 && model.value.id != 0) {
      _catchFormData(furtherInfoId: model.value.id);
      logger.log(
          message:
              "in update : Going to save further info with data ${model.value.toString()}");
      await _furtherInfoService.update(model.value);
      initForm();
      showToast(
        Strings.successfullyUpdatingInfo,
      );
    }

    Get.find<SoldiersController>().loadAllPersons();
  }

  Future<void> _loadInfo() async {
    var founded = await _furtherInfoService
        .findById(bridgeController.personalInfoId.value);
        
    model(FurtherInfoModel.init());

    if (founded !=null && founded.id != 0) {
      model(founded);
      maritalStateController.text = model.value.maritalState;
      dateOfMarriageController.text = toShamsi(model.value.dateOfMarriage);
      numberOfChildrenController.text = model.value.numberOfChildren.toString();
      religionController.text = model.value.religion ?? "";
      sectController.text = model.value.sect ?? "";
      heightController.text = model.value.height.toString();
      weightController.text = model.value.weight.toString();
      hairColorController.text = model.value.hairColor ?? "";
      eyesColorController.text = model.value.eyesColor ?? "";
      bloodTypeController.text = model.value.bloodType ?? "";
    }
  }

  FurtherInfoModel _catchFormData({int? furtherInfoId}) {
    return FurtherInfoModel(
        id: furtherInfoId,
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
        bloodType: bloodTypeController.text.trim());
  }

  void _clearEditor() {
    bridgeController.personalInfoId(0);
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

  void _keepSelectedMaritalStatus() {
    if (maritalStateController.text.isNotEmpty) {
      selectedMaritalState(maritalStateController.text);
      if (Strings.maritalStateSingle == maritalStateController.text) {
        numberOfChildrenController.text = 0.toString();
      }
    }
  }
}
