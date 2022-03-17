part of data;

@DriftAccessor(tables: [
  VacationsTable,
  DailyVacationTable,
  HourlyVacationTable,
])
class VacationsDAO extends DatabaseAccessor<SoldierDatabase>
    with _$VacationsDAOMixin {
  VacationsDAO(SoldierDatabase db) : super(db);
}
