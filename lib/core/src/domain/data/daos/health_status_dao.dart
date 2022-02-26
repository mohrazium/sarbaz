part of data;

@DriftAccessor(tables: [HealthStatusTable])
class HealthStatusDAO extends DatabaseAccessor<SoldierDatabase>
    with _$HealthStatusDAOMixin {
  HealthStatusDAO(SoldierDatabase db) : super(db);
}
