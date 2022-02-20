part of services;
abstract class PersonalInfoService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>?> findByKeyword(dynamic keyword);
  Future<bool> existsByNationalIdentity(String nationalIdentity);
  Future<PersonalInfoModel?> findByNationalIdentity(String nationalIdentity);
}

class PersonalInfoServiceImpl implements PersonalInfoService {
  late final PersonalInfoDAO personalInfoDAO;

  PersonalInfoServiceImpl() {
    personalInfoDAO =
        Get.find<SoldierDatabaseHelper>().instance.personalInfoDAO;
  }

  @override
  Future<List<PersonalInfoModel>?> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<void> save(PersonalInfoModel e) async {
    await personalInfoDAO.doInsert(e.toJson());
    ;
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    List<PersonalInfoModel> models = List.empty(growable: true);
    final personanlInfos = await personalInfoDAO.findAll();
    for (var personanlInfo in personanlInfos) {
      models.add(PersonalInfoModel.fromJson(personanlInfo.toJson()));
    }
    return models;
  }

  @override
  Future<PersonalInfoModel> findById(int id) async {
    // late PersonalInfoModel model;
    // await database.instance().then((db) async {
    //   await db.personalInfoDAO
    //       .findById(id)
    //       .then((value) => model = PersonalInfoModel.fromTable(value!));
    // });
    return Future.value(null);
  }

  @override
  Future<void> update(PersonalInfoModel e) async {
    await personalInfoDAO.doUpdate(e.toJson());
  }

  @override
  Future<bool> delete(PersonalInfoModel e) async {
    late bool result = false;
    try {
      personalInfoDAO.doDelete(e.toJson()).then((value) => result);
      return Future.value(result);
    } catch (e) {
      return Future.value(result);
    }
  }

  @override
  Future<bool> existsByNationalIdentity(String nationalIdentity) async {
    // bool result = false;
    // try {
    //  personalInfoDAO
    //       .existsByNationalIdentity(nationalIdentity)
    //       .then((value) => result = value!));
    //   ;
    //   return Future.value(result);
    // } catch (e) {
    //   return Future.value(result);
    // }
    return Future.value(null);
  }

  @override
  Future<PersonalInfoModel?> findByNationalIdentity(
      String nationalIdentity) async {
    // late PersonalInfoModel model;
    // try {
    //   await database.instance().then((db) async => db.personalInfoDAO
    //       .findByNationalIdentity(nationalIdentity)
    //       .then((value) => model = PersonalInfoModel.fromTable(value!)));
    //   return Future.value(model);
    // } catch (e) {
    //   throw FailureException(exception: e, message: "شخص مورد نظر یافت نشد!");
    // }
    return Future.value(null);
  }
}
