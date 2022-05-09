part of services;

abstract class DailyVacationService extends Service<int, DailyVacationModel> {
  Future<List<DailyVacationModel>?> findAllByVacationsId(int vacationsId);
  Future<DailyVacationModel?> saveByVacationsId(DailyVacationModel model, int vacationsId);
  Future<bool> deleteById(int id);
}

class DailyVacationServiceImpl implements DailyVacationService {
  final DailyVacationDAO _dailyVacationDAO;

  DailyVacationServiceImpl(this._dailyVacationDAO);

  @override
  Future<bool> delete(DailyVacationModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DailyVacationModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DailyVacationModel?> findById(int id) {
    return _dailyVacationDAO
        .findById(id)
        .then((dailyVacation) => dailyVacation != null ? DailyVacationModel.fromJson(dailyVacation.toJson()) : null)
        .onError((error, stackTrace) => throw FailureException(
            "An error happened in finding daily vacation by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> save(DailyVacationModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(DailyVacationModel model) {
    return _dailyVacationDAO.doUpdate(model.toJson()).onError((error, stackTrace) => throw FailureException(
        "Can not update daily vacation by vacationsId, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<List<DailyVacationModel>?> findAllByVacationsId(int vacationsId) {
    return _dailyVacationDAO.findAllByVacationsId(vacationsId).then((foundedVacations) {
      List<DailyVacationModel>? vacations = List.empty(growable: true);
      for (var vacation in foundedVacations) {
        vacations.add(DailyVacationModel.fromJson(vacation.toJson()));
      }
      return vacations;
    }).onError((error, stackTrace) => throw FailureException(
        "Finding all vacations failed, something wt wrong see th errors: \n $error \n $stackTrace"));
  }

  @override
  Future<DailyVacationModel?> saveByVacationsId(DailyVacationModel model, int vacationsId) {
    return _dailyVacationDAO
        .doInsert(model.toJson(), vacationsId)
        .then((savedVacation) => DailyVacationModel.fromJson(savedVacation.toJson()))
        .onError((error, stackTrace) => throw FailureException(
            "Can not save daily vacation by vacationsId, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> deleteById(int id) async {
    final foundedDaily = await findById(id).catchError((onError) => throw FailureException(onError.toString()));
    return _dailyVacationDAO.doDelete(foundedDaily!.toJson()).then((value) => value > 0 ? true : false).onError(
        (error, stackTrace) =>
            throw FailureException("Cant remove vacation by id , see the error :\n $error \n $stackTrace"));
  }
}
