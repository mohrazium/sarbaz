part of services;

abstract class DailyVaccationService extends Service<int, DailyVaccationModel> {
 
}

class DailyVaccationServiceImpl implements DailyVaccationService {
  late final DailyVaccationDAO dailyVaccationDAO;

  DailyVaccationServiceImpl() {
    dailyVaccationDAO =
        Get.find<SoldierDatabaseHelper>().instance.dailyVaccationDAO;
  }

  @override
  Future<bool> delete(DailyVaccationModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DailyVaccationModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DailyVaccationModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(DailyVaccationModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(DailyVaccationModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
