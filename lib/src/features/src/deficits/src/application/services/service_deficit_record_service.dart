part of sarbaz.deficits.application;

abstract class ServiceDeficitRecordService
    extends Service<int, ServiceDeficitRecordModel> {}

class ServiceDeficitRecordServiceImpl implements ServiceDeficitRecordService {
   final ServiceDeficitRecordDAO serviceDeficitRecordDAO;

  ServiceDeficitRecordServiceImpl(this.serviceDeficitRecordDAO);

  @override
  Future<bool> delete(ServiceDeficitRecordModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ServiceDeficitRecordModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ServiceDeficitRecordModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(ServiceDeficitRecordModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(ServiceDeficitRecordModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
