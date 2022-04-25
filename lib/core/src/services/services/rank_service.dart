part of services;

abstract class RankService extends Service<int, RankModel> {}

class RankServiceImpl implements RankService {
  final RankDAO _rankDAO;

  RankServiceImpl(this._rankDAO);

  @override
  Future<List<RankModel>?> findAll() async {
    List<RankModel> ranks = List.empty(growable: true);
    return await _rankDAO.findAll().then((values) {
      for (var item in values) {
        ranks.add(RankModel.fromJson(item.toJson()));
      }
      return ranks;
    }).onError((error, stackTrace) => throw FailureException(
        "Can not load all ranks, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<RankModel?> findById(int id) async {
    return await _rankDAO.findById(id).then((value) {
      return value != null ? RankModel.fromJson(value.toJson()) : null;
    }).onError((error, stackTrace) => throw FailureException(
        "Finding rank by id field, see the error :\n $error \n $stackTrace"));
  }

  @override
  Future<bool> delete(RankModel model) {
    // TODO: implement delete
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
