
import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../../../personal_info/data.dart';
import '../tables/contact_info_table.dart';
part 'contact_info_dao.g.dart';

@DriftAccessor(tables: [ContactInfoTable,PersonalInfoTable])
class ContactInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ContactInfoDAOMixin {
  ContactInfoDAO(SoldierDatabase db) : super(db);


  Future<ContactInfoTableData> doInsert(
      Map<String, dynamic> entry, int personalInfoId) async {
    final data = ContactInfoTableData.fromJson(entry);
    final result = await into(contactInfoTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE personal_info_table SET contact_info = ? WHERE id = ?',
      updates: {personalInfoTable},
      variables: [
        Variable.withInt(result.id!),
        Variable.withInt(personalInfoId)
      ],
    );
    return result;
  }

  Future<ContactInfoTableData?> findById(int id) {
    return (select(contactInfoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = ContactInfoTableData.fromJson(entry);
    return await update(contactInfoTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

}
