part of services;

abstract class SoldierCaseService extends Service<int, SoldierCaseModel> {
  Future<int> saveByPersonalInfoId(SoldierCaseModel model, {required int personalInfoId});
  Future<SoldierCaseModel?> findByPersonalInfoId(int personalInfoId);
  Future<bool> updateAmountOfServiceById(int id, int amount);
}

class SoldierCaseServiceImpl implements SoldierCaseService {
  final SoldierCaseDAO _soldierCaseDAO;
  final PersonalInfoDAO _personalInfoDAO;
  final SoldierDAO _soldierDAO;
  final RankDAO _rankDAO;
  final VacationsService _vacationsService;

  SoldierCaseServiceImpl(
    this._soldierCaseDAO,
    this._personalInfoDAO,
    this._soldierDAO,
    this._rankDAO,
    this._vacationsService,
  );

  @override
  Future<SoldierCaseModel?> findById(int id) async {
    return await _soldierCaseDAO.findById(id).then((foundedTrainingStatus) async {
      return foundedTrainingStatus != null ? SoldierCaseModel.fromJson(foundedTrainingStatus.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding soldier case by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveByPersonalInfoId(SoldierCaseModel model, {required int personalInfoId}) async {
    final soldierId =
        await _personalInfoDAO.findById(personalInfoId).then((foundedPersonal) => foundedPersonal!.soldier!);
    return await _soldierCaseDAO.doInsert(model.toJson(), soldierId).then((value) async {
      if (value.id != null) {
        logger.info("Soldier case was saved.");
        await _vacationsService.saveByPersonalInfoId(personalInfoId);
        return value.id!;
      }
      return 0;
    }).onError((error, stackTrace) =>
        throw FailureException("Soldier case can not save, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> update(SoldierCaseModel model) async {
    return await _soldierCaseDAO
        .doUpdate(model.toJson())
        .onError((error, stackTrace) =>
            throw FailureException("Updating soldier case failed, error \n $error \n $stackTrace"))
        .whenComplete(() async {
      await _vacationsService.updateBySoldierCase(model);
    });
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
    final soldierId = await _personalInfoDAO
        .findById(personalInfoId)
        .then((value) => value != null && value.soldier != null ? value.soldier! : 0);

    final soldierCaseId = await _soldierDAO
        .findById(soldierId)
        .then((value) => value != null && value.soldierCase != null ? value.soldierCase! : 0);

    return await _soldierCaseDAO.findById(soldierCaseId).then((foundedSoldierCase) async {
      if (foundedSoldierCase != null) {
        final dataModel = foundedSoldierCase.toJson();
        final rankModel = await _rankDAO.findById(dataModel['rank']);
        var result = SoldierCaseModel.fromJson(dataModel);
        return result.copyWith(rank: RankModel.fromJson(rankModel!.toJson()));
      }
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding further info by personal id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> updateAmountOfServiceById(int id, int amount) {
    return _soldierCaseDAO.doUpdateAmountOfService(id, amount).onError((error, stackTrace) =>
        throw FailureException("Updating soldier case failed,see error: \n $error \n trace : $stackTrace"));
  }
}
