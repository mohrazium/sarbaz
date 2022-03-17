part of data;

@DriftAccessor(tables: [ContactInfoTable,RelativeContactsInfoTable])
class ContactInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ContactInfoDAOMixin {
  ContactInfoDAO(SoldierDatabase db) : super(db);
}
