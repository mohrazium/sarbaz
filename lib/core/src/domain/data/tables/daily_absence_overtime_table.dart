part of data;

class DailyAbsenceOvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  BoolColumn get isVaccum => boolean()();
  IntColumn get absenceDays => integer()();
  IntColumn get overtime => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
