part of services;

abstract class RankService extends Service<int, RankModel> {}

class RankServiceImpl implements RankService {
   final RankDAO rankDAO;

  RankServiceImpl(this.rankDAO);

  @override
  Future<bool> delete(RankModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<RankModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<RankModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(RankModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(RankModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
