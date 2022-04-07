part of data;

@DriftAccessor(tables: [
  PersonalInfoTable,
  FurtherInfoTable,
  ContactInfoTable,
  EducationalInfoTable,
  SoldierTable,
])
class PersonalInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$PersonalInfoDAOMixin {
  PersonalInfoDAO(SoldierDatabase db) : super(db);

  Future<PersonalInfoTableData> doInsert(Map<String, dynamic> entry) {
    final data = PersonalInfoTableData.fromJson(entry);
    return into(personalInfoTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
  }

  Future<List<PersonalInfoTableData>> findAll() async {
    return (select(personalInfoTable)
          ..orderBy([(t) => OrderingTerm.desc(t.id)]))
        .get();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = PersonalInfoTableData.fromJson(entry);
    return await update(personalInfoTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    return await (delete(personalInfoTable)
                  ..where((tbl) => tbl.id.equals(entry["id"].value as int)))
                .go();
  }

  Future<PersonalInfoTableData?> findById(int id) async {
    return (select(personalInfoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<PersonalInfoTableData?> findByNationalCode(String code) async {
    return (select(personalInfoTable)
          ..where((tbl) => tbl.nationalCode.equals(code)))
        .watchSingleOrNull()
        .first;
  }
}
