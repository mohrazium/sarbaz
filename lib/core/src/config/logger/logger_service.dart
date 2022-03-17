part of config;

late LoggerService logger;

LoggerService _setLogger() {
  logger = LoggerService();
  return logger;
}

class LoggerService {
  Logger log({Level? level, required message}) {
    final Logger logger = Logger('SarbazLog');
    level == null ? logger.log(Level.ALL, message) : logger.log(level, message);
    return logger;
  }

  static void setup() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(
      (rec) => print(
          // '${_getPlatformNameAndVersion()}: ${rec.level.name}: ${rec.time.year}-${rec.time.month}-${rec.time.day} ${rec.time.hour}:${rec.time.minute}:${rec.time.second} : ${rec.loggerName} => ${rec.message}'),
          '${rec.level.name}: ${rec.time.year}-${rec.time.month}-${rec.time.day} ${rec.time.hour}:${rec.time.minute}:${rec.time.second} : ${rec.loggerName} => ${rec.message}'),
    );
    _setLogger().log(
        level: Level.INFO,
        message:
            "${_getPlatformNameAndVersion()} : Logger service is started...");
  }

  static String _getPlatformNameAndVersion() {
    return "OS:${Platform.operatingSystem} ${Platform.operatingSystemVersion}";
  }
}
