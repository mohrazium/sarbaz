part of data;

@DriftAccessor(tables: [RankTable])
class RankDAO extends DatabaseAccessor<SoldierDatabase>
    with _$RankDAOMixin {
 RankDAO(SoldierDatabase db) : super(db);
}