part of services;

abstract class VacationsService extends Service<int, VacationsModel> {}

class VacationsServiceImpl implements VacationsService {
   final VacationsDAO vacationsDAO;

  VacationsServiceImpl(this.vacationsDAO);

  @override
  Future<bool> delete(VacationsModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<VacationsModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<VacationsModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(VacationsModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(VacationsModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
