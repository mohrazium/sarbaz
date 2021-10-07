import 'package:get/get.dart';
import 'package:sarbaz/src/app/controllers/controllers.dart';
import 'package:sarbaz/src/app/screens/dialogs/dialogs.dart';

class SoldierBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(SoldierEditorController());
    Get.put(UtilityController());
  }
}
