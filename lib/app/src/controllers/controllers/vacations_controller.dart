part of controllers;

class VacationsController extends GetxController {
  final VacationsService _vacationsService;
  final BridgeController _bridgeController;

  late final Rx<VacationsModel> model = Rx(VacationsModel.init());

  VacationsController(this._vacationsService, this._bridgeController);

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

  Future<void> init() async {
    model.value =
        await _vacationsService.findByPersonalInfoId(_bridgeController.personalInfoId.value).catchError((onError) {
              DialogHelper.showCrashReport(onError.toString());
            }) ??
            VacationsModel.init();
  }
}
