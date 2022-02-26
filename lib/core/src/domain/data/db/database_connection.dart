part of data;

class DbConnection {
  static LazyDatabase openConnection() => LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(path.join(dbFolder.path, 'sarbaz_database.sqlite'));
        return NativeDatabase(file);
      });
}
