part of services;

abstract class TrainingStatusService extends Service<int, TrainingStatusModel> {}

class TrainingStatusServiceImpl implements TrainingStatusService {
  final TrainingStatusDAO trainingStatusDAO;

  TrainingStatusServiceImpl(this.trainingStatusDAO);

  @override
  Future<bool> delete(TrainingStatusModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<TrainingStatusModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<TrainingStatusModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(TrainingStatusModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(TrainingStatusModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
