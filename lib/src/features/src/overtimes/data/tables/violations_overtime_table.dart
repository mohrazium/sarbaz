

import 'package:drift/drift.dart';

class ViolationsOvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get violationType => text()();
  IntColumn get overtime => integer()();
  IntColumn get forgivenessOvertime => integer()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
