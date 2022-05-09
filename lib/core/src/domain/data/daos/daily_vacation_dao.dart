part of data;

@DriftAccessor(tables: [DailyVacationTable])
class DailyVacationDAO extends DatabaseAccessor<SoldierDatabase> with _$DailyVacationDAOMixin {
  DailyVacationDAO(SoldierDatabase db) : super(db);

  Future<DailyVacationTableData> doInsert(Map<String, dynamic> entry, int vacationsId) async {
    final data = DailyVacationTableData.fromJson(entry);
    return into(dailyVacationTable)
        .insertReturning(data.copyWith(vacations: vacationsId, createdAt: DateTime.now()).toCompanion(true));
  }

  Future<List<DailyVacationTableData>> findAllByVacationsId(int vacationsId) {
    return (select(dailyVacationTable)
          ..where((tbl) => tbl.vacations.equals(vacationsId))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]))
        .get();
  }

  Future<DailyVacationTableData?> findById(int id) {
    return (select(dailyVacationTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final data = DailyVacationTableData.fromJson(entry);
    return update(dailyVacationTable).replace(data.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    return (delete(dailyVacationTable)..where((tbl) => tbl.id.equals(entry["id"] as int))).go();
  }
}
