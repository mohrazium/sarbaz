part of data;

class AuditTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get time => dateTime().nullable()();
  TextColumn get targetTable => text().nullable()();
  IntColumn get targetId => integer().nullable()();
  TextColumn get auditBy => text().nullable()();
  TextColumn get operation => text().nullable()();
  TextColumn get systemMessage => text().nullable()();
  TextColumn get descriptions => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
