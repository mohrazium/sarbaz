part of data;

class OperationalServiceDeficitRecordTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  IntColumn get durationOfPresence => integer()();
  IntColumn get deficitAmount => integer().nullable()();
}
