part of services;
abstract class VaccationsService extends Service<int, VaccationsModel> {
  
}

class VaccationsServiceImpl implements VaccationsService {
  late final VaccationsDAO vaccationsDAO;

  VaccationsServiceImpl() {
    vaccationsDAO =
        Get.find<SoldierDatabaseHelper>().instance.vaccationsDAO;
  }

  @override
  Future<bool> delete(VaccationsModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<VaccationsModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<VaccationsModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(VaccationsModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(VaccationsModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
