part of data;

@DriftAccessor(tables: [FurtherInfoTable, PersonalInfoTable])
class FurtherInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$FurtherInfoDAOMixin {
  FurtherInfoDAO(SoldierDatabase db) : super(db);
  Future<FurtherInfoTableData> doInsert(
      Map<String, dynamic> entry, int personalInfoId) async {
    final data = FurtherInfoTableData.fromJson(entry);
    final result = await into(furtherInfoTable).insertReturning(
        data.copyWith(createdAt: DateTime.now()).toCompanion(true));
    customUpdate(
      'UPDATE personal_info_table SET further_info = ? WHERE id = ?',
      updates: {personalInfoTable},
      variables: [
        Variable.withInt(result.id!),
        Variable.withInt(personalInfoId)
      ],
    );
    return result;
  }

  Future<FurtherInfoTableData?> findById(int id) {
    return (select(furtherInfoTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }
}
