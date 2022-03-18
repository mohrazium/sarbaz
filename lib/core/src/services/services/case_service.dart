part of services;

abstract class CaseService extends Service<int, CaseModel> {}

class CaseServiceImpl implements CaseService {
  final CaseDAO caseDAO;

  CaseServiceImpl(this.caseDAO);

  @override
  Future<bool> delete(CaseModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<CaseModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<CaseModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(CaseModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(CaseModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
