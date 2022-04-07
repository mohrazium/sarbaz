part of data;

@DriftAccessor(tables: [RelativeContactsInfoTable])
class RelativeContactsInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$RelativeContactsInfoDAOMixin {
  RelativeContactsInfoDAO(SoldierDatabase db) : super(db);

  Future<RelativeContactsInfoTableData> doInsert(
      Map<String, dynamic> entry, int contactInfoId) async {
    final data = RelativeContactsInfoTableData.fromJson(entry);
    return await into(relativeContactsInfoTable).insertReturning(data
        .copyWith(contactInfo: contactInfoId, createdAt: DateTime.now())
        .toCompanion(true));
  }

  Future<List<RelativeContactsInfoTableData>> findAllByContactId(
      int contactInfoId) {
    return (select(relativeContactsInfoTable)
          ..where((tbl) => tbl.contactInfo.equals(contactInfoId)))
        .get();
  }

  Future<RelativeContactsInfoTableData?> findById(int id) {
    return (select(relativeContactsInfoTable)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<bool> doUpdate(Map<String, dynamic> entry) async {
    final entryData = RelativeContactsInfoTableData.fromJson(entry);
    return await update(relativeContactsInfoTable).replace(
        entryData.copyWith(updatedAt: DateTime.now()).toCompanion(true));
  }

  Future<int> doDelete(Map<String, dynamic> entry) async {
    final entryData = RelativeContactsInfoTableData.fromJson(entry);
    return await (delete(relativeContactsInfoTable)
          ..where((tbl) => tbl.id.equals(entryData.id)))
        .go();
  }
}
