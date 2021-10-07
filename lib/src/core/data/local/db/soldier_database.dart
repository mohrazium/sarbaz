import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/data/local/daos/daos.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sarbaz/src/core/config/config.dart';
part 'soldier_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [PersonalInfoTable])
abstract class SoldierDatabase extends FloorDatabase {
  PersonalInfoDAO get personalInfoDAO;
}

class DbHelper {
  static Future<SoldierDatabase> instance() async {
    return await $FloorSoldierDatabase
        .databaseBuilder(DbConstants.dataBaseName).build();
  }
}
