part of io;

class Sqlite3Library {
  static void load() {
    if (Platform.isWindows) {
      open.overrideFor(OperatingSystem.windows, _openWindowsLib);
    }
  }

  static DynamicLibrary _openWindowsLib() {
    final libraryNextToScript = File(
        "C:\\Program Files\\Sarbaz\\libs\\sqlite3\\sqlite3.dll");
    logger.info( "opening lib : " + libraryNextToScript.path);
    return DynamicLibrary.open(libraryNextToScript.path);
  }
}
