part of controllers;

class SoldiersController extends GetxController {
  RxList<PersonalInfoModel> personalInfos = <PersonalInfoModel>[].obs;
  late PersonalInfoService personalInfoService;
  @override
  Future<void> onInit() async {
    personalInfoService = Get.find<PersonalInfoService>();
    // personalInfos.value = (await loadAll())!;
   await fakeList();
    print("soldiers controller called");
    super.onInit();
  }

  Future<List<PersonalInfoModel>?> loadAll() {
    return personalInfoService.findAll();
  }

  fakeList() async {
    final _random = Random();

    for (var i = 0; i < nameList.length; i++) {
      Future.delayed(const Duration(milliseconds: 1000));
      personalInfos.add(PersonalInfoModel(
          nationalCode: nationalList[_random.nextInt(nameList.length)],
          firstName: nameList[_random.nextInt(nameList.length)],
          lastName: familyList[_random.nextInt(nameList.length)],
          fatherName: nameList[_random.nextInt(nameList.length)],
          contactInfo: ContactInfoModel(
            mobileNumber: numberList[_random.nextInt(nameList.length)],
            address: "address",
            distance: i == 0 ? 10 : 5 * i,
          ),
          soldier: SoldierModel(
            personnelCode: personeList[_random.nextInt(nameList.length)],
            latestStatus: statusList[_random.nextInt(statusList.length)],
          )));
    }
  }

  var familyList = [
    "رجایی",
    "رحماندوست",
    "رحمانیان",
    "رستمی",
    "رسولی",
    "رفیعی",
    "رنجبر",
    "رجایی",
    "رحماندوست",
    "رحمانیان",
    "رستمی",
    "رسولی",
    "رفیعی",
    "رنجبر",
  ];
  
  var statusList = [
    "مرخصی",
    "غیبت",
    "استعلاجی",
    "ماموریت",
    "حاضر به خدمت",
  ];
  var nameList = [
    "حسن",
    "محسن",
    "پژمان",
    "مهدی",
    "احمد",
    "محمد",
    "علی",
    "حسن",
    "محسن",
    "پژمان",
    "مهدی",
    "احمد",
    "محمد",
    "علی",
  ];
  var fatherList = [
    "رجب",
    "حسین",
    "غلامحسین",
    "اکبر",
    "قاسم",
    "یدالله",
    "محمد علی" "رجب",
    "حسین",
    "غلامحسین",
    "اکبر",
    "قاسم",
    "یدالله",
    "محمد علی"
  ];

  var nationalList = [
    "3040526525",
    "3060526255",
    "3040655225",
    "3500526525",
    "3040625525",
    "3050565525",
    "3052466525",
    "3040526525",
    "3060526255",
    "3040655225",
    "3500526525",
    "3040625525",
    "3050565525",
    "3052466525"
  ];

  var personeList = [
    "6525",
    "6255",
    "5225",
    "6525",
    "5525",
    "5525",
    "6525",
    "6525",
    "6255",
    "5225",
    "6525",
    "5525",
    "5525",
    "6525",
  ];
  var numberList = [
    "09132526525",
    "09132526255",
    "09132525225",
    "09132526525",
    "09132525525",
    "09132525525",
    "09132526525",
    "09132526525",
    "09132526255",
    "09132525225",
    "09132526525",
    "09132525525",
    "09132525525",
    "09132526525",
  ];
}
