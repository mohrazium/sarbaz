part of services;
abstract class ServiceDeficitRecordService extends Service<int, ServiceDeficitRecordModel> {
 
}

class ServiceDeficitRecordServiceImpl implements ServiceDeficitRecordService {
  late final ServiceDeficitRecordDAO serviceDeficitRecordDAO;

  ServiceDeficitRecordServiceImpl() {
    serviceDeficitRecordDAO =
        Get.find<SoldierDatabaseHelper>().instance.serviceDeficitRecordDAO;
  }

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
  Future<void> save(ServiceDeficitRecordModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(ServiceDeficitRecordModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
