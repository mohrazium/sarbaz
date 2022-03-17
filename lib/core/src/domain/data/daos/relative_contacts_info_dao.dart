part of data;

@DriftAccessor(tables: [RelativeContactsInfoTable])
class RelativeContactsInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$RelativeContactsInfoDAOMixin {
  RelativeContactsInfoDAO(SoldierDatabase db) : super(db);
}
