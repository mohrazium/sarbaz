part of bindings;

class ApplicationControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(DashboardController());
    Get.put(SoldierCaseEditorController());
    Get.put(SoldiersController());
    Get.put(PersonalInfoController());
  }
}
