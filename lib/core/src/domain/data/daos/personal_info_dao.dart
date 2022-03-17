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
    return into(personalInfoTable).insertReturning(
        PersonalInfoTableData.fromJson(entry,
                serializer: const DefaultMapValueSerializer())
            .toCompanion(true));
  }

  Future<List<PersonalInfoTableData>> findAll() async {
    return (select(personalInfoTable)
          ..orderBy([(t) => OrderingTerm.desc(t.id)]))
        .get();
  }

  Future<PersonalInfoTableData> doUpdate(Map<String, dynamic> entry) async {
    var isUpdated = await update(personalInfoTable)
        .replace(PersonalInfoTableData.fromJson(entry).toCompanion(false));
    if (isUpdated) {
      return (select(personalInfoTable)
            ..where((tbl) => tbl.id.equals(entry['id'].value as int)))
          .watchSingle()
          .first;
    }
    return Future.error("Error in updating personal info");
  }

  Future<bool> doDelete(Map<String, dynamic> entry) async {
    return await (delete(personalInfoTable)
                  ..where((tbl) => tbl.id.equals(entry["id"].value as int)))
                .go() ==
            1
        ? Future.value(true)
        : Future.value(false);
  }

  Future<PersonalInfoTableData?> findById(int id) async {
    return (select(personalInfoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }
   Future<PersonalInfoTableData?> findByNationalCode(String code) async {
    return (select(personalInfoTable)..where((tbl) => tbl.nationalCode.equals(code))).watchSingleOrNull().first;
  }
}
