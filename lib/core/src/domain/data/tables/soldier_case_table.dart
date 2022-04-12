part of data;

class SoldierCaseTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get membershipType => text()();
  TextColumn get dispatchField => text()();
  TextColumn get serviceCategory => text()();
  DateTimeColumn get startDateOfService => dateTime()();
  DateTimeColumn get endDateOfService => dateTime()();
  IntColumn get legalPeriodOfService => integer()();
  DateTimeColumn get introductionDate => dateTime()();
  IntColumn get lastPeriodOfService => integer().nullable()();
  IntColumn get amountOfService => integer().nullable()();
  IntColumn get overtime =>
      integer().references(OvertimeTable, #id).nullable()();
  IntColumn get vacations =>
      integer().references(VacationsTable, #id).nullable()();
  IntColumn get serviceDeficit =>
      integer().references(ServiceDeficitTable, #id).nullable()();
  IntColumn get rank => integer().references(RankTable, #id).nullable()();
  IntColumn get unit =>
      integer().references(UnitPropertiesTable,#id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
