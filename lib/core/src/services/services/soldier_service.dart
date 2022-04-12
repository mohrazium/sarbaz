part of services;

abstract class SoldierService extends Service<int, SoldierModel> {
  Future<int> saveByPersonalInfoId(SoldierModel model,
      {required int personalInfoId});

  Future<SoldierModel?> findByPersonalInfoId(int personalInfoId);
}

class SoldierServiceImpl implements SoldierService {
  final SoldierDAO soldierDAO;

  SoldierServiceImpl(this.soldierDAO);

  @override
  Future<bool> delete(SoldierModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<SoldierModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<SoldierModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(SoldierModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(SoldierModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<int> saveByPersonalInfoId(SoldierModel model,
      {required int personalInfoId}) {
    // TODO: implement saveByPersonalInfoId
    throw UnimplementedError();
  }

  @override
  Future<SoldierModel?> findByPersonalInfoId(int personalInfoId) {
    // TODO: implement findByPersonalInfoId
    throw UnimplementedError();
  }
}
