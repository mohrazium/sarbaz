part of data;

class SoldierTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get imagePath => text().nullable()();
  TextColumn get personnelCode => text().nullable()();
  TextColumn get latestStatus => text().nullable()();
  BoolColumn get divisionStatus => boolean().nullable()();
  IntColumn get section => integer().references(SectionTable, #id).nullable()();
  IntColumn get trainigStatus =>
      integer().references(TrainigStatusTable, #id).nullable()();
  IntColumn get healthStatus =>
      integer().references(HealthStatusTable, #id).nullable()();
  IntColumn get soldierCase =>
      integer().references(SoldierCaseTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
