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
    FurtherInfoModel model = FurtherInfoModel.init();
    await Get.find<PersonalInfoService>().findById(personalInfoId).then((personalInfoValue) async {
      if (personalInfoValue != null) {
        await furtherInfoDAO.findById(personalInfoValue.id!).then((value) {
          if (value != null) {
            model = FurtherInfoModel.fromJson(value.toJson());
          } else {
            //throw FailureException(message: "Further info not found by personal id.");
          }
        });
      } else {
        throw FailureException(
            message: "Personal info not found in further info service");
      }
    });
    return model;
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
