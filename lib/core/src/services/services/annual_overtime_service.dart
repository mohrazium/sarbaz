part of services;

abstract class AnnualOvertimeService extends Service<int, AnnualOvertimeModel> {
}

class AnnualOvertimeServiceImpl implements AnnualOvertimeService {
  final AnnualOvertimeDAO annualOvertimeDAO;

  AnnualOvertimeServiceImpl(this.annualOvertimeDAO);

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
  Future<int> save(AnnualOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(AnnualOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
