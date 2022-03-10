part of data;

class SoldierCaseTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get fileNo => text().nullable()();
  TextColumn get nationalIdentity => text().nullable()();
  TextColumn get archiveFileNo => text().nullable()();
  TextColumn get status => text().nullable()();
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
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
