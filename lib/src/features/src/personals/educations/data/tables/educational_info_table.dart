
import 'package:drift/drift.dart';

class EducationalInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get levelOfEducation => text()();
  TextColumn get fieldOfStudy => text().nullable()();
  TextColumn get educationPlace => text().nullable()();
  RealColumn get grade => real().nullable()();
  TextColumn get skills => text().nullable()();
  BoolColumn get permissionToStudy => boolean().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
