part of data;

@DriftAccessor(tables: [OperationalServiceDeficitRecordTable])
class OperationalServiceDeficitRecordDAO extends DatabaseAccessor<SoldierDatabase>
    with _$OperationalServiceDeficitRecordDAOMixin {
  OperationalServiceDeficitRecordDAO(SoldierDatabase db) : super(db);
}
