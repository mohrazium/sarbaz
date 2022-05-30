import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/daily_absence_overtime_table.dart';
part 'daily_absence_overtime_dao.g.dart';

@DriftAccessor(tables: [DailyAbsenceOvertimeTable])
class DailyAbsenceOvertimeDAO extends DatabaseAccessor<SoldierDatabase> with _$DailyAbsenceOvertimeDAOMixin {
  DailyAbsenceOvertimeDAO(SoldierDatabase db) : super(db);
}
