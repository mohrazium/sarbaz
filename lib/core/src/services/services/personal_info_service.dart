part of services;

abstract class PersonalInfoService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>?> findByKeyword(dynamic keyword);
  Future<bool> existsByNationalIdentity(String nationalIdentity);
  Future<PersonalInfoModel?> findByNationalCode(String nationalIdentity);
}

class PersonalInfoServiceImpl implements PersonalInfoService {
  final PersonalInfoDAO _personalInfoDAO;

  PersonalInfoServiceImpl(this._personalInfoDAO);

  @override
  Future<List<PersonalInfoModel>?> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<void> save(PersonalInfoModel e) async {
    var res = await _personalInfoDAO.doInsert(e.toJson());
    if (res != null) {
      logger.log(message: "person is saved");
    }
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    List<PersonalInfoModel> models = List.empty(growable: true);
    final personsList = await _personalInfoDAO.findAll();
    for (var person in personsList) {
      models.add(PersonalInfoModel.fromJson(
          person.toJson()));
    }
    return models;
  }

  @override
  Future<PersonalInfoModel> findById(int id) async {
    return await _personalInfoDAO.findById(id).then((value) {
      return value != null
          ? PersonalInfoModel.fromJson(
              value.toJson())
          : throw FailureException(
              exception: ExceptionsType.NOT_FOUND, message: 'No person found!');
    });
  }

  @override
  Future<void> update(PersonalInfoModel e) async {
    await _personalInfoDAO.doUpdate(e.toJson());
  }

  @override
  Future<bool> delete(PersonalInfoModel e) async {
    late bool result = false;
    try {
      _personalInfoDAO.doDelete(e.toJson()).then((value) => result);
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
  Future<PersonalInfoModel?> findByNationalCode(String nationalCode) async {
    return await _personalInfoDAO
        .findByNationalCode(nationalCode)
        .then((value) {
      return value != null
          ? PersonalInfoModel.fromJson(value.toJson())
          : throw FailureException(
              exception: ExceptionsType.NOT_FOUND, message: 'No person found!');
    });
  }
}
