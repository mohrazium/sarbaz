part of services;

abstract class AnnualOvertimeService extends Service<int, AnnualOvertimeModel> {
}

class AnnualOvertimeServiceImpl implements AnnualOvertimeService {
  late final AnnualOvertimeDAO annualOvertimeDAO;

  AnnualOvertimeServiceImpl() {
    annualOvertimeDAO =
        Get.find<SoldierDatabaseHelper>().instance.annualOvertimeDAO;
  }

  @override
  Future<bool> delete(AnnualOvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<AnnualOvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<AnnualOvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(AnnualOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(AnnualOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
