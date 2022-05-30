
import 'package:drift/drift.dart';

class VacationsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  RealColumn get eligibleTotal => real().nullable()();
  RealColumn get eligibleBalance => real()();
  RealColumn get eligibleUsed => real()();
  RealColumn get eligibleValuePerMonth => real().nullable()();
  RealColumn get sickTotal => real().nullable()();
  RealColumn get sickBalance => real()();
  RealColumn get sickUsed => real()();
  RealColumn get sickValuePerMonth => real().nullable()();
  RealColumn get incentiveTotal => real().nullable()();
  RealColumn get incentiveBalance => real().nullable()();
  RealColumn get incentiveUsed => real().nullable()();
  RealColumn get incentiveValueLimit => real().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
