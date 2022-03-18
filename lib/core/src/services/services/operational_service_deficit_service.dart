part of services;

abstract class OperationalServiceDeficitRecordService
    extends Service<int, OperationalServiceDeficitRecordModel> {}

class OperationalServiceDeficitRecordServiceImpl
    implements OperationalServiceDeficitRecordService {
   final OperationalServiceDeficitRecordDAO
      operationalServiceDeficitRecordDAO;

  OperationalServiceDeficitRecordServiceImpl(this.operationalServiceDeficitRecordDAO);

  @override
  Future<bool> delete(OperationalServiceDeficitRecordModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<OperationalServiceDeficitRecordModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<OperationalServiceDeficitRecordModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(OperationalServiceDeficitRecordModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(OperationalServiceDeficitRecordModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
