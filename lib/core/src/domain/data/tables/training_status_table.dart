part of data;

class TrainingStatusTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  TextColumn get placeName => text()();
  IntColumn get period => integer().nullable()();
  TextColumn get status => text().nullable()();
  TextColumn get type => text().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
