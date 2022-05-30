import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/daily_absence_overtime_table.dart';
import '../tables/disciplinary_overtime_table.dart';
import '../tables/violations_overtime_table.dart';
part 'disciplinary_overtime_dao.g.dart';

@DriftAccessor(tables: [
  DisciplinaryOvertimeTable,
  ViolationsOvertimeTable,
  DailyAbsenceOvertimeTable,
])
class DisciplinaryOvertimeDAO extends DatabaseAccessor<SoldierDatabase> with _$DisciplinaryOvertimeDAOMixin {
  DisciplinaryOvertimeDAO(SoldierDatabase db) : super(db);
}
