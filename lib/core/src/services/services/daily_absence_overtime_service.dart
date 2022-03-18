part of services;

abstract class DailyAbsenceOvertimeService
    extends Service<int, DailyAbsenceOvertimeModel> {}

class DailyAbsenceOvertimeServiceImpl implements DailyAbsenceOvertimeService {
   final DailyAbsenceOvertimeDAO dailyAbsenceOvertimeDAO;

  DailyAbsenceOvertimeServiceImpl(this.dailyAbsenceOvertimeDAO);

  @override
  Future<bool> delete(DailyAbsenceOvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<DailyAbsenceOvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<DailyAbsenceOvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(DailyAbsenceOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(DailyAbsenceOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
