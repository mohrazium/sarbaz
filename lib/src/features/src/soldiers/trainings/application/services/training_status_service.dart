
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/exceptions/exceptions.dart';

import '../../../../personals.dart';
import '../../../soldier.dart';
import '../../data.dart';
import '../../domain.dart';

abstract class TrainingStatusService extends Service<int, TrainingStatusModel> {
  Future<int> saveByPersonalInfoId(TrainingStatusModel value,
      {required int personalInfoId});
  Future<TrainingStatusModel?> findByPersonalInfoId(int value);
}

class TrainingStatusServiceImpl implements TrainingStatusService {
  final TrainingStatusDAO _trainingStatusDAO;
  final PersonalInfoDAO _personalInfoDAO;
  final SoldierDAO _soldierDAO;

  TrainingStatusServiceImpl(
      this._trainingStatusDAO, this._personalInfoDAO, this._soldierDAO);

  @override
  Future<TrainingStatusModel?> findById(int id) async {
    return await _trainingStatusDAO.findById(id).then(
        (foundedTrainingStatus) async {
      return foundedTrainingStatus != null
          ? TrainingStatusModel.fromJson(foundedTrainingStatus.toJson())
          : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding soldier by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveByPersonalInfoId(TrainingStatusModel model,
      {required int personalInfoId}) async {
    return _trainingStatusDAO
        .doInsert(
            model.toJson(),
            await _personalInfoDAO
                .findById(personalInfoId)
                .then((foundedPersonal) => foundedPersonal!.soldier!))
        .then((value) {
      logger.info("Training status was saved.");
      return value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
            "TrainingStatus can not save, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> update(TrainingStatusModel model) async {
    return await _trainingStatusDAO.doUpdate(model.toJson()).onError((error,
            stackTrace) =>
        throw FailureException("Updating soldier failed, error $stackTrace"));
  }

  @override
  Future<int> save(TrainingStatusModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(TrainingStatusModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<TrainingStatusModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<TrainingStatusModel?> findByPersonalInfoId(int personalInfoId) async {
    return await _trainingStatusDAO
        .findById(await _soldierDAO
            .findById(await _personalInfoDAO.findById(personalInfoId).then(
                (value) => value != null && value.soldier != null
                    ? value.soldier!
                    : 0))
            .then((value) => value != null && value.trainingStatus!=null ? value.trainingStatus! : 0))
        .then((value) {
      return value != null
          ? TrainingStatusModel.fromJson(value.toJson())
          : null;
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding further info by personal id, see the error :\n $error \n $stackTrace"));
  }
}
