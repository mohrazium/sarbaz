part of services;

abstract class SoldierService extends Service<int, SoldierModel> {
  Future<int> saveByPersonalInfoId(SoldierModel model,
      {required int personalInfoId});

  Future<SoldierModel?> findByPersonalInfoId(int personalInfoId);
}

class SoldierServiceImpl implements SoldierService {
  final SoldierDAO _dao;
  final PersonalInfoService _personalInfoService;
  final CaseNoService _caseNoService;

  SoldierServiceImpl(this._dao, this._personalInfoService, this._caseNoService);

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
  Future<SoldierModel?> findById(int id) async {
    return await _dao.findById(id).then((foundedSoldier) async {
      if (foundedSoldier != null) {
        var model = SoldierModel.init();
        model = SoldierModel.fromJson(foundedSoldier.toJson());

        model = model.copyWith(
            caseNo: await _caseNoService
                .findById(foundedSoldier.caseNo)
                .then((foundedCaseNo) {
          var res = CaseNoModel.fromJson(foundedCaseNo!.toJson());
          return res;
        }));
        return model;
      }

      return null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding soldier by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveByPersonalInfoId(SoldierModel model,
      {required int personalInfoId}) async {
    return await _dao.doInsert(model.toJson(), personalInfoId).then((value) {
      logger.info("Soldier was saved.");
      return value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "Soldier can not save, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> update(SoldierModel model) async {
    return await _dao.doUpdate(model.toJson()).onError((error, stackTrace) =>
        throw FailureException("Updating soldier failed, error $stackTrace"));
  }

  @override
  Future<int> save(SoldierModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<SoldierModel?> findByPersonalInfoId(int personalInfoId) async {
    return await _dao
        .findById(await _personalInfoService.findSoldierIdById(personalInfoId))
        .then((foundedSoldier) async => foundedSoldier != null
            ? SoldierModel.fromJson(foundedSoldier.toJson()).copyWith(
                caseNo: CaseNoModel.fromJson(await _caseNoService
                    .findById(foundedSoldier.caseNo)
                    .then((v) => v!.toJson())))
            : null)
        .onError((error, stackTrace) => throw FailureException(
            "An error happened in finding soldier by personal id, see the error :\n $error \n $stackTrace"));
  }
}
