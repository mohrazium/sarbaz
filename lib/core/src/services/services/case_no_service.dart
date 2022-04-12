part of services;

abstract class CaseNoService extends Service<int, CaseNoModel> {
  Future<void> saveAll(int count);
}

class CaseNoServiceImpl implements CaseNoService {
  final CaseNoDAO dao;

  CaseNoServiceImpl(this.dao);

  @override
  Future<bool> delete(CaseNoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<CaseNoModel>?> findAll() async {
    List<CaseNoModel> caseNoList = List.empty(growable: true);
    return await dao.findAll().then((values) {
      for (var item in values) {
        caseNoList.add(CaseNoModel.fromJson(item.toJson()));
      }
      return caseNoList;
    }).onError((error, stackTrace) =>
        throw FailureException("Can load all case no, $stackTrace"));
  }

  @override
  Future<CaseNoModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(CaseNoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(CaseNoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> saveAll(int count) async {
    await dao.doInsertAll(count).onError((error, stackTrace) =>
        throw FailureException(
            "Cant insert all case nos, something goes wrong! $stackTrace "));
  }
}
