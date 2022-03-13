part of controllers;

class SoldiersController extends GetxController {
  late final PersonalInfoService _personalInfoService;

  Rx<List<PersonalInfoModel>> personnelList = Rx(<PersonalInfoModel>[]);

  @override
  Future<void> onInit() async {
    super.onInit();
    _personalInfoService = Get.find<PersonalInfoService>();
    loadAllPersons();
  }

  void loadAllPersons() async {
    final persons = await _personalInfoService.findAll();
    if (persons != null) {
      personnelList.value.clear();
      personnelList.value.addAll(persons);
    }
  }
}
