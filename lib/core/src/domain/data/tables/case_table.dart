part of data;

class CaseTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get caseName => text()();
  IntColumn get caseCode => integer().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
