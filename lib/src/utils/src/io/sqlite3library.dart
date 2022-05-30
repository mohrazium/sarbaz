part of sarbaz.utils;


class Sqlite3Library {
  static void load() {
    if (Platform.isWindows) {
      sqlite3.open.overrideFor(sqlite3.OperatingSystem.windows, _openWindowsLib);
    }
  }

  static DynamicLibrary _openWindowsLib() {
    final libraryNextToScript = File("C:\\Program Files\\Sarbaz\\libs\\sqlite3\\sqlite3.dll");
    logger.info("opening lib : ${libraryNextToScript.path}");
    return DynamicLibrary.open(libraryNextToScript.path);
  }
}
