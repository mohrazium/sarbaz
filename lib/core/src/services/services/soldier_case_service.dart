part of services;

abstract class SoldierCaseService extends Service<int, SoldierCaseModel> {}

class SoldierCaseServiceImpl implements SoldierCaseService {
   final SoldierCaseDAO soldierCaseDAO;

  SoldierCaseServiceImpl(this.soldierCaseDAO);

  @override
  Future<bool> delete(SoldierCaseModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<SoldierCaseModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<SoldierCaseModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(SoldierCaseModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(SoldierCaseModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
