import 'package:drift/drift.dart';

class RanksTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get rankNumber => integer()();
  TextColumn get rankName => text()();
}
