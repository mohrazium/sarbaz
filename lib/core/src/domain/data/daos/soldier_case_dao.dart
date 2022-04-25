part of data;

@DriftAccessor(tables: [
  SoldierTable,
  SoldierCaseTable,
  OvertimeTable,
  VacationsTable,
  ServiceDeficitTable,
  RankTable,
])
class SoldierCaseDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SoldierCaseDAOMixin {
  SoldierCaseDAO(SoldierDatabase db) : super(db);

  Future<SoldierCaseTableData> doInsert(
      Map<String, dynamic> entry, int soldierId) async {
    final mappedRank = RankTableData.fromJson(entry['rank'].toJson());
    entry['rank'] = mappedRank.id;
    final data = SoldierCaseTableData.fromJson(entry);
    final result = await into(soldierCaseTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE soldier_table SET soldier_case = ? WHERE id = ?',
      updates: {soldierTable},
      variables: [Variable.withInt(result.id!), Variable.withInt(soldierId)],
    );
    return result;
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = SoldierCaseTableData.fromJson(entry);
    return await update(soldierCaseTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    return await (delete(soldierCaseTable)
          ..where((tbl) => tbl.id.equals(entry["id"].value as int)))
        .go();
  }

  Future<SoldierCaseTableData?> findById(int id) async {
    return (select(soldierCaseTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }
}
