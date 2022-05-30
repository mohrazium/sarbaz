import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/section_table.dart';
part 'section_dao.g.dart';

@DriftAccessor(tables: [SectionTable])
class SectionDAO extends DatabaseAccessor<SoldierDatabase> with _$SectionDAOMixin {
  SectionDAO(SoldierDatabase db) : super(db);
}
