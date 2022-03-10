part of data;

class VacationsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get amountOfEligible => integer().nullable()();
  IntColumn get amountOfSick => integer().nullable()();
  IntColumn get amountOfIncentive => integer().nullable()();
  IntColumn get eligibleUsed => integer().nullable()();
  IntColumn get sickUsed => integer().nullable()();
  IntColumn get incentiveUsed => integer().nullable()();
  IntColumn get daily =>
      integer().references(DailyVacationTable, #id).nullable()();
  IntColumn get hourly =>
      integer().references(HourlyVacationTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
