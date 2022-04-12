part of data;

class SoldierTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get imagePath => text().nullable()();
  TextColumn get personnelCode => text().nullable()();
  TextColumn get latestStatus => text().nullable()();
  TextColumn get caseStatus => text()();
  BoolColumn get divisionStatus => boolean()();
  BoolColumn get isArchived => boolean()();
  TextColumn get archiveCaseNo => text().nullable()(); 
  IntColumn get caseNo =>
      integer().references(CaseNoTable, #id)();
  IntColumn get section => integer().references(SectionTable, #id).nullable()();
  IntColumn get trainingStatus =>
      integer().references(TrainingStatusTable, #id).nullable()();
  IntColumn get healthStatus =>
      integer().references(HealthStatusTable, #id).nullable()();
  IntColumn get soldierCase =>
      integer().references(SoldierCaseTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
