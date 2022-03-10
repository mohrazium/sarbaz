part of services;

abstract class OvertimeService extends Service<int, OvertimeModel> {}

class OvertimeServiceImpl implements OvertimeService {
   final OvertimeDAO overtimeDAO;

  OvertimeServiceImpl(this.overtimeDAO);

  @override
  Future<bool> delete(OvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<OvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<OvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(OvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(OvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
