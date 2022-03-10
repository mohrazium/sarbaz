part of data;

@DriftAccessor(tables: [TrainingStatusTable])
class TrainingStatusDAO extends DatabaseAccessor<SoldierDatabase>
    with _$TrainingStatusDAOMixin {
  TrainingStatusDAO(SoldierDatabase db) : super(db);
}
