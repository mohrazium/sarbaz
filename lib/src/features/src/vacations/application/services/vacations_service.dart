
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/exceptions/exceptions.dart';


import '../../../personals/personal.dart';
import '../../../soldiers.dart';
import '../../data.dart';
import '../../domain.dart';

abstract class VacationsService extends Service<int, VacationsModel> {
  Future<VacationsModel?> findByPersonalInfoId(int personalInfoId);

  Future<int> saveByPersonalInfoId(int personalInfoId);
  Future<int> saveBySoldierCase(SoldierCaseModel soldierCase);
  Future<bool> updateBySoldierCase(SoldierCaseModel soldierCase);

  Future<VacationResult> syncVacationsAmount(
      {required int personalInfoId, required VacationType vacationType, required int amount, int lastAmount = 0});
}

class VacationsServiceImpl implements VacationsService {
  final VacationsDAO _vacationsDAO;
  final PersonalInfoDAO _personalInfoDAO;
  final SoldierDAO _soldierDAO;
  final SoldierCaseDAO _soldierCaseDAO;
  final PrefStorage _prefStorage;

  VacationsServiceImpl(
    this._vacationsDAO,
    this._personalInfoDAO,
    this._soldierDAO,
    this._soldierCaseDAO,
    this._prefStorage,
  );

  @override
  Future<int> saveByPersonalInfoId(int personalInfoId) async {
    final soldierCase = await _getSoldierCase(personalInfoId);
    return saveBySoldierCase(soldierCase).onError((error, stackTrace) =>
        throw FailureException("Vacation can not save, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveBySoldierCase(SoldierCaseModel? soldierCase) {
    if (soldierCase != null) {
      final model = _calculateVacations(soldierCase.startDateOfService, soldierCase.endDateOfService);
      return _vacationsDAO.doInsert(model.toJson(), soldierCase.id!).then((value) {
        logger.info("Vacation was saved.");
        return value.id ?? 0;
      }).onError((error, stackTrace) =>
          throw FailureException("Vacation can not save, see the error :\n $error \n $stackTrace"));
    } else {
      return Future.value(0);
    }
  }

  @override
  Future<bool> updateBySoldierCase(SoldierCaseModel soldierCase) async {
    var model = _calculateVacations(soldierCase.startDateOfService, soldierCase.endDateOfService);
    final vacationId = await _soldierCaseDAO.findById(soldierCase.id!).then((soldierCase) => soldierCase!.vacations!);
    return update(model.copyWith(id: vacationId));
  }

  @override
  Future<bool> update(VacationsModel model) async {
    return await _vacationsDAO.doUpdate(model.toJson()).onError(
        (error, stackTrace) => throw FailureException("Updating Vacation failed, error :\n $error \n $stackTrace"));
  }

  @override
  Future<VacationsModel?> findByPersonalInfoId(int personalInfoId) async {
    final soldierCaseId = await _getSoldierCaseId(personalInfoId);
    final vacationId = await _soldierCaseDAO.findById(soldierCaseId).then((soldierCase) => soldierCase?.vacations ?? 0);

    return findById(vacationId);
  }

  @override
  Future<VacationsModel?> findById(int id) async {
    return await _vacationsDAO
        .findById(id)
        .then((foundedVacation) => foundedVacation != null ? VacationsModel.fromJson(foundedVacation.toJson()) : null)
        .onError((error, stackTrace) => throw FailureException(
            "An error happened in finding vacations by id, see the error :\n $error \n $stackTrace"));
  }

  Future<int> _getSoldierCaseId(int pid) async {
    final soldierId = await _personalInfoDAO.findById(pid).then((person) => person?.soldier ?? 0);
    return await _soldierDAO.findById(soldierId).then((soldier) => soldier?.soldierCase ?? 0);
  }

  Future<SoldierCaseModel?> _getSoldierCase(int pid) async {
    return await _soldierCaseDAO
        .findById(await _getSoldierCaseId(pid))
        .then((soldierCase) => soldierCase != null ? SoldierCaseModel.fromJson(soldierCase.toJson()) : null);
  }

  @override
  Future<VacationResult> syncVacationsAmount({
    required int personalInfoId,
    required VacationType vacationType,
    required int amount,
    int lastAmount = 0,
  }) async {
    VacationResult result = VacationResult.none;
    VacationsModel? model =
        await findByPersonalInfoId(personalInfoId).then((value) => value).onError((error, stackTrace) {
      result = VacationResult.failed;
      throw FailureException('Founding vacation failed, see the errors:\n $error \n $stackTrace ');
    });
    if (model != null) {
      if (vacationType == VacationType.eligible) {
        if (lastAmount > 0.0) {
          model = model.copyWith(
              eligibleBalance: model.eligibleBalance + lastAmount, eligibleUsed: model.eligibleUsed - lastAmount);
          await update(model);
        }

        if (model.eligibleBalance > 0 && model.eligibleBalance >= amount) {
          model = model.copyWith(
              eligibleBalance: model.eligibleBalance - amount,
              eligibleUsed: model.eligibleUsed + double.parse(amount.toString()));

          if (await update(model)) {
            result = VacationResult.saved;
          } else {
            result = VacationResult.failed;
          }
        } else {
          result = VacationResult.noEnoughEligibleBalance;
        }
      } else if (vacationType == VacationType.sick) {
        if (lastAmount > 0.0) {
          model = model.copyWith(sickBalance: model.sickBalance + lastAmount, sickUsed: model.sickUsed - lastAmount);
          await update(model);
        }

        if (model.sickBalance > 0 && model.sickBalance >= amount) {
          model = model.copyWith(
              sickBalance: model.sickBalance - amount, sickUsed: model.sickUsed + double.parse(amount.toString()));
          if (await update(model)) {
            result = VacationResult.saved;
          } else {
            result = VacationResult.failed;
          }
        } else {
          result = VacationResult.noEnoughSickBalance;
        }
      } else if (vacationType == VacationType.incentive) {
        if (lastAmount > 0.0) {
          double incentiveUsed = model.incentiveUsed ?? 0;
          double incentiveBalance = model.incentiveBalance ?? 0;
          model = model.copyWith(
              incentiveBalance: incentiveBalance + lastAmount, incentiveUsed: incentiveUsed - lastAmount);
          await update(model);
        }

        if (model.incentiveBalance != null && model.incentiveBalance! > 0 && model.incentiveBalance! >= amount) {
          double incentiveUsed = model.incentiveUsed ?? 0;
          model = model.copyWith(
              incentiveBalance: model.incentiveBalance! - amount,
              incentiveUsed: incentiveUsed + double.parse(amount.toString()));
          if (await update(model)) {
            result = VacationResult.saved;
          } else {
            result = VacationResult.failed;
          }
        } else {
          result = VacationResult.noEnoughIncentiveBalance;
        }
      }
    }
    return result;
  }

  VacationsModel _calculateVacations(DateTime start, DateTime end) {
    double eligiblePerMonth = _prefStorage.getEligibleVacationPerMonth();
    double sickPerMonth = _prefStorage.getEligibleVacationPerMonth();
    double incentiveLimit = _prefStorage.getIncentiveLimit();

    final int monthsOfService = (end.difference(start).inDays) ~/ 30;
    VacationsModel vacationsModel = VacationsModel.init();

    if (eligiblePerMonth > 0.0) {
      vacationsModel = vacationsModel.copyWith(
          eligibleValuePerMonth: eligiblePerMonth,
          eligibleTotal: monthsOfService * eligiblePerMonth,
          eligibleBalance: monthsOfService * eligiblePerMonth,
          eligibleUsed: 0.0);
    }

    if (sickPerMonth > 0.0) {
      vacationsModel = vacationsModel.copyWith(
        sickValuePerMonth: sickPerMonth,
        sickTotal: monthsOfService * sickPerMonth,
        sickBalance: monthsOfService * sickPerMonth,
        sickUsed: 0.0,
      );
    }

    if (incentiveLimit > 0.0) {
      vacationsModel = vacationsModel.copyWith(incentiveValueLimit: incentiveLimit);
    }

    return vacationsModel;
  }

  @override
  Future<bool> delete(VacationsModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<VacationsModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<int> save(VacationsModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
