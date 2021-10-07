import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sarbaz/src/core/data/data.dart';
import 'package:sarbaz/src/core/services/models/personal_info_model.dart';
import 'package:sarbaz/src/core/utility/exceptions/exceptions.dart';
import 'generic_service.dart';

abstract class PersonalInfoService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>?> findByKeyword(dynamic keyword);
  Future<bool> existsByNationalIdentity(String nationalIdentity);
  Future<PersonalInfoModel?> findByNationalIdentity(String nationalIdentity);
}

@Injectable(as: PersonalInfoService)
class PersonalInfoServiceImpl implements PersonalInfoService {
  @override
  Future<List<PersonalInfoModel>?> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<void> save(PersonalInfoModel e) async {
    final db = await DbHelper.instance();
    final personDao = db.personalInfoDAO;
    await personDao.insertPersonalInfo(e.toTable());
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    final db = await DbHelper.instance();
    final personDao = db.personalInfoDAO;

    final persons = await personDao.findAllPersons();
    List<PersonalInfoModel> models = new List.empty(growable: true);
    persons.forEach((person) {
      models.add(PersonalInfoModel.fromTable(person));
    });
    return models;
  }

  @override
  Future<PersonalInfoModel> findById(int id) async {
    final db = await DbHelper.instance();
    final personDao = db.personalInfoDAO;
    final table = await personDao.findPersonalInfoById(id);
    return PersonalInfoModel.fromTable(table!);
  }

  @override
  Future<void> update(PersonalInfoModel e) async {
    final db = await DbHelper.instance();
    final personDao = db.personalInfoDAO;
    await personDao.updatePersonalInfo(e.toTable());
  }

  @override
  Future<bool> delete(PersonalInfoModel e) async {
    final db = await DbHelper.instance();
    final personDao = db.personalInfoDAO;
    try {
      await personDao.deletePersonalInfo(e.toTable());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> existsByNationalIdentity(String nationalIdentity) async {
    bool result = false;
    await DbHelper.instance().then((db) {
      db.personalInfoDAO
          .existsByNationalIdentity(nationalIdentity)
          .then((value) => result = value ?? false);
      debugPrint("result is :=====>${result}");
    });
    return result;
  }

  @override
  Future<PersonalInfoModel?> findByNationalIdentity(
      String nationalIdentity) async {
    try {
      final db = await DbHelper.instance();
      final table =
          await db.personalInfoDAO.findByNationalIdentity(nationalIdentity);
      return PersonalInfoModel.fromTable(table!);
    } catch (e) {
      throw FailureException(e,"شخص مورد نظر یافت نشد");
    }
  }
}
