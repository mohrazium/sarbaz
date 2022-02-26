part of services;

abstract class DisciplinalOvertimeService
    extends Service<int, DisciplinalOvertimeModel> {}

class DisciplinalOvertimeServiceImpl implements DisciplinalOvertimeService {
  late final DisciplinalOvertimeDAO disciplinalOvertimeDAO;

  DisciplinalOvertimeServiceImpl() {
    disciplinalOvertimeDAO =
        Get.find<SoldierDatabaseHelper>().instance.disciplinalOvertimeDAO;
  }

  @override
  Future<bool> delete(DisciplinalOvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DisciplinalOvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DisciplinalOvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(DisciplinalOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(DisciplinalOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
