part of services;

abstract class ContactInfoService extends Service<int, ContactInfoModel> {
  Future<int> saveWithParentId(ContactInfoModel model,
      {required int personalInfoId});
  Future<ContactInfoModel?> findByPersonalInfoId(int personalInfoId);
}

class ContactInfoServiceImpl implements ContactInfoService {
  final ContactInfoDAO dao;

  ContactInfoServiceImpl(this.dao);
  @override
  Future<bool> delete(ContactInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ContactInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ContactInfoModel?> findById(int id) async {
    return await dao.findById(id).then((value) {
      return value != null ? ContactInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding further info by id with error: $stackTrace"));
  }

  @override
  Future<int> save(ContactInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(ContactInfoModel model) async {
    return await dao.doUpdate(model.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "Updating contact info failed, error $stackTrace"));
  }

  @override
  Future<ContactInfoModel?> findByPersonalInfoId(int personalInfoId) async {
    return await dao
        .findById(await Get.find<PersonalInfoService>()
            .findContactInfoIdById(personalInfoId))
        .then((value) {
      return value != null ? ContactInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding contact info by personal id with error: ${stackTrace.toString()}"));
  }

  @override
  Future<int> saveWithParentId(ContactInfoModel model,
      {required int personalInfoId}) async {
    int res = 0;
    await dao.doInsert(model.toJson(), personalInfoId).then((value) {
      res = value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "Contact info can not save see error $stackTrace"));
    return res;
  }
}
