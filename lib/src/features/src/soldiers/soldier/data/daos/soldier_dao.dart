import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../../../../casenos.dart';
import '../../../../personals.dart';
import '../../data.dart';
part 'soldier_dao.g.dart';

@DriftAccessor(tables: [SoldierTable, PersonalInfoTable, CaseNoTable])
class SoldierDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SoldierDAOMixin {
  SoldierDAO(SoldierDatabase db) : super(db);

  Future<SoldierTableData> doInsert(
      Map<String, dynamic> entry, int personalInfoId) async {
    final data = SoldierTableData.fromJson(entry);
    final result = await into(soldierTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE personal_info_table SET soldier = ? WHERE id = ?',
      updates: {personalInfoTable},
      variables: [
        Variable.withInt(result.id!),
        Variable.withInt(personalInfoId)
      ],
    );
    customUpdate(
      'UPDATE case_no_table SET is_full = ? WHERE id = ?',
      updates: {caseNoTable},
      variables: [Variable.withBool(true), Variable.withInt(result.caseNo)],
    );
    return result;
  }

  Future<SoldierTableData?> findById(int id) async {
    return await (select(soldierTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = SoldierTableData.fromJson(entry);
    bool result = await update(soldierTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
    if (result) {
      customUpdate(
        'UPDATE case_no_table SET is_full = ? WHERE id = ?',
        updates: {caseNoTable},
        variables: [
          Variable.withBool(true),
          Variable.withInt(entryData.caseNo)
        ],
      );
    }
    return result;
  }
}
