part of data;

class ContactInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get phoneNumber => text().nullable()();
  TextColumn get mobileNumber => text()();
  TextColumn get province => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get address => text()();
  TextColumn get postalCode => text().nullable()();
  IntColumn get distance => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
