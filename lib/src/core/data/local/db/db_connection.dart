import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class DbConnection {
  static LazyDatabase openConnection() => LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(path.join(dbFolder.path, 'sarbaz_database.sqlite'));
        return NativeDatabase(file);
      });
}
