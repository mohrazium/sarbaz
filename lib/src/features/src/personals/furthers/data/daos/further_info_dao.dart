import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../../../personal_info/data.dart';
import '../tables/further_info_table.dart';
part 'further_info_dao.g.dart';

@DriftAccessor(tables: [FurtherInfoTable, PersonalInfoTable])
class FurtherInfoDAO extends DatabaseAccessor<SoldierDatabase> with _$FurtherInfoDAOMixin {
  FurtherInfoDAO(SoldierDatabase db) : super(db);

  Future<FurtherInfoTableData> doInsert(Map<String, dynamic> entry, int personalInfoId) async {
    final data = FurtherInfoTableData.fromJson(entry);
    final result =
        await into(furtherInfoTable).insertReturning(data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE personal_info_table SET further_info = ? WHERE id = ?',
      updates: {personalInfoTable},
      variables: [Variable.withInt(result.id!), Variable.withInt(personalInfoId)],
    );
    return result;
  }

  Future<FurtherInfoTableData?> findById(int id) {
    return (select(furtherInfoTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = FurtherInfoTableData.fromJson(entry);
    return await update(furtherInfoTable).replace(entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }
}
