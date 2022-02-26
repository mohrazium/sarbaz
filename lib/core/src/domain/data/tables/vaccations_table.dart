part of data;

class VaccationsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get amountOfEligibleVaccations => integer().nullable()();
  IntColumn get amountOfSickVaccations => integer().nullable()();
  IntColumn get amountOfIncentiveVaccations => integer().nullable()();
  IntColumn get eligibleVaccationsUsed => integer().nullable()();
  IntColumn get sickVaccationsUsed => integer().nullable()();
  IntColumn get incentiveVaccationsUsed => integer().nullable()();
  IntColumn get dailyVaccations =>
      integer().references(DailyVaccationTable, #id).nullable()();
  IntColumn get hourlyVaccations =>
      integer().references(HourlyVaccationTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
