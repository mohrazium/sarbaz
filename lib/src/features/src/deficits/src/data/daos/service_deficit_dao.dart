part of sarbaz.deficits.data;

@DriftAccessor(tables: [
  ServiceDeficitTable,
  ServiceDeficitRecordTable,
  OperationalServiceDeficitRecordTable,
])
class ServiceDeficitDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ServiceDeficitDAOMixin {
  ServiceDeficitDAO(SoldierDatabase db) : super(db);
}
