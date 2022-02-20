part of data;

class RankTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get gradeCode => integer().nullable()();
  TextColumn get name => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
