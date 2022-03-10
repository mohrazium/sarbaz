part of data;

class OvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get disciplinaryOvertime =>
      integer().references(DisciplinaryOvertimeTable, #id).nullable()();
  IntColumn get annualOvertime =>
      integer().references(AnnualOvertimeTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
