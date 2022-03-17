part of data;

class RelativeContactsInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get nameAndFamily => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get workAddress => text().nullable()();
  TextColumn get homeAddress => text().nullable()();
  IntColumn get contactInfo =>
      integer().references(ContactInfoTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
