import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';
import 'package:sarbaz/src/core/core.dart';
import 'package:sarbaz/src/core/data/local/tables/personal_info_table.dart';

@dao
abstract class PersonalInfoDAO {
  @Query('SELECT * FROM ${StringConstants.kTblPersonalInfo};')
  Future<List<PersonalInfoTable>> findAllPersons();
  @Query('SELECT * FROM ${StringConstants.kTblPersonalInfo} WHERE id=:id')
  Future<PersonalInfoTable?> findPersonalInfoById(int id);
  @insert
  Future<void> insertPersonalInfo(PersonalInfoTable info);
  @update
  Future<void> updatePersonalInfo(PersonalInfoTable info);
  @delete
  Future<void> deletePersonalInfo(PersonalInfoTable info);
}
