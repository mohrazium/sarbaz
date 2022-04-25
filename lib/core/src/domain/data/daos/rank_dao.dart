part of data;

@DriftAccessor(tables: [RankTable])
class RankDAO extends DatabaseAccessor<SoldierDatabase>
    with _$RankDAOMixin {
 RankDAO(SoldierDatabase db) : super(db);

 Future<List<RankTableData>> findAll() async {
    return (select(rankTable)).get();
  }

  Future<RankTableData?> findById(int id) async {
    return (select(rankTable)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }
}