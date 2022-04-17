part of data;

@DriftAccessor(tables: [TrainingStatusTable,SoldierTable])
class TrainingStatusDAO extends DatabaseAccessor<SoldierDatabase>
    with _$TrainingStatusDAOMixin {
  TrainingStatusDAO(SoldierDatabase db) : super(db);

   Future<TrainingStatusTableData> doInsert(
      Map<String, dynamic> entry, int soldierId) async {
    final data = TrainingStatusTableData.fromJson(entry);
    final result = await into(trainingStatusTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE soldier_table SET training_status = ? WHERE id = ?',
      updates: {soldierTable},
      variables: [
        Variable.withInt(result.id!),
        Variable.withInt(soldierId)
      ],
    );
    return result;
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = TrainingStatusTableData.fromJson(entry);
    return await update(trainingStatusTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    return await (delete(trainingStatusTable)
          ..where((tbl) => tbl.id.equals(entry["id"].value as int)))
        .go();
  }

  Future<TrainingStatusTableData?> findById(int id) async {
    return (select(trainingStatusTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }


}
