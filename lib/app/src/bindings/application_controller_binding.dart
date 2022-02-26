part of bindings;

class ApplicationControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(DashboardController());
    Get.put(SoldierEditorController());
    Get.put(SoldiersController());
  }
}
