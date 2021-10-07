import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';
import 'package:sarbaz/src/core/core.dart';
import 'package:sarbaz/src/core/data/local/tables/personal_info_table.dart';

@dao
abstract class PersonalInfoDAO {
  @Query('SELECT * FROM ${DbConstants.tblPersonalInfo};')
  Future<List<PersonalInfoTable>> findAllPersons();
  @Query('SELECT * FROM ${DbConstants.tblPersonalInfo} WHERE id=:id')
  Future<PersonalInfoTable?> findPersonalInfoById(int id);
  @insert
  Future<void> insertPersonalInfo(PersonalInfoTable info);
  @update
  Future<void> updatePersonalInfo(PersonalInfoTable info);
  @delete
  Future<void> deletePersonalInfo(PersonalInfoTable info);
  @Query(
      'SELECT EXISTS(SELECT id FROM ${DbConstants.tblPersonalInfo} WHERE ${DbConstants.nationalIdentity} like:nationalIdentity)')
  Future<bool?> existsByNationalIdentity(String nationalIdentity);
  @Query(
      'SELECT * FROM tbl_personal_info tpi WHERE tpi.national_identity = '':nationalIdentity'';')
  Future<PersonalInfoTable?> findByNationalIdentity(String nationalIdentity);
}
