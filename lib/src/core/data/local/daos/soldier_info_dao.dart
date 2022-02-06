
import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/db/db.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

part 'soldier_info_dao.g.dart';

@DriftAccessor(tables: [SoldierInfoTable])
class SoldierInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SoldierInfoDAOMixin {
  SoldierInfoDAO(SoldierDatabase db) : super(db);
}
