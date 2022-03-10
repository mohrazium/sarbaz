part of services;

abstract class HealthStatusService extends Service<int, HealthStatusModel> {}

class HealthStatusServiceImpl implements HealthStatusService {
  final HealthStatusDAO healthStatusDAO;

  HealthStatusServiceImpl(this.healthStatusDAO);
  @override
  Future<bool> delete(HealthStatusModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<HealthStatusModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<HealthStatusModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(HealthStatusModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(HealthStatusModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
