part of services;

abstract class Overtime extends Service<int, OperationalServiceDeficitRecordModel> {
 
}

class OvertimeImpl implements Overtime {
  late final OperationalServiceDeficitRecordDAO operationalServiceDeficitRecordDAO;

  OvertimeImpl() {
    operationalServiceDeficitRecordDAO =
        Get.find<SoldierDatabaseHelper>().instance.operationalServiceDeficitRecordDAO;
  }

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
  Future<void> save(OperationalServiceDeficitRecordModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(OperationalServiceDeficitRecordModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
