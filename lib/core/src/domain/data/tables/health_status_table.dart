part of data;

class HealthStatusTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  BoolColumn get isHealthy => boolean()();
  TextColumn get accordingTo => text()();
  BoolColumn get isBGroup => boolean()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
