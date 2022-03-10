part of data;

@DriftAccessor(tables: [
  DisciplinaryOvertimeTable,
  ViolationsOvertimeTable,
  DailyAbsenceOvertimeTable,
])
class DisciplinaryOvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DisciplinaryOvertimeDAOMixin {
  DisciplinaryOvertimeDAO(SoldierDatabase db) : super(db);
}
