part of sarbaz.deficits.application;

abstract class ServiceDeficitService extends Service<int, ServiceDeficitModel> {
}

class ServiceDeficitServiceImpl implements ServiceDeficitService {
   final ServiceDeficitDAO serviceDeficitDAO;

  ServiceDeficitServiceImpl(this.serviceDeficitDAO);

  @override
  Future<bool> delete(ServiceDeficitModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ServiceDeficitModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ServiceDeficitModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(ServiceDeficitModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(ServiceDeficitModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
