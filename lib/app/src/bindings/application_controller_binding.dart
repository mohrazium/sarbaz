part of bindings;

class ApplicationControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(BridgeController());
    Get.put(DashboardController());
    Get.put(SoldierCaseEditorController());
    Get.put(SoldiersController());
    Get.put(PersonalInfoController());
    Get.put(FurtherInfoController());
    Get.put(ContactInfoController());
    Get.put(RelativeContactsInfoController());

  }
}
