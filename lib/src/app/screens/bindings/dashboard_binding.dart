import 'package:get/get.dart';
import 'package:sarbaz/src/app/screens/controllers/controllers.dart';

class ApplicationControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(DashboardController());
    Get.put(SoldierEditorController());
    Get.put(UtilityController());
    Get.put(SoldiersController());
  }
}
