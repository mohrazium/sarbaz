part of data;

@DriftAccessor(tables: [DailyAbsenceOvertimeTable])
class DailyAbsenceOvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DailyAbsenceOvertimeDAOMixin {
  DailyAbsenceOvertimeDAO(SoldierDatabase db) : super(db);
}
