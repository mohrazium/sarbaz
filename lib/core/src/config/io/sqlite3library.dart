part of io;

class Sqlite3Library {
  static void load() {
    if (Platform.isWindows) {
      open.overrideFor(OperatingSystem.windows, _open);
    }
  }

  static DynamicLibrary _open() {
    final scriptDir = File(Platform.script.toFilePath()).parent;
    var pathSeparator = PlatformConfigs.pathSeparator();
    final libraryNextToScript = File(
        "${scriptDir.path}$pathSeparator+assets$pathSeparator+external_libs$pathSeparator+sqlite3.dll");
    logger.log(message: "opening lib : " + libraryNextToScript.path);
    return DynamicLibrary.open(libraryNextToScript.path);
  }
}
