part of data;

// ignore: non_constant_identifier_names
SoldierDatabase? _sarbaz_database;

class SoldierDatabaseHelper {
  SoldierDatabase get dbInstance {
    if (_sarbaz_database == null) {
      _sarbaz_database = _soldierNativeDb();
      return _sarbaz_database!;
    } else {
      return _sarbaz_database!;
    }
  }

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
