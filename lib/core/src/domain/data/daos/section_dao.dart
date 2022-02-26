part of data;

@DriftAccessor(tables: [SectionTable])
class SectionDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SectionDAOMixin {
  SectionDAO(SoldierDatabase db) : super(db);
}
