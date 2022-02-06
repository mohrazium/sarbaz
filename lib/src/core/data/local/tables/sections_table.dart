import 'package:drift/drift.dart';

class SectionsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get locationName => text()();
  TextColumn get sectionName => text().nullable()();
  TextColumn get sectionNameAbbr => text().nullable()();
}
