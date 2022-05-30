part of sarbaz.deficits.data;

@DriftAccessor(tables: [OperationalServiceDeficitRecordTable])
class OperationalServiceDeficitRecordDAO extends DatabaseAccessor<SoldierDatabase>
    with _$OperationalServiceDeficitRecordDAOMixin {
  OperationalServiceDeficitRecordDAO(SoldierDatabase db) : super(db);
}
