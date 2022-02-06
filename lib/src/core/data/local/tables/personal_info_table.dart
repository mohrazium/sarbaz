import 'package:drift/drift.dart';

class PersonalInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get nationalIdentity => text()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get suffixOfLastName => text().nullable()();
  TextColumn get fatherName => text()();
  TextColumn get dateOfBirth => text()();
  TextColumn get maritalStatus => text()();
  IntColumn get numberOfChildren => integer().nullable()();
  TextColumn get levelOfEducation => text()();
  TextColumn get filedOfStudy => text().nullable()();
  TextColumn get mobileNumber => text().nullable()();
  TextColumn get telephoneNumber => text().nullable()();
  TextColumn get address => text()();
  IntColumn get distance => integer().nullable()();
}
