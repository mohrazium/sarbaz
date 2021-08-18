import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/data/local/daos/daos.dart';
import 'package:sarbaz/src/core/data/local/tables/tables.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sarbaz/src/core/config/config.dart';
part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [PersonalInfoTable])
abstract class AppDatabase extends FloorDatabase {
  PersonalInfoDAO get personalInfDAO;
}

class DbHelper {
  static Future<AppDatabase> get() async {
    return await $FloorAppDatabase.databaseBuilder(StringConstants.kDataBaseName).build();
  }
}
