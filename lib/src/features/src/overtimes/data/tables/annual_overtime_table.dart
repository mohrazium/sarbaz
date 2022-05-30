
import 'package:drift/drift.dart';

class AnnualOvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get overtime => integer()();
  IntColumn get forgivenessOvertime => integer().nullable()();
  IntColumn get overtimeBalance => integer()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
