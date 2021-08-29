import 'package:get/get.dart';
import 'package:sarbaz/src/app/controllers/controllers.dart';

class SoldierBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(SoldierController());
  }
}
