// import 'package:floor/floor.dart';
// import 'package:sarbaz/src/core/data/local/tables/tables.dart';

// @dao
// abstract class SectionsDAO {
//   @delete
//   Future<void> doDelete(SectionsTable e);

//   @insert
//   Future<void> doInsert(SectionsTable e);

//   @update
//   Future<void> doUpdate(SectionsTable e);
//   @Query('SELECT * FROM tbl_sections;')
//   Future<List<SectionsTable>> findAll();
//   @Query('SELECT * FROM tbl_sections ts WHERE ts.id = ' ':id' ';')
//   Future<SectionsTable?> findById(int id);
// }
import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/db/db.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

part 'sections_dao.g.dart';

@DriftAccessor(tables: [SectionsTable])
class SectionsDAO extends DatabaseAccessor<SoldierDatabase>
    with _$SectionsDAOMixin {
  SectionsDAO(SoldierDatabase db) : super(db);
}
