part of data;

@DriftAccessor(tables: [ViolationsOvertimeTable])
class ViolationsOvertimeDAO extends DatabaseAccessor<SoldierDatabase>
    with _$ViolationsOvertimeDAOMixin {
  ViolationsOvertimeDAO(SoldierDatabase db) : super(db);
}
