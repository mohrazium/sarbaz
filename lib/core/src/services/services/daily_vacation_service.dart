part of services;

abstract class DailyVacationService extends Service<int, DailyVacationModel> {
 
}

class DailyVacationServiceImpl implements DailyVacationService {
   final DailyVacationDAO dailyVacationDAO;

  DailyVacationServiceImpl(
    this.dailyVacationDAO
  );

  @override
  Future<bool> delete(DailyVacationModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DailyVacationModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DailyVacationModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(DailyVacationModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(DailyVacationModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
