part of data;

@DriftAccessor(tables: [
  SoldierCaseTable,
  OvertimeTable,
  VaccationsTable,
  ServiceDeficitTable,
  RankTable,
])
class SoldierCaseDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SoldierCaseDAOMixin {
  SoldierCaseDAO(SoldierDatabase db) : super(db);
}
