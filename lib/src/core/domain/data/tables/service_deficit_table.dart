part of data;

class ServiceDeficitTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get claculatedDeficitAmount => integer().nullable()();
  IntColumn get records =>
      integer().references(ServiceDeficitRecordTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
