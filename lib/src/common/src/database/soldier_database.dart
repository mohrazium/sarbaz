
import 'package:drift/drift.dart';

import 'package:sarbaz/src/features/features.dart';
import 'package:sarbaz/src/localization/localization.dart';
import 'package:sarbaz/src/utils/utils.dart';

import '../../../features/features.dart';

import 'audit_dao.dart';
import 'audit_table.dart';

part 'soldier_database.g.dart';

@DriftDatabase(
  tables: [
    AnnualOvertimeTable,
    AuditTable,
    ContactInfoTable,
    DailyAbsenceOvertimeTable,
    DailyVacationTable,
    DisciplinaryOvertimeTable,
    EducationalInfoTable,
    FurtherInfoTable,
    HealthStatusTable,
    HourlyVacationTable,
    OperationalServiceDeficitRecordTable,
    OvertimeTable,
    PersonalInfoTable,
    RankTable,
    RelativeContactsInfoTable,
    SectionTable,
    ServiceDeficitRecordTable,
    ServiceDeficitTable,
    SoldierCaseTable,
    SoldierTable,
    TrainingStatusTable,
    UnitPropertiesTable,
    VacationsTable,
    ViolationsOvertimeTable,
    CaseNoTable,
  ],
  daos: [
    AnnualOvertimeDAO,
    AuditDAO,
    ContactInfoDAO,
    DailyAbsenceOvertimeDAO,
    DailyVacationDAO,
    DisciplinaryOvertimeDAO,
    EducationalInfoDAO,
    FurtherInfoDAO,
    HealthStatusDAO,
    HourlyVacationDAO,
    OperationalServiceDeficitRecordDAO,
    OvertimeDAO,
    PersonalInfoDAO,
    RankDAO,
    RelativeContactsInfoDAO,
    SectionDAO,
    ServiceDeficitRecordDAO,
    ServiceDeficitDAO,
    SoldierCaseDAO,
    SoldierDAO,
    TrainingStatusDAO,
    UnitPropertiesDAO,
    VacationsDAO,
    ViolationsOvertimeDAO,
    CaseNoDAO,
  ],
)
class SoldierDatabase extends _$SoldierDatabase {
  SoldierDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          driftRuntimeOptions.defaultSerializer = const DefaultMapValueSerializer();
        },
        onCreate: (Migrator m) async {
          await m.createAll();
          await insertRanksToTable();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          await customStatement('PRAGMA foreign_keys = OFF'); // disable foreign_keys before migrations

          await transaction(() async {
            // put your migration logic here
            // if (true) {
            //   final wrongForeignKeys =
            //       await customSelect('PRAGMA foreign_key_check').get();
            //   assert(wrongForeignKeys.isEmpty,
            //       "${wrongForeignKeys.map((e) => e.data)}");
            // }

            // if (from < 2) {
            //   m.addColumn(soldierCaseTable, soldierCaseTable.dispatcher);
            // } else if (from < 3) {
            //   m.alterTable(
            //       TableMigration(soldierCaseTable, columnTransformer: {
            //         soldierCaseTable.dispatchField : soldierCaseTable.dispatchField.cast(),
            //       }));
            // }
          });

          // Assert that the schema is valid after migrations
        },
      );

  Future<void> insertRanksToTable() async {
    for (int i = 0; i < Strings.gForcesOfRGuards.length; i++) {
      await into(rankTable).insertOnConflictUpdate(RankTableCompanion.insert(
          id: Value(i + 1),
          gradeCode: Value(i + 1),
          name: Value(Strings.gForcesOfRGuards[i]),
          createdAt: Value(DateTime.now())));
    }
  }
}
