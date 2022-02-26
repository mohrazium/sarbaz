part of data;

@DriftAccessor(tables: [EducationalInfoTable])
class EducationalInfoDAO extends DatabaseAccessor<SoldierDatabase>
    with _$EducationalInfoDAOMixin {
  EducationalInfoDAO(SoldierDatabase db) : super(db);
}
