library lib_loader;

import 'dart:ffi';

import 'dart:io';
import 'package:sarbaz/core/src/config/config.dart';
import 'package:sqlite3/open.dart';

part 'sqlite3library.dart';

class LibLoader {
  static void load() {
    Sqlite3Library.load();
    }
}
