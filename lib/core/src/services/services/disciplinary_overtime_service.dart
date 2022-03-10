part of services;

abstract class DisciplinaryOvertimeService
    extends Service<int, DisciplinaryOvertimeModel> {}

class DisciplinaryOvertimeServiceImpl implements DisciplinaryOvertimeService {
   final DisciplinaryOvertimeDAO disciplinaryOvertimeDAO;

  DisciplinaryOvertimeServiceImpl(this.disciplinaryOvertimeDAO);
  @override
  Future<bool> delete(DisciplinaryOvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DisciplinaryOvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DisciplinaryOvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(DisciplinaryOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(DisciplinaryOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
