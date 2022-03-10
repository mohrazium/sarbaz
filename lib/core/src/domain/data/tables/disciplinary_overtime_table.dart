part of data;

class DisciplinaryOvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get calculatedOvertime => integer()();
  IntColumn get violationsOvertimes =>
      integer().references(ViolationsOvertimeTable, #id).nullable()();
  IntColumn get dailyAbsenceOvertimes =>
      integer().references(DailyAbsenceOvertimeTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
