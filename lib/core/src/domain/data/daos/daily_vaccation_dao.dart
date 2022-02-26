part of data;

@DriftAccessor(tables: [DailyVaccationTable])
class DailyVaccationDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DailyVaccationDAOMixin {
  DailyVaccationDAO(SoldierDatabase db) : super(db);
}
