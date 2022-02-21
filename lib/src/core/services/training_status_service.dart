part of services;
abstract class TrainigStatusService extends Service<int, TrainigStatusModel> {
 
}

class TrainigStatusServiceImpl implements TrainigStatusService {
  late final TrainigStatusDAO trainigStatusDAO;

  TrainigStatusServiceImpl() {
    trainigStatusDAO =
        Get.find<SoldierDatabaseHelper>().instance.trainigStatusDAO;
  }

  @override
  Future<bool> delete(TrainigStatusModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<TrainigStatusModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<TrainigStatusModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(TrainigStatusModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(TrainigStatusModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
