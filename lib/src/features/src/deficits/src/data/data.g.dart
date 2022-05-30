// GENERATED CODE - DO NOT MODIFY BY HAND

part of sarbaz.deficits.data;

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$OperationalServiceDeficitRecordDAOMixin
    on DatabaseAccessor<SoldierDatabase> {
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
}
mixin _$ServiceDeficitDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
}
mixin _$ServiceDeficitRecordDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
}
