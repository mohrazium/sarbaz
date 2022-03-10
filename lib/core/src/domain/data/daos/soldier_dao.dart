part of data;

@DriftAccessor(tables: [
  SoldierTable,
  SectionTable,
  TrainingStatusTable,
  HealthStatusTable,
  SoldierCaseTable,
])
class SoldierDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SoldierDAOMixin {
  SoldierDAO(SoldierDatabase db) : super(db);
}
