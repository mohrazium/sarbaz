part of data;

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
    CaseTable,
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
    CaseDAO,
  ],
)
class SoldierDatabase extends _$SoldierDatabase {
  SoldierDatabase() : super(DbConnection.openConnection());
  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          driftRuntimeOptions.defaultSerializer =
              const DefaultMapValueSerializer();
        },
        onCreate: (Migrator m) async {
          await m.createAll();
          for (int i = 0; i < Strings.gForcesOfRGuards.length; i++) {
            await into(rankTable).insertOnConflictUpdate(
                RankTableCompanion.insert(
                    id: Value(i + 1),
                    gradeCode: Value(i + 1),
                    name: Value(Strings.gForcesOfRGuards[i]),
                    createdAt: Value(DateTime.now())));
          }
        },
        onUpgrade: (Migrator m, int from, int to) async {
          await customStatement(
              'PRAGMA foreign_keys = OFF'); // disable foreign_keys before migrations

          await transaction(() async {
            // put your migration logic here
          });

          // Assert that the schema is valid after migrations
          if (true) {
            final wrongForeignKeys =
                await customSelect('PRAGMA foreign_key_check').get();
            assert(wrongForeignKeys.isEmpty,
                "${wrongForeignKeys.map((e) => e.data)}");
          }
        },
      );
}

class SoldierDatabaseHelper {
  SoldierDatabase get instance => SoldierDatabase();
}
