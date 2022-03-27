library io;

import 'dart:ffi';

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sarbaz/core/src/config/config.dart';
import 'package:sqlite3/open.dart';

part 'sqlite3library.dart';

class IO {
  static void loadLibraries() {
    Sqlite3Library.load();
  }

  static Future<String> getApplicationDirectory() async {
    var appDir = await getApplicationSupportDirectory();
    return appDir.path;
  }
}
