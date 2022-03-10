part of data;

class ServiceDeficitTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get calculatedDeficitAmount => integer().nullable()();
  IntColumn get records =>
      integer().references(ServiceDeficitRecordTable, #id).nullable()();
       IntColumn get operationalRecords =>
      integer().references(OperationalServiceDeficitRecordTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
