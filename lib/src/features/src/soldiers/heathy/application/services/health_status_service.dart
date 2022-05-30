
import 'package:sarbaz/src/common/common.dart';

import '../../data.dart';
import '../../domain.dart';

abstract class HealthStatusService extends Service<int, HealthStatusModel> {}

class HealthStatusServiceImpl implements HealthStatusService {
  final HealthStatusDAO healthStatusDAO;

  HealthStatusServiceImpl(this.healthStatusDAO);
  @override
  Future<bool> delete(HealthStatusModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<HealthStatusModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<HealthStatusModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(HealthStatusModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(HealthStatusModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
