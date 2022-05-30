import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/violations_overtime_table.dart';
part 'violations_overtime_dao.g.dart';

@DriftAccessor(tables: [ViolationsOvertimeTable])
class ViolationsOvertimeDAO extends DatabaseAccessor<SoldierDatabase> with _$ViolationsOvertimeDAOMixin {
  ViolationsOvertimeDAO(SoldierDatabase db) : super(db);
}
