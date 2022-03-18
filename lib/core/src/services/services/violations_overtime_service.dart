part of services;

abstract class ViolationsOvertimeService
    extends Service<int, ViolationsOvertimeModel> {}

class ViolationsOvertimeServiceImpl implements ViolationsOvertimeService {
   final ViolationsOvertimeDAO violationsOvertimeDAO;

  ViolationsOvertimeServiceImpl(this.violationsOvertimeDAO);

  @override
  Future<bool> delete(ViolationsOvertimeModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ViolationsOvertimeModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ViolationsOvertimeModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(ViolationsOvertimeModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(ViolationsOvertimeModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
