import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';

import '../../application.dart';
import '../../domain.dart';

class VacationsController extends GetxController {
  final VacationsService _vacationsService;
  final BaseController _baseController;

  late final Rx<VacationsModel> model = Rx(VacationsModel.init());

  VacationsController(this._vacationsService, this._baseController);

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
        await _vacationsService.findByPersonalInfoId(_baseController.personalInfoId.value).catchError((onError) {
              DialogHelper.showCrashReport(onError.toString());
            }) ??
            VacationsModel.init();
  }
}
