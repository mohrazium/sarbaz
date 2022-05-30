import 'package:drift/drift.dart';
import 'package:sarbaz/src/common/common.dart';

import '../../data.dart';
part 'rank_dao.g.dart';

@DriftAccessor(tables: [RankTable])
class RankDAO extends DatabaseAccessor<SoldierDatabase> with _$RankDAOMixin {
  RankDAO(SoldierDatabase db) : super(db);

  Future<List<RankTableData>> findAll() async {
    return (select(rankTable)).get();
  }

  Future<RankTableData?> findById(int id) async {
    return (select(rankTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }
}
