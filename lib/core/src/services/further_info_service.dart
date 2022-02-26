part of services;

abstract class FurtherInfoService extends Service<int, FurtherInfoModel> {}

class FurtherInfoServiceImpl implements FurtherInfoService {
  late final FurtherInfoDAO furtherInfoDAO;

  FurtherInfoServiceImpl() {
    furtherInfoDAO = Get.find<SoldierDatabaseHelper>().instance.furtherInfoDAO;
  }

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
  Future<FurtherInfoModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(FurtherInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(FurtherInfoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
