part of data;

class AnnualOvertimeTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get overtime => integer()();
  IntColumn get forgivenessOvertime => integer().nullable()();
  IntColumn get overtimeBalance => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
