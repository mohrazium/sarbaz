part of data;

@DriftAccessor(tables: [
  ServiceDeficitTable,
  ServiceDeficitRecordTable,
])
class ServiceDeficitDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ServiceDeficitDAOMixin {
  ServiceDeficitDAO(SoldierDatabase db) : super(db);
}
