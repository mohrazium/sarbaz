part of data;

class SectionTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get locationName => text()();
  TextColumn get sectionCode => text().nullable()();
  TextColumn get sectionName => text().nullable()();
  TextColumn get sectionNameAbbr => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
