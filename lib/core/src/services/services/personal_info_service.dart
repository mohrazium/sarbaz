part of services;

abstract class PersonalInfoService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>?> findByKeyword(dynamic keyword);
  Future<PersonalInfoModel?> findByNationalCode(String nationalIdentity);
  Future<int> findFurtherInfoIdById(int personalId);
  Future<int> findContactInfoIdById(int personalId);
}

class PersonalInfoServiceImpl implements PersonalInfoService {
  final PersonalInfoDAO dao;

  PersonalInfoServiceImpl(this.dao);

  @override
  Future<List<PersonalInfoModel>?> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<int> save(PersonalInfoModel e) async {
    return await dao.doInsert(e.toJson()).then((value) {
      logger.log(message: "person is saved");
      return value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "saving personal info failed with error $stackTrace"));
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    List<PersonalInfoModel> models = List.empty(growable: true);
    PersonalInfoModel personalInfoModel = PersonalInfoModel.init();
    return await dao.findAll().then((personsList) {
      for (var person in personsList) {
        personalInfoModel = PersonalInfoModel.fromJson(
          person.toJson(),
        );

        // if (person.furtherInfo != null) {
        //   Get.find<FurtherInfoService>()
        //       .findById(person.furtherInfo!)
        //       .then((value) {
        //     personalInfoModel = personalInfoModel.copyWith(furtherInfo: value);
        //   });
        //   print(personalInfoModel.furtherInfo);
        // }

        if (person.contactInfo != null) {
          Get.find<ContactInfoService>()
              .findById(person.contactInfo!)
              .then((value) {
            personalInfoModel = personalInfoModel.copyWith(contactInfo: value);
          });
        }
        models.add(personalInfoModel);
      }
      return models;
    }).onError((error, stackTrace) => throw FailureException(
        "loading all personal infos, failed with error $stackTrace"));
  }

  @override
  Future<PersonalInfoModel?> findById(int id) async {
    return await dao.findById(id).then((value) {
      return value != null ? PersonalInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        'An error happened on find by id in $stackTrace.',
        exception: ExceptionType.NOT_FOUND));
  }

  @override
  Future<bool> update(PersonalInfoModel e) async {
    return await dao.doUpdate(e.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "updating personal info failed, with error $stackTrace"));
  }

  @override
  Future<bool> delete(PersonalInfoModel e) async {
    return await dao.doDelete(e.toJson()).then((value) => value>=1).onError(
        (error, stackTrace) => throw FailureException(
            "deleting personal info failed, with error $stackTrace"));
  }

  @override
  Future<PersonalInfoModel?> findByNationalCode(String nationalCode) async {
    return await dao.findByNationalCode(nationalCode).then((value) {
      return value != null
          ? PersonalInfoModel.fromJson(value.toJson())
          : throw FailureException("Personal info not found by $nationalCode");
    }).onError((error, stackTrace) => throw FailureException(
        'An error happened on find by national code with error :  $stackTrace.',
        exception: ExceptionType.NOT_FOUND));
  }

  @override
  Future<int> findFurtherInfoIdById(int personalId) {
    return dao.findById(personalId).then((value) {
      return value != null && value.furtherInfo != null
          ? value.furtherInfo!
          : 0;
    }).onError((error, stackTrace) =>
        throw FailureException("personal info not found by id. $stackTrace"));
  }

  @override
  Future<int> findContactInfoIdById(int personalId) {
    return dao.findById(personalId).then((value) {
      return value != null && value.contactInfo != null
          ? value.contactInfo!
          : 0;
    }).onError((error, stackTrace) =>
        throw FailureException("personal info not found by id. $stackTrace"));
  }
}
