part of data;

@DriftAccessor(tables: [
  UnitPropertiesTable,
  SectionTable,
])
class UnitPropertiesDAO extends DatabaseAccessor<SoldierDatabase>
    with _$UnitPropertiesDAOMixin {
  UnitPropertiesDAO(SoldierDatabase db) : super(db);
}
