
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/exceptions/exceptions.dart';

import '../../../personal_info/application.dart';
import '../../data.dart';
import '../../domain.dart';

abstract class EducationalInfoService
    extends Service<int, EducationalInfoModel> {
  Future<int> saveByPersonalInfoId(EducationalInfoModel model,
      {required int personalInfoId});
  Future<EducationalInfoModel?> findByPersonalInfoId(int personalInfoId);
}

class EducationalInfoServiceImpl implements EducationalInfoService {
  final EducationalInfoDAO dao;

  EducationalInfoServiceImpl(this.dao);

  @override
  Future<bool> delete(EducationalInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<EducationalInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<EducationalInfoModel?> findById(int id) async {
    return await dao.findById(id).then((value) {
      return value != null
          ? EducationalInfoModel.fromJson(value.toJson())
          : null;
    }).onError((error, stackTrace) => throw FailureException(
        "An error happened in finding edu info by id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> save(EducationalInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(EducationalInfoModel model) async {
    return await dao.doUpdate(model.toJson()).then((value) => value).onError(
        (error, stackTrace) => throw FailureException(
            "Updating edu info failed, error $stackTrace"));
  }

  @override
  Future<EducationalInfoModel?> findByPersonalInfoId(int personalInfoId) async {
    return await dao
        .findById(await Get.find<PersonalInfoService>()//TODO: replace with dao
            .findEducationalInfoIdById(personalInfoId))
        .then((value) {
      return value != null
          ? EducationalInfoModel.fromJson(value.toJson())
          : null;
    }).onError((error, stackTrace) => throw FailureException(
            "An error happened in finding edu info by personal id, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<int> saveByPersonalInfoId(EducationalInfoModel model,
      {required int personalInfoId}) async {
    return await dao.doInsert(model.toJson(), personalInfoId).then((value) {
      return value.id ?? 0;
    }).onError((error, stackTrace) =>
        throw FailureException("Edu info can not save, see the error :\n $error \n $stackTrace"));
  }
}
