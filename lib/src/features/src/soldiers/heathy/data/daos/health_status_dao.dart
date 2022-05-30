import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/health_status_table.dart';
part 'health_status_dao.g.dart';

@DriftAccessor(tables: [HealthStatusTable])
class HealthStatusDAO extends DatabaseAccessor<SoldierDatabase> with _$HealthStatusDAOMixin {
  HealthStatusDAO(SoldierDatabase db) : super(db);
}
