part of data;

class UnitPropertiesTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get unitName => text()();
  TextColumn get unitCode => text().nullable()();
  TextColumn get unitCity => text().nullable()();
  TextColumn get unitType => text().nullable()();
  
  
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
