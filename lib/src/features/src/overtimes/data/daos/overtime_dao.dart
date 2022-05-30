import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/annual_overtime_table.dart';
import '../tables/disciplinary_overtime_table.dart';
import '../tables/overtime_table.dart';
part 'overtime_dao.g.dart';

@DriftAccessor(tables: [
  OvertimeTable,
  DisciplinaryOvertimeTable,
  AnnualOvertimeTable,
])
class OvertimeDAO extends DatabaseAccessor<SoldierDatabase> with _$OvertimeDAOMixin {
  OvertimeDAO(SoldierDatabase db) : super(db);
}
