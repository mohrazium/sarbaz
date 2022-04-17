part of services;

abstract class PersonalInfoService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>?> findByKeyword(dynamic keyword);
  Future<PersonalInfoModel?> findByNationalCode(String nationalIdentity);
  Future<int> findFurtherInfoIdById(int personalId);
  Future<int> findContactInfoIdById(int personalId);
  Future<int> findEducationalInfoIdById(int personalId);
  Future<int> findSoldierIdById(int personalId);
}

class PersonalInfoServiceImpl implements PersonalInfoService {
  final PersonalInfoDAO _dao;

  PersonalInfoServiceImpl(this._dao);

  @override
  Future<List<PersonalInfoModel>?> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<int> save(PersonalInfoModel e) async {
    return await _dao.doInsert(e.toJson()).then((value) {
      logger.info("person is saved");
      return value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "saving personal info failed with error $stackTrace"));
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    List<PersonalInfoModel> models = List.empty(growable: true);
    PersonalInfoModel personalInfoModel = PersonalInfoModel.init();
    ContactInfoModel? contactInfoModel = ContactInfoModel.init();
    SoldierModel? soldierModel = SoldierModel.init();
    await _dao.findAll().then((dataList) async {
      models.clear();
      for (var data in dataList) {
        personalInfoModel = PersonalInfoModel.fromJson(
          data.toJson(),
        );

        if (data.contactInfo != null) {
          contactInfoModel =
              await Get.find<ContactInfoService>().findById(data.contactInfo!);
          personalInfoModel =
              personalInfoModel.copyWith(contactInfo: contactInfoModel);
        }

        if (data.soldier != null) {
          soldierModel =
              await Get.find<SoldierService>().findById(data.soldier!);
          personalInfoModel = personalInfoModel.copyWith(soldier: soldierModel);
        }
        models.add(personalInfoModel);
      }
    }).onError((error, stackTrace) => throw FailureException(
        "loading all personal infos, failed with error $stackTrace"));
    return models;
  }

  @override
  Future<PersonalInfoModel?> findById(int id) async {
    return await _dao.findById(id).then((value) {
      return value != null ? PersonalInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        'An error happened on find by id in $stackTrace.',
        exception: ExceptionType.NOT_FOUND));
  }

  @override
  Future<bool> update(PersonalInfoModel e) async {
    return await _dao.doUpdate(e.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "updating personal info failed, with error $stackTrace"));
  }

  @override
  Future<bool> delete(PersonalInfoModel e) async {
    return await _dao.doDelete(e.toJson()).then((value) => value >= 1).onError(
        (error, stackTrace) => throw FailureException(
            "deleting personal info failed, with error $stackTrace"));
  }

  @override
  Future<PersonalInfoModel?> findByNationalCode(String nationalCode) async {
    return await _dao.findByNationalCode(nationalCode).then((value) {
      return value != null ? PersonalInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        'An error happened on find by national code, see the error :\n $error \n $stackTrace',
        exception: ExceptionType.NOT_FOUND));
  }

  @override
  Future<int> findFurtherInfoIdById(int personalId) {
    return _dao.findById(personalId).then((value) {
      return value != null && value.furtherInfo != null
          ? value.furtherInfo!
          : 0;
    }).onError((error, stackTrace) => throw FailureException(
        "personal info not found by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> findContactInfoIdById(int personalId) {
    return _dao.findById(personalId).then((value) {
      return value != null && value.contactInfo != null
          ? value.contactInfo!
          : 0;
    }).onError((error, stackTrace) => throw FailureException(
        "personal info not found by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> findEducationalInfoIdById(int personalId) {
    return _dao.findById(personalId).then((value) {
      return value != null && value.educationalInfo != null
          ? value.educationalInfo!
          : 0;
    }).onError((error, stackTrace) => throw FailureException(
        "personal info not found by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> findSoldierIdById(int personalId) {
    return _dao.findById(personalId).then((value) {
      return value != null && value.soldier != null ? value.soldier! : 0;
    }).onError((error, stackTrace) => throw FailureException(
        "personal info not found by id, see the error :\n $error \n $stackTrace"));
  }
}
