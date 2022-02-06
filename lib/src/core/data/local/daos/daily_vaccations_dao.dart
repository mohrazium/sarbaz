
import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/db/db.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

part 'daily_vaccations_dao.g.dart';

@DriftAccessor(tables: [DailyVaccationsTable])
class DailyVaccationsDAO extends DatabaseAccessor<SoldierDatabase>
    with _$DailyVaccationsDAOMixin {
  DailyVaccationsDAO(SoldierDatabase db) : super(db);
}
