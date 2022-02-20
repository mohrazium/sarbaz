part of data;

@DriftAccessor(tables: [TrainigStatusTable])
class TrainigStatusDAO extends DatabaseAccessor<SoldierDatabase>
    with _$TrainigStatusDAOMixin {
  TrainigStatusDAO(SoldierDatabase db) : super(db);
}
