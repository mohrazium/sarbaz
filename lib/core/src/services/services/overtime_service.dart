part of services;

abstract class OvertimeService extends Service<int, OvertimeModel> {}

class OvertimeServiceImpl implements OvertimeService {
   final OvertimeDAO dao;

  OvertimeServiceImpl(this.dao);

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
  Future<int> save(OvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(OvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
