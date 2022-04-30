part of controllers;

class VacationsController extends GetxController {
  
  late final Rx<VacationsModel> model = Rx(VacationsModel.init());

  @override
  void onInit() {
    super.onInit();
    model.value = VacationsModel.init();
    logger.info("$runtimeType has been initialized.");
  }

  @override
  void onReady() {
    super.onReady();

    logger.info("$runtimeType has been ready.");
  }

  @override
  void onClose() {
    logger.info("$runtimeType has been closed.");
    super.onClose();
  }
}
