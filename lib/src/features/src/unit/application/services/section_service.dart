
import 'package:sarbaz/src/common/common.dart';

import '../../data.dart';
import '../../domain.dart';

abstract class SectionService extends Service<int, SectionModel> {}

class SectionServiceImpl implements SectionService {
   final SectionDAO sectionDAO;

  SectionServiceImpl(this.sectionDAO);

  @override
  Future<bool> delete(SectionModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<SectionModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<SectionModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(SectionModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(SectionModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
