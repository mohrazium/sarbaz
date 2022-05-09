part of data;

@DriftAccessor(tables: [CaseNoTable])
class CaseNoDAO extends DatabaseAccessor<SoldierDatabase> with _$CaseNoDAOMixin {
  CaseNoDAO(SoldierDatabase db) : super(db);

  Future<CaseNoTableData> doInsert(Map<String, dynamic> entry) {
    final data = CaseNoTableData.fromJson(entry);
    return into(caseNoTable).insertReturning(data.copyWith(createdAt: DateTime.now()).toCompanion(true));
  }

  Future<List<CaseNoTableData>> findAll() async {
    return (select(caseNoTable)).get();
  }

  Future<CaseNoTableData?> findById(int id) async {
    return (select(caseNoTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<void> doInsertAll(int count) async {
    var divided = count ~/ 2;
    for (int i = 1; i <= divided; i++) {
      try {
        await (into(caseNoTable).insert(CaseNoTableData(
                id: i,
                caseName: "بایگانی سرباز",
                caseCode: "$i",
                isFull: false,
                description: "ایجاد شده توسط سیستم",
                createdAt: DateTime.now())
            .toCompanion(true)));
      } catch (e) {
        //ignore
      }
    }
    for (int i = 1; i <= divided; i++) {
      try {
        await into(caseNoTable).insert(CaseNoTableData(
                id: divided + i,
                caseName: "بایگانی امریه",
                caseCode: "$i",
                isFull: false,
                description: "ایجاد شده توسط سیستم",
                createdAt: DateTime.now())
            .toCompanion(true));
      } catch (e) {
        //ignore
      }
    }
  }
}
