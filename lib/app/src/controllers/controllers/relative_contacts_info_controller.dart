part of controllers;

class RelativeContactsInfoController extends GetxController
    with ValidatorMixin {

  final GlobalKey<FormState> relativeContactInfoFormGlobalKey =
      GlobalKey<FormState>();

   final BridgeController _bridgeController;
   final ContactInfoController contactController;
   final RelativeContactsInfoService _relativeContactsService;

  final String mdiEditorId = "relativeContactsEditor";

  late final Rx<RelativeContactsInfoModel> model =
      Rx(RelativeContactsInfoModel.init());

  late final Rx<List<RelativeContactsInfoModel>> models =
      Rx(List.empty(growable: true));
  late final Rx<List<Widget>> contactsWidgetList = Rx([]);
  late RxBool isEditorOpen = false.obs;

  late TextEditingController nameAndFamilyController;
  late TextEditingController mobileNumberController;
  late TextEditingController workAddressController;
  late TextEditingController homeAddressController;
  late TextEditingController descriptionController;

  RelativeContactsInfoController(this._bridgeController, this.contactController, this._relativeContactsService);

  @override
  void onInit() {
    super.onInit();
    nameAndFamilyController = TextEditingController();
    mobileNumberController = TextEditingController();
    workAddressController = TextEditingController();
    homeAddressController = TextEditingController();
    descriptionController = TextEditingController();
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
    mobileNumberController.dispose();
    nameAndFamilyController.dispose();
    mobileNumberController.dispose();
    workAddressController.dispose();
    homeAddressController.dispose();
    descriptionController.dispose();
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }

  Future<void> initForm() async {
    _clearEditor();
    _loadInfo();
  }

  Future<void> onConfirmButtonPressed() async {
    if (!contactController.readOnly.value) {
      await _bridgeController.isPersonalInfoSaved().then((value) {
        if (value) {
          if (relativeContactInfoFormGlobalKey.currentState!.validate()) {
            relativeContactInfoFormGlobalKey.currentState!.save();
            logger.info("Form is valid to save.");
            DialogHelper.showMessageBox(
                title: Strings.saveInfoTitle,
                dialogButtons: DialogButtons.YES_NO,
                dialogType: DialogType.INFO,
                message: Strings.saveInfoMessage,
                onYesPressed: () {
                  _catchFormData();
                  if (model.value.id == null &&
                      models.value.firstWhereOrNull((element) =>
                              element.phoneNumber == model.value.phoneNumber) ==
                          null) {
                    models.value.add(model.value);
                    _refreshListView();
                    showToast(Strings.newContactAdded);
                    if (!isEditorOpen.value) {
                      mdiController.closeWindow(mdiEditorId);
                    }

                    _clearEditor();
                  } else {
                    showToast(Strings.alreadyExistsPhoneNumberInList);
                  }
                });
          }
        } else {
          showToast(Strings.personalInfoIsnotSavedPleaseSave);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
  }

  void onCancelButtonPressed() {
    if (model.value.id == null) {
      _clearEditor();
    } else {
      _loadInfo();
    }
  }

  Future<void> _loadInfo() async {
    models.value.clear();
    if (contactController.model.value.id != null) {
      await _relativeContactsService
          .findAllByContactId(contactController.model.value.id!)
          .then((values) {
        if (values != null) {
          models.value.clear();
          models.value.addAll(values);
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      });
    }
    _refreshListView();
  }

  void _refreshListView() {
    contactsWidgetList.value.clear();
    contactsWidgetList(models.value
        .map((item) =>  ContactTile(
              fullName: item.nameAndFamily,
              mobileNumber: item.phoneNumber,
              homeAddress: item.homeAddress,
              workAddress: item.workAddress,
              description: item.description,
              editContact: () => editRelativeContact(item),
              deleteContact: () => deleteRelativeContact(item),
            ))
        .toList());
  }

  void _catchFormData() {
    model(RelativeContactsInfoModel(
      nameAndFamily: nameAndFamilyController.text.trim(),
      phoneNumber: mobileNumberController.text.trim(),
      workAddress: workAddressController.text.isNotEmpty
          ? workAddressController.text.trim()
          : null,
      homeAddress: homeAddressController.text.isNotEmpty
          ? homeAddressController.text.trim()
          : null,
      description: descriptionController.text.isNotEmpty
          ? descriptionController.text.trim()
          : null,
    ));
  }

  void _clearEditor() {
    model(RelativeContactsInfoModel.init());
    nameAndFamilyController.clear();
    mobileNumberController.clear();
    workAddressController.clear();
    homeAddressController.clear();
    descriptionController.clear();
  }

  void editRelativeContact(var item) {
    if (contactController.readOnly.isFalse) {
      model(item);
    } else {
      showToast(Strings.atFirstEnableEditing);
    }
  }

  void deleteRelativeContact(var item) {
    if (contactController.readOnly.isFalse) {
      DialogHelper.showMessageBox(
          title: Strings.deleteInfo,
          dialogButtons: DialogButtons.YES_NO,
          dialogType: DialogType.INFO,
          message: Strings.deleteInfoMessage,
          onYesPressed: () async {
            if (item.id != null) {
              await _relativeContactsService.delete(item).then((value) {
                _loadInfo();
              }).onError((error, stackTrace) => throw FailureException(
                  "Can not delete relative contact with error :$error $stackTrace"));
            } else {
              models.value.remove(item);
              _refreshListView();
            }
          });
    } else {
      showToast(Strings.atFirstEnableEditing);
    }
  }

  Future<void> saveRelativeContacts() async {
    List<RelativeContactsInfoModel> contacts = List.empty(growable: true);
    contacts.clear();
    contacts.addAll(models.value);
    for (var item in contacts) {
      if (item.id == null) {
        item = item.copyWith(contactInfo: contactController.model.value);
        await _relativeContactsService.save(item).then((value) {
          return value;
        }).catchError((onError) {
          DialogHelper.showCrashReport(onError.toString());
        });
      }
    }

    _loadInfo();
  }

  void onCheckBoxChange(bool? val) {
    isEditorOpen(val!);
  }
}
