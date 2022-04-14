part of data;

@DriftAccessor(tables: [CaseNoTable])
class CaseNoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$CaseNoDAOMixin {
  CaseNoDAO(SoldierDatabase db) : super(db);

  Future<List<CaseNoTableData>> findAll() async {
    return (select(caseNoTable)).get();
  }

  Future<CaseNoTableData?> findById(int id) async {
    return (select(caseNoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<void> doInsertAll(int count) async {
    var divided = count ~/ 2;
    for (int i = 1; i <= divided; i++) {
      await (into(caseNoTable).insertOnConflictUpdate(CaseNoTableData(
              id: i,
              caseName: "بایگانی سرباز",
              caseCode: "$i",
              isFull: false,
              description: "ایجاد شده توسط سیستم",
              createdAt: DateTime.now(),
              updatedAt: DateTime.now())
          .toCompanion(true)));
    }
    for (int i = 1; i <= divided; i++) {
      await into(caseNoTable).insertOnConflictUpdate(CaseNoTableData(
              id: divided + i,
              caseName: "بایگانی امریه",
              caseCode: "$i",
              isFull: false,
              description: "ایجاد شده توسط سیستم",
              createdAt: DateTime.now(),
              updatedAt: DateTime.now())
          .toCompanion(true));
    }
  }
}
