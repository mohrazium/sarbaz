part of data;

class ServiceDeficitRecordTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get type => text().nullable()();
  IntColumn get amount => integer()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
