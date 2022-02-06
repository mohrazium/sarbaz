import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:sarbaz/src/core/data/local/daos/daos.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';

import 'db_connection.dart';

part 'soldier_database.g.dart';

@DriftDatabase(
  tables: [
    PersonalInfoTable,
    SoldierInfoTable,
    DailyVaccationsTable,
    RanksTable,
    SectionsTable,
    HourlyVaccationsTable,

  ],
  daos: [
    PersonalInfoDAO,
    SoldierInfoDAO,
    DailyVaccationsDAO,
    HourlyVaccationsDAO,
    RanksDAO,
    SectionsDAO,
  ],
)
class SoldierDatabase extends _$SoldierDatabase {
  SoldierDatabase() : super(DbConnection.openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}

@injectable
class SoldierDatabaseHelper {
  SoldierDatabase get instance => SoldierDatabase();
}
