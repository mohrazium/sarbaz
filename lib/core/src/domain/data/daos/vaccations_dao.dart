part of data;

@DriftAccessor(tables: [
  VaccationsTable,
  DailyVaccationTable,
  HourlyVaccationTable,
])
class VaccationsDAO extends DatabaseAccessor<SoldierDatabase>
    with _$VaccationsDAOMixin {
  VaccationsDAO(SoldierDatabase db) : super(db);
}
