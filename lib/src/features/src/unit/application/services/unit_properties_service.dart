
import 'package:sarbaz/src/common/common.dart';

import '../../data.dart';
import '../../domain.dart';

abstract class UnitPropertiesService extends Service<int, UnitPropertiesModel> {
}

class UnitPropertiesServiceImpl implements UnitPropertiesService {
   final UnitPropertiesDAO unitPropertiesDAO;

  UnitPropertiesServiceImpl(this.unitPropertiesDAO);

  @override
  Future<bool> delete(UnitPropertiesModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UnitPropertiesModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<UnitPropertiesModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(UnitPropertiesModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(UnitPropertiesModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
