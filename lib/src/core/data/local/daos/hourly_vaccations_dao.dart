import 'package:drift/drift.dart';
import 'package:sarbaz/src/core/data/local/db/db.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

part 'hourly_vaccations_dao.g.dart';

@DriftAccessor(tables: [HourlyVaccationsTable])
class HourlyVaccationsDAO extends DatabaseAccessor<SoldierDatabase>
    with _$HourlyVaccationsDAOMixin {
  HourlyVaccationsDAO(SoldierDatabase db) : super(db);
}
