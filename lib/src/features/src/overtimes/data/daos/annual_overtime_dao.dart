import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/annual_overtime_table.dart';
part 'annual_overtime_dao.g.dart';

@DriftAccessor(tables: [AnnualOvertimeTable])
class AnnualOvertimeDAO extends DatabaseAccessor<SoldierDatabase> with _$AnnualOvertimeDAOMixin {
  AnnualOvertimeDAO(SoldierDatabase db) : super(db);
}
