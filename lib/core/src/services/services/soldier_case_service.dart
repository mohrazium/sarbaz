part of services;

abstract class SoldierCaseService extends Service<int, SoldierCaseModel> {
  Future<int> saveByPersonalInfoId(SoldierCaseModel model,
      {required int personalInfoId});
  Future<SoldierCaseModel?> findByPersonalInfoId(int personalInfoId);
}

class SoldierCaseServiceImpl implements SoldierCaseService {
  final SoldierCaseDAO _soldierCaseDAO;
  final PersonalInfoDAO _personalInfoDAO;
  final SoldierDAO _soldierDAO;
  final RankDAO _rankDAO;

  SoldierCaseServiceImpl(this._soldierCaseDAO, this._personalInfoDAO,
      this._soldierDAO, this._rankDAO);

  @override
  Future<SoldierCaseModel?> findById(int id) async {
    return await _soldierCaseDAO.findById(id).then(
        (foundedTrainingStatus) async {
      return foundedTrainingStatus != null
          ? SoldierCaseModel.fromJson(foundedTrainingStatus.toJson())
          : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding soldier case by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveByPersonalInfoId(SoldierCaseModel model,
      {required int personalInfoId}) async {
    return _soldierCaseDAO
        .doInsert(
            model.toJson(),
            await _personalInfoDAO
                .findById(personalInfoId)
                .then((foundedPersonal) => foundedPersonal!.soldier!))
        .then((value) {
      logger.info("Soldier case was saved.");
      return value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
            "Soldier case can not save, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> update(SoldierCaseModel model) async {
    final mappedModel = model.toJson();
    mappedModel['rank'] = model.rank!.id;
    return await _soldierCaseDAO.doUpdate(mappedModel).onError((error,
            stackTrace) =>
        throw FailureException("Updating soldier case failed, error $stackTrace"));
  }

  @override
  Future<int> save(SoldierCaseModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

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
  Future<SoldierCaseModel?> findByPersonalInfoId(int personalInfoId) async {
    return await _soldierCaseDAO
        .findById(await _soldierDAO
            .findById(await _personalInfoDAO.findById(personalInfoId).then(
                (value) => value != null && value.soldier != null
                    ? value.soldier!
                    : 0))
            .then((value) => value != null && value.soldierCase != null
                ? value.soldierCase!
                : 0))
        .then((foundedSoldierCase) async {
      if (foundedSoldierCase != null) {
        final mappedSoldierCase = foundedSoldierCase.toJson();
        final rankModel = await _rankDAO.findById(mappedSoldierCase['rank']);
        mappedSoldierCase['rank'] = rankModel!.toJson();
        return SoldierCaseModel.fromJson(mappedSoldierCase);
      }
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding further info by personal id, see the error :\n $error \n $stackTrace"));
  }
}
