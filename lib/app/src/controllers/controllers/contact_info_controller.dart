part of controllers;

class ContactInfoController extends GetxController with ValidatorMixin {
  final GlobalKey<FormState> contactInfoFormGlobalKey = GlobalKey<FormState>();
  late final BridgeController bridgeController;
  late RxBool readOnly = false.obs;

  late final ContactInfoService service;
  late final Rx<ContactInfoModel> model = Rx(ContactInfoModel.init());
  late final Rx<List<RelativeContactsInfoModel>> relativeContactsList = Rx([]);

  late TextEditingController phoneNumberController;
  late TextEditingController mobileNumberController;
  late TextEditingController provinceController;
  late TextEditingController cityController;
  late TextEditingController addressController;
  late TextEditingController postalCodeController;
  late TextEditingController distanceController;

  @override
  void onInit() {
    super.onInit();
    phoneNumberController = TextEditingController();
    mobileNumberController = TextEditingController();
    provinceController = TextEditingController();
    cityController = TextEditingController();
    addressController = TextEditingController();
    postalCodeController = TextEditingController();
    distanceController = TextEditingController();
    bridgeController = Get.find<BridgeController>();
    service = Get.find<ContactInfoService>();
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
    phoneNumberController.dispose();
    mobileNumberController.dispose();
    provinceController.dispose();
    cityController.dispose();
    addressController.dispose();
    postalCodeController.dispose();
    distanceController.dispose();
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
          if (contactInfoFormGlobalKey.currentState!.validate()) {
            contactInfoFormGlobalKey.currentState!.save();
            logger.info("Contact info form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _save();
                  logger.info("saving contact info...");

                  Get.find<SoldiersController>().loadAll();
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
      _loadInfo();
      readOnly(true);
    }
  }

  void _save() async {
    _catchFormData();
    if (model.value.id == null) {
      await service
          .saveWithParentId(model.value,
              personalInfoId: bridgeController.personalInfoId.value)
          .then((value) {
        if (value != 0) {
          _loadInfo();
          model(model.value.copyWith(id: value));
          Get.find<RelativeContactsInfoController>().saveRelativeContacts();
          Get.find<RelativeContactsInfoController>().initForm();
          showToast(Strings.successfullySavingInfo);
        } else {
          showToast(Strings.unsuccessfullySavingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    } else {
      service.update(model.value).then((value) {
        if (value) {
          _loadInfo();
          Get.find<RelativeContactsInfoController>().saveRelativeContacts();
          showToast(Strings.successfullyUpdatingInfo);
        } else {
          showToast(Strings.unsuccessfullyUpdatingInfo);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
    Get.find<SoldiersController>().loadAll();
  }

  Future<void> _loadInfo() async {
    await service
        .findByPersonalInfoId(bridgeController.personalInfoId.value)
        .then((value) {
      if (value?.id != null) {
        _clearEditor();
        readOnly(true);
        model(value);
        phoneNumberController.text = model.value.phoneNumber ?? "";
        mobileNumberController.text = model.value.mobileNumber;
        provinceController.text = model.value.province ?? "";
        cityController.text = model.value.city ?? "";
        addressController.text = model.value.address;
        postalCodeController.text = model.value.postalCode ?? "";
        distanceController.text = model.value.distance.toString();
      } else {
        _clearEditor();
        readOnly(false);
      }
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });
  }

  void _catchFormData() {
    model(ContactInfoModel(
        id: model.value.id,
        phoneNumber: phoneNumberController.text.isNotEmpty
            ? phoneNumberController.text.trim()
            : null,
        mobileNumber: mobileNumberController.text.trim(),
        province: provinceController.text.isNotEmpty
            ? provinceController.text.trim()
            : null,
        city:
            cityController.text.isNotEmpty ? cityController.text.trim() : null,
        address: addressController.text.trim(),
        postalCode: postalCodeController.text.isNotEmpty
            ? postalCodeController.text.trim()
            : null,
        distance: int.parse(distanceController.text.trim())));
  }

  void _clearEditor() {
    model(ContactInfoModel.init());
    relativeContactsList.value.clear();
    phoneNumberController.clear();
    mobileNumberController.clear();
    provinceController.clear();
    cityController.clear();
    addressController.clear();
    postalCodeController.clear();
    distanceController.clear();
  }
}
