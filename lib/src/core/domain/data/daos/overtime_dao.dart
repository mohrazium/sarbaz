part of data;

@DriftAccessor(tables: [OvertimeTable,DisciplinalOvertimeTable,AnnualOvertimeTable,])
class OvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$OvertimeDAOMixin {
  OvertimeDAO(SoldierDatabase db) : super(db);
}
