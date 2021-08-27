import 'package:injectable/injectable.dart';
import 'package:sarbaz/src/core/data/data.dart';
import 'package:sarbaz/src/core/services/models/personal_info_model.dart';
import 'generic_service.dart';

abstract class PersonsService extends Service<int, PersonalInfoModel> {
  Future<List<PersonalInfoModel>> findByKeyword(dynamic keyword);
}

@Injectable(as: PersonsService)
class PersonsServiceImpl implements PersonsService {
  @override
  Future<bool> delete(PersonalInfoModel e) async {
    final db = await DbHelper.get();
    final personDao = db.personalInfDAO;
    try {
      await personDao.deletePersonalInfo(e.toTable());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<PersonalInfoModel>> findAll() async {
    final db = await DbHelper.get();
    final personDao = db.personalInfDAO;

    final persons = await personDao.findAllPersons();
    List<PersonalInfoModel> models = new List.empty(growable: true);
    persons.forEach((person) {
      models.add(PersonalInfoModel.fromTable(person));
    });
    return models;
  }

  @override
  Future<PersonalInfoModel> findById(int id) async {
    final db = await DbHelper.get();
    final personDao = db.personalInfDAO;
    final table = await personDao.findPersonalInfoById(id);
    return PersonalInfoModel.fromTable(table!);
  }

  @override
  Future<List<PersonalInfoModel>> findByKeyword(keyword) {
    // TODO: implement findByKeyword
    throw UnimplementedError();
  }

  @override
  Future<void> save(PersonalInfoModel e) async {
    final db = await DbHelper.get();
    final personDao = db.personalInfDAO;
    await personDao.insertPersonalInfo(e.toTable());
  }

  @override
  Future<void> update(PersonalInfoModel e) async {
    final db = await DbHelper.get();
    final personDao = db.personalInfDAO;
    await personDao.updatePersonalInfo(e.toTable());
  }
}
