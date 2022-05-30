
import 'package:drift/drift.dart';

import 'vacations_table.dart';

class DailyVacationTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  IntColumn get amount => integer()();
  TextColumn get vacationType => text()();
  TextColumn get description => text().nullable()();
  IntColumn get vacations => integer().references(VacationsTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
