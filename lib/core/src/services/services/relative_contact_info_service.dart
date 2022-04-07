part of services;

abstract class RelativeContactsInfoService
    extends Service<int, RelativeContactsInfoModel> {
  Future<List<RelativeContactsInfoModel>?> findAllByContactId(int contactId);
}

class RelativeContactsInfoServiceImpl implements RelativeContactsInfoService {
  final RelativeContactsInfoDAO dao;

  RelativeContactsInfoServiceImpl(this.dao);

  @override
  Future<bool> delete(RelativeContactsInfoModel model) async {
   return await dao.doDelete(model.toJson()).then((value) => value==1).onError(
        (error, stackTrace) => throw FailureException(
            "deleting relative contact info failed, with error $stackTrace"));
  }

  @override
  Future<List<RelativeContactsInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<RelativeContactsInfoModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(RelativeContactsInfoModel model) async {
    if (model.contactInfo != null) {
      return await dao
          .doInsert(model.toJson(), model.contactInfo!.id!)
          .then((value) {
        logger.log(
            message:
                "Relative contact saved by contact id, ${model.phoneNumber} and result is $value");
        return value.id ?? 0;
      }).onError((error, stackTrace) => throw FailureException(
              "Relative contact can not save by contact id. $stackTrace"));
    } else {
      throw FailureException("Contact info is null in saving relatives");
    }
  }

  @override
  Future<bool> update(RelativeContactsInfoModel model) async {
     return await dao.doUpdate(model.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "updating relative contact info failed, with error $stackTrace"));
  }

  @override
  Future<List<RelativeContactsInfoModel>?> findAllByContactId(
      int contactId) async {
    List<RelativeContactsInfoModel> models = [];
    return await dao.findAllByContactId(contactId).then((values) {
      if (values.isNotEmpty) {
        for (var item in values) {
          models.add(RelativeContactsInfoModel.fromJson(item.toJson()));
        }
        return models;
      }
    }).onError((error, stackTrace) => throw FailureException(
        " Can not retrieve relative contact from id : $contactId with error : $stackTrace "));
  }
}
