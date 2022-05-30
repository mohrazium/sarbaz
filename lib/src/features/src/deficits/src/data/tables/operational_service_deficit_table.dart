
part of sarbaz.deficits.data;

class OperationalServiceDeficitRecordTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  IntColumn get durationOfPresence => integer()();
  IntColumn get deficitAmount => integer().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
