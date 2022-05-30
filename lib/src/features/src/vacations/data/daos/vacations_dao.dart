import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../../../soldiers/soldier.dart';
import '../tables/daily_vacation_table.dart';
import '../tables/hourly_vacations_table.dart';
import '../tables/vacations_table.dart';

part 'vacations_dao.g.dart';

@DriftAccessor(tables: [
  SoldierCaseTable,
  VacationsTable,
  DailyVacationTable,
  HourlyVacationTable,
])
class VacationsDAO extends DatabaseAccessor<SoldierDatabase> with _$VacationsDAOMixin {
  VacationsDAO(SoldierDatabase db) : super(db);

  Future<VacationsTableData> doInsert(Map<String, dynamic> entry, int soldierCaseId) async {
    final data = VacationsTableData.fromJson(entry);
    final result =
        await into(vacationsTable).insertReturning(data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE soldier_case_table SET vacations = ? WHERE id = ?',
      updates: {soldierCaseTable},
      variables: [Variable.withInt(result.id!), Variable.withInt(soldierCaseId)],
    );
    return result;
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = VacationsTableData.fromJson(entry);
    return await update(vacationsTable).replace(entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    return await (delete(vacationsTable)..where((tbl) => tbl.id.equals(entry["id"].value as int))).go();
  }

  Future<VacationsTableData?> findById(int id) async {
    return (select(vacationsTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }
}
