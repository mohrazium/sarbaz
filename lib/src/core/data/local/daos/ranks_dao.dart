import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/db/db.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

part 'ranks_dao.g.dart';

@DriftAccessor(tables: [RanksTable])
class RanksDAO extends DatabaseAccessor<SoldierDatabase>
    with _$RanksDAOMixin {
  RanksDAO(SoldierDatabase db) : super(db);
}
