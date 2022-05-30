import 'package:drift/drift.dart';

class CaseNoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get caseName => text()();
  TextColumn get caseCode => text().nullable()();
  BoolColumn get isFull => boolean()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
