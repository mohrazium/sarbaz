part of data;

@DriftAccessor(tables: [ServiceDeficitRecordTable])
class ServiceDeficitRecordDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ServiceDeficitRecordDAOMixin {
  ServiceDeficitRecordDAO(SoldierDatabase db) : super(db);
}
