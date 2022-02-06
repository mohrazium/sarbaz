import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

class DailyVaccationsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  IntColumn get totalDays => integer()();
  TextColumn get vacctionType => text()();
  IntColumn get soldierInfoId => integer().references(SoldierInfoTable, #id)();
}
