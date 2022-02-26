part of data;

@DriftAccessor(tables: [FurtherInfoTable])
class FurtherInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$FurtherInfoDAOMixin {
  FurtherInfoDAO(SoldierDatabase db) : super(db);
}
