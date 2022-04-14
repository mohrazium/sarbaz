part of services;

abstract class CaseNoService extends Service<int, CaseNoModel> {
  Future<void> saveAll(int count);
}

class CaseNoServiceImpl implements CaseNoService {
  final CaseNoDAO _dao;

  CaseNoServiceImpl(this._dao);

  @override
  Future<bool> delete(CaseNoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<CaseNoModel>?> findAll() async {
    List<CaseNoModel> caseNoList = List.empty(growable: true);
    return await _dao.findAll().then((values) {
      for (var item in values) {
        caseNoList.add(CaseNoModel.fromJson(item.toJson()));
      }
      return caseNoList;
    }).onError((error, stackTrace) =>
        throw FailureException("Can load all case no, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<CaseNoModel?> findById(int id) async {
    return await _dao.findById(id).then((value) {
      return value != null ? CaseNoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "Finding case no by id field, see the error :\n $error \n $stackTrace"));
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
    await _dao.doInsertAll(count).onError((error, stackTrace) =>
        throw FailureException(
            "Cant insert all case nos, something goes wrong!, see the error :\n $error \n $stackTrace"));
  }
}
