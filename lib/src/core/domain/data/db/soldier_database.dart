part of data;

@DriftDatabase(
  tables: [
    AnnualOvertimeTable,
    ContactInfoTable,
    DailyAbsenceOvertimeTable,
    DailyVaccationTable,
    DisciplinalOvertimeTable,
    EducationalInfoTable,
    FurtherInfoTable,
    HealthStatusTable,
    HourlyVaccationTable,
    OvertimeTable,
    PersonalInfoTable,
    RankTable,
    SectionTable,
    ServiceDeficitRecordTable,
    ServiceDeficitTable,
    SoldierCaseTable,
    SoldierTable,
    TrainigStatusTable,
    UnitPropertiesTable,
    VaccationsTable,
    ViolationsOvertimeTable,
  ],
  daos: [
   AnnualOvertimeDAO,
    ContactInfoDAO,
    DailyAbsenceOvertimeDAO,
    DailyVaccationDAO,
    DisciplinalOvertimeDAO,
    EducationalInfoDAO,
    FurtherInfoDAO,
    HealthStatusDAO,
    HourlyVaccationDAO,
    OvertimeDAO,
    PersonalInfoDAO,
    RankDAO,
    SectionDAO,
    ServiceDeficitRecordDAO,
    ServiceDeficitDAO,
    SoldierCaseDAO,
    SoldierDAO,
    TrainigStatusDAO,
    UnitPropertiesDAO,
    VaccationsDAO,
    ViolationsOvertimeDAO,
  ],
)
class SoldierDatabase extends _$SoldierDatabase {
  SoldierDatabase() : super(DbConnection.openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}

class SoldierDatabaseHelper {
  SoldierDatabase get instance => SoldierDatabase();
}
