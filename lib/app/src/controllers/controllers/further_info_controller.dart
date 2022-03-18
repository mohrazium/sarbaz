part of controllers;

class FurtherInfoController extends GetxController
    with ValidatorMixin, DateConverterMixin {

  final GlobalKey<FormState> furtherInfoFormGlobalKey = GlobalKey<FormState>();
  late final BridgeController _bridgeController;
  late RxBool readOnly = false.obs;

  late final FurtherInfoService _furtherInfoService;
  late final Rx<FurtherInfoModel> _model = Rx(FurtherInfoModel.empty());
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
    _bridgeController = Get.find<BridgeController>();
    initPersonaInfo();
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

  void initPersonaInfo() {
    final id = _bridgeController.personalInfoId.value;
    if (id == 0) {
      logger.log(message: "$this has been initialized on new person mode.");
      _bridgeController.soldierNameAndFamily("...");
      _clearEditor();
      readOnly(false);
    } else {
      logger.log(
          message: "$this has been initialized on editable person mode.");
      _loadInfo(id);
      readOnly(true);
    }
  }

  void onConfirmButtonPressed() {
    if (!readOnly.value) {
      if (furtherInfoFormGlobalKey.currentState!.validate()) {
        furtherInfoFormGlobalKey.currentState!.save();
        logger.log(message: "Contact info form is valid to save.");
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
    if (_bridgeController.personalInfoId.value == 0) {
      _clearEditor();
    } else {
      _loadInfo(_bridgeController.personalInfoId.value);
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
    final id = _bridgeController.personalInfoId.value;
    if (id == 0) {
      _catchFormData();
      await _furtherInfoService.save(_model.value);
      showToast(
        Strings.successfullySavingInfo,
      );
    } else {
      _catchFormData(furtherInfoId: id);
      await _furtherInfoService.update(_model.value);
      showToast(
        Strings.successfullyUpdatingInfo,
      );
    }
    Get.find<SoldiersController>().loadAllPersons();
  }

  Future<void> _loadInfo(int furtherInfoId) async {
    var founded = await _furtherInfoService.findById(furtherInfoId);
    if (founded != null) {
      _model.value = founded;
    }
  }

  void _catchFormData({int? furtherInfoId}) {
    _model.value = FurtherInfoModel(
        id: furtherInfoId,
        maritalState: maritalStateController.text.trim(),
        dateOfMarriage:
            toDateTimeFromString(dateOfMarriageController.text.trim()),
        numberOfChildren: int.parse(numberOfChildrenController.text.trim()),
        religion: religionController.text.trim(),
        sect: sectController.text.trim(),
        height: int.parse(heightController.text.trim()),
        weight: double.parse(weightController.text.trim()),
        hairColor: hairColorController.text.trim(),
        eyesColor: eyesColorController.text.trim(),
        bloodType: bloodTypeController.text.trim());
  }

  void _clearEditor() {
    _bridgeController.personalInfoId(0);
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
