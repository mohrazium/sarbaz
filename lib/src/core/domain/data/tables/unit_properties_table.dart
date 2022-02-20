part of data;

class UnitPropertiesTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get unitName => text()();
  TextColumn get unitCode => text().nullable()();
  TextColumn get unitCity => text().nullable()();
  TextColumn get unitType => text().nullable()();
  IntColumn get sections =>
      integer().references(SectionTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
