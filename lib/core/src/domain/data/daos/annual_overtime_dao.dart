part of data;


@DriftAccessor(tables: [AnnualOvertimeTable])
class AnnualOvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$AnnualOvertimeDAOMixin {
  AnnualOvertimeDAO(SoldierDatabase db) : super(db);
}