part of data;

class OvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get disciplinalOvertime =>
      integer().references(DisciplinalOvertimeTable, #id).nullable()();
  IntColumn get annualOvertime =>
      integer().references(AnnualOvertimeTable, #id).nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
