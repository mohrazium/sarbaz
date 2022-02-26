part of data;

@DriftAccessor(tables: [
  DisciplinalOvertimeTable,
  ViolationsOvertimeTable,
  DailyVaccationTable,
])
class DisciplinalOvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DisciplinalOvertimeDAOMixin {
  DisciplinalOvertimeDAO(SoldierDatabase db) : super(db);
}
