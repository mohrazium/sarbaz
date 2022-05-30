
import 'package:drift/drift.dart';

import 'audit_table.dart';
import 'soldier_database.dart';

part 'audit_dao.g.dart';

@DriftAccessor(tables: [AuditTable])
class AuditDAO extends DatabaseAccessor<SoldierDatabase> with _$AuditDAOMixin {
  AuditDAO(SoldierDatabase db) : super(db);

  Future<AuditTableData> setup() {
    into(auditTable).insertOnConflictUpdate(AuditTableData(
      id: 1,
      time: DateTime.now(),
      auditBy: "SYSTEM",
      operation: "SETUP",
      descriptions: "Setup database and build database tables.",
    ).toCompanion(true));

    return (select(auditTable)..where((tbl) => tbl.id.equals(1))).getSingle();
  }

  Future<AuditTableData> doInsert(AuditTableData entry) {
    return into(auditTable).insertReturning(entry.toCompanion(true));
  }

  Future<List<AuditTableData>> findAll() async {
    return (select(auditTable)..orderBy([(t) => OrderingTerm.desc(t.time)])).get();
  }
}
