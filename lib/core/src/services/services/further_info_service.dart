part of services;

abstract class FurtherInfoService extends Service<int, FurtherInfoModel> {
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId});
  Future<FurtherInfoModel?> findByPersonalInfoId(int personalInfoId);
}

class FurtherInfoServiceImpl implements FurtherInfoService {
  final FurtherInfoDAO furtherInfoDAO;
  final PersonalInfoService personalInfoService =
      Get.find<PersonalInfoService>();

  FurtherInfoServiceImpl(this.furtherInfoDAO);

  @override
  Future<bool> delete(FurtherInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<FurtherInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<FurtherInfoModel?> findById(int id) async {
    return await furtherInfoDAO.findById(id).then((value) {
      return value != null ? FurtherInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding further info by id with error: $stackTrace"));
  }

  @override
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId}) async {
    int res = 0;
    await furtherInfoDAO.doInsert(model.toJson(), personalInfoId).then((value) {
      logger.log(message: "Further info was saved.");
      res = value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "Further info can not save see error $stackTrace"));
    return res;
  }

  @override
  Future<bool> update(FurtherInfoModel model) async {
    return await furtherInfoDAO
        .doUpdate(model.toJson())
        .then((value) => value)
        .onError((error, stackTrace) => throw FailureException(
            "Updating further info failed, error $stackTrace"));
  }

  @override
  Future<int> save(FurtherInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<FurtherInfoModel?> findByPersonalInfoId(int personalInfoId) async {
    return await furtherInfoDAO
        .findById(
            await personalInfoService.findFurtherInfoIdById(personalInfoId))
        .then((value) {
      return value != null ? FurtherInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding further info by personal id with error: ${error.runtimeType}"));
  }
}
