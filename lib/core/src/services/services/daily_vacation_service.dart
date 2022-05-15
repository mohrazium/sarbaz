part of services;

abstract class DailyVacationService extends Service<int, DailyVacationModel> {
  Future<List<DailyVacationModel>?> findAllByVacationsId(int vacationsId);
  Future<DailyVacationModel?> saveByVacationsIdAndPersonalInfoId(
      DailyVacationModel model, int vacationsId, int personalInfoId);
  Future<bool> updateByPersonalInfoId(DailyVacationModel model, int personalInfoId);
  Future<bool> deleteById(int id, int personalInfoId);
}

class DailyVacationServiceImpl implements DailyVacationService {
  final DailyVacationDAO _dailyVacationDAO;
  final VacationsService _vacationsService;

  DailyVacationServiceImpl(this._dailyVacationDAO, this._vacationsService);

  @override
  Future<bool> delete(DailyVacationModel model) async {
    return Future.value(false);
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
  Future<DailyVacationModel?> saveByVacationsIdAndPersonalInfoId(
      DailyVacationModel model, int vacationsId, int personalInfoId) async {
    VacationResult result = await _vacationsService
        .syncVacationsAmount(
            personalInfoId: personalInfoId, vacationType: _getType(model.vacationType), amount: model.amount)
        .catchError((onError) => throw FailureException(onError.toString()));
    if (result == VacationResult.saved) {
      return _dailyVacationDAO
          .doInsert(model.toJson(), vacationsId)
          .then((savedVacation) => DailyVacationModel.fromJson(savedVacation.toJson()))
          .onError((error, stackTrace) => throw FailureException(
              "Can not save daily vacation by vacationsId, see the error :\n $error \n $stackTrace"));
    } else if (result == VacationResult.noEnoughEligibleBalance) {
      throw Message(Messages.noEnoughEligibleBalance);
    } else if (result == VacationResult.noEnoughIncentiveBalance) {
      throw Message(Messages.noEnoughIncentiveBalance);
    } else if (result == VacationResult.noEnoughSickBalance) {
      throw Message(Messages.noEnoughSickBalance);
    } else {
      return null;
    }
  }

  @override
  Future<bool> deleteById(int id, int personalInfoId) async {
    final foundedDaily = await findById(id).catchError((onError) => throw FailureException(onError.toString()));
    if (foundedDaily != null) {
      VacationResult result = await _vacationsService
          .syncVacationsAmount(
              personalInfoId: personalInfoId,
              vacationType: _getType(foundedDaily.vacationType),
              amount: 0,
              lastAmount: foundedDaily.amount)
          .catchError((onError) => throw FailureException(onError.toString()));
      if (result == VacationResult.saved) {
        return _dailyVacationDAO.doDelete(foundedDaily.toJson()).then((value) => value > 0 ? true : false).onError(
            (error, stackTrace) =>
                throw FailureException("Cant remove vacation by id , see the error :\n $error \n $stackTrace"));
      }
    }
    return Future.value(false);
  }

  VacationType _getType(String type) {
    if (type == Strings.eligibleVacation) {
      return VacationType.eligible;
    } else if (type == Strings.sickVacation) {
      return VacationType.sick;
    } else {
      return VacationType.incentive;
    }
  }

  @override
  Future<bool> updateByPersonalInfoId(DailyVacationModel model, int personalInfoId) async {
    final foundedDaily =
        await findById(model.id ?? 0).catchError((onError) => throw FailureException(onError.toString()));

    VacationResult result = await _vacationsService
        .syncVacationsAmount(
            personalInfoId: personalInfoId,
            vacationType: _getType(model.vacationType),
            amount: model.amount,
            lastAmount: foundedDaily!.amount)
        .catchError((onError) => throw FailureException(onError.toString()));

    if (result == VacationResult.saved) {
      return await update(model);
    } else if (result == VacationResult.noEnoughEligibleBalance) {
      throw Message(Messages.noEnoughEligibleBalance);
    } else if (result == VacationResult.noEnoughIncentiveBalance) {
      throw Message(Messages.noEnoughIncentiveBalance);
    } else if (result == VacationResult.noEnoughSickBalance) {
      throw Message(Messages.noEnoughSickBalance);
    }
    return Future.value(false);
  }
}
