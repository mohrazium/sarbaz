part of data;

class FurtherInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get maritalState => text()();
  DateTimeColumn get dateOfMarriage => dateTime().nullable()();
  IntColumn get numberOfChilds => integer().nullable()();
  IntColumn get height => integer().nullable()();
  RealColumn get weight => real().nullable()();
  TextColumn get religion => text().nullable()();
  TextColumn get sect => text().nullable()();
  TextColumn get hairColor => text().nullable()();
  TextColumn get eyesColor => text().nullable()();
  TextColumn get bloodType => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
