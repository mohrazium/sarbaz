part of bindings;

class ApplicationControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(BridgeController());
    Get.put(DashboardController());
    Get.put(SoldierEditorController());
    Get.put(SoldiersController());
    Get.put(PersonalInfoController());
    Get.put(FurtherInfoController());
    Get.put(ContactInfoController());
    Get.put(RelativeContactsInfoController());
    Get.put(EducationalInfoController());
    Get.put(SoldierController());
  }
}
