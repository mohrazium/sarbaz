part of services;

abstract class UnitPropertiesService extends Service<int, UnitPropertiesModel> {
 
}

class UnitPropertiesServiceImpl implements UnitPropertiesService {
  late final UnitPropertiesDAO unitPropertiesDAO;

  UnitPropertiesServiceImpl() {
    unitPropertiesDAO =
        Get.find<SoldierDatabaseHelper>().instance.unitPropertiesDAO;
  }

  @override
  Future<bool> delete(UnitPropertiesModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UnitPropertiesModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<UnitPropertiesModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(UnitPropertiesModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(UnitPropertiesModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
