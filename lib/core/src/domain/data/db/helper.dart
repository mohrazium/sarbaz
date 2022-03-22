part of data;

class SoldierDatabaseHelper {
  SoldierDatabase get dbInstance => _soldierNativeDb();
  AuditDAO get audit => dbInstance.auditDAO;

  SoldierDatabase _soldierNativeDb() {
    final db = LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(path.join(dbFolder.path, 'sarbaz_database.sqlite'));
      return NativeDatabase(file);
    });
    return SoldierDatabase(db);
  }
}
