part of data;

@DriftAccessor(tables: [DailyVacationTable])
class DailyVacationDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DailyVacationDAOMixin {
  DailyVacationDAO(SoldierDatabase db) : super(db);
}
