import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../tables/section_table.dart';
import '../tables/unit_properties_table.dart';
part 'unit_properties_dao.g.dart';

@DriftAccessor(tables: [
  UnitPropertiesTable,
  SectionTable,
])
class UnitPropertiesDAO extends DatabaseAccessor<SoldierDatabase> with _$UnitPropertiesDAOMixin {
  UnitPropertiesDAO(SoldierDatabase db) : super(db);
}
