part of data;

class PersonalInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get nationalCode =>
      text().withLength(min: 10, max: 10).customConstraint("UNIQUE")();
  TextColumn get nationalIdentity => text().nullable()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get fatherName => text().nullable()();
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  TextColumn get placeOfBirth => text().nullable()();
  TextColumn get placeOfIssue => text().nullable()();
  IntColumn get furtherInfo =>
      integer().references(FurtherInfoTable, #id).nullable()();
  IntColumn get contactInfo =>
      integer().references(ContactInfoTable, #id).nullable()();
  IntColumn get educationalInfo =>
      integer().references(EducationalInfoTable, #id).nullable()();
  IntColumn get soldier => integer().references(SoldierTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
