part of services;

abstract class FurtherInfoService extends Service<int, FurtherInfoModel> {
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId});
}

class FurtherInfoServiceImpl implements FurtherInfoService {
  final FurtherInfoDAO furtherInfoDAO;

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
  Future<FurtherInfoModel?> findById(int personalInfoId) async {
    return await Get.find<PersonalInfoService>().findById(personalInfoId).then(
        (personalInfoValue) async {
      return personalInfoValue != null
          ? await furtherInfoDAO.findById(personalInfoValue.id!).then((value) {
              return value != null
                  ? FurtherInfoModel.fromJson(value.toJson())
                  : null;
            }).onError((error, stackTrace) => throw FailureException(
              "An error happened in finding further info by personal id with error: ${error.runtimeType}"))
          : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding personal info by personal id in $runtimeType with error : ${error.runtimeType}"));
  }

  @override
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId}) async {
    int res = 0;
    await furtherInfoDAO.doInsert(model.toJson(), personalInfoId).then((value) {
      logger.log(message: "Further info was saved.");
      res = value.id ?? 0;
    });
    return res;
  }

  @override
  Future<bool> update(FurtherInfoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<int> save(FurtherInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
