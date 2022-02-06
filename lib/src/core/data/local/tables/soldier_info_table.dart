import 'package:drift/drift.dart';
import 'tables.dart';

class SoldierInfoTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get fileNo => text()();
  DateTimeColumn get dateOfDispatch => dateTime()();
  IntColumn get rankId => integer().references(RanksTable, #id).nullable()();
  BoolColumn get healthState => boolean()();
  BoolColumn get bGroup => boolean()();
  IntColumn get legalPeriodOfService => integer()();
  IntColumn get overtime => integer().withDefault(const Constant(0))();
  BoolColumn get divisionStatus =>
      boolean().withDefault(const Constant(false))();
  IntColumn get sectionId =>
      integer().references(SectionsTable, #id).nullable()();
  IntColumn get personalInfoId =>
      integer().references(PersonalInfoTable, #id)();
}
