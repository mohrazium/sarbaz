part of services;

abstract class EducationalInfoService
    extends Service<int, EducationalInfoModel> {}

class EducationalInfoServiceImpl implements EducationalInfoService {
  late final EducationalInfoDAO educationalInfoDAO;

  EducationalInfoServiceImpl() {
    educationalInfoDAO =
        Get.find<SoldierDatabaseHelper>().instance.educationalInfoDAO;
  }

  @override
  Future<bool> delete(EducationalInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<EducationalInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<EducationalInfoModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(EducationalInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(EducationalInfoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
