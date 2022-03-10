part of data;

@DriftAccessor(tables: [AuditTable])
class CaseDAO extends DatabaseAccessor<SoldierDatabase> with _$CaseDAOMixin {
  CaseDAO(SoldierDatabase db) : super(db);
}
