
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/exceptions/exceptions.dart';
import '../../../personal_info/application.dart';
import '../../domain.dart';

import '../../data.dart';

abstract class FurtherInfoService extends Service<int, FurtherInfoModel> {
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId});
  Future<FurtherInfoModel?> findByPersonalInfoId(int personalInfoId);
}

class FurtherInfoServiceImpl implements FurtherInfoService {
  final FurtherInfoDAO dao;
  final PersonalInfoService personalInfoService;

  FurtherInfoServiceImpl(this.dao, this.personalInfoService);

  @override
  Future<bool> delete(FurtherInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<FurtherInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<FurtherInfoModel?> findById(int id) async {
    return await dao.findById(id).then((value) {
      return value != null ? FurtherInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding further info by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveWithParentId(FurtherInfoModel model,
      {required int personalInfoId}) async {
    int res = 0;
    await dao.doInsert(model.toJson(), personalInfoId).then((value) {
      logger.info("Further info was saved.");
      res = value.id ?? 0;
    }).onError((error, stackTrace) => throw FailureException(
        "Further info can not save, see the error :\n $error \n $stackTrace"));
    return res;
  }

  @override
  Future<bool> update(FurtherInfoModel model) async {
    return await dao.doUpdate(model.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "Updating further info failed, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> save(FurtherInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<FurtherInfoModel?> findByPersonalInfoId(int personalInfoId) async {
    return await dao
        .findById(
            await personalInfoService.findFurtherInfoIdById(personalInfoId))
        .then((value) {
      return value != null ? FurtherInfoModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding further info by personal id, see the error :\n $error \n $stackTrace"));
  }
}
