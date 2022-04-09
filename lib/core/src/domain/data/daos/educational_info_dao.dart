part of data;

@DriftAccessor(tables: [EducationalInfoTable,PersonalInfoTable])
class EducationalInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$EducationalInfoDAOMixin {
  EducationalInfoDAO(SoldierDatabase db) : super(db);


  Future<EducationalInfoTableData> doInsert(
      Map<String, dynamic> entry, int personalInfoId) async {
    final data = EducationalInfoTableData.fromJson(entry);
    final result = await into(educationalInfoTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE personal_info_table SET educational_info = ? WHERE id = ?',
      updates: {personalInfoTable},
      variables: [
        Variable.withInt(result.id!),
        Variable.withInt(personalInfoId)
      ],
    );
    return result;
  }

  Future<EducationalInfoTableData?> findById(int id) {
    return (select(educationalInfoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = EducationalInfoTableData.fromJson(entry);
    return await update(educationalInfoTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

}
