// ignore_for_file: avoid_print

part of config;

late LoggerService logger;
late File _logFile;

LoggerService _setLogger() {
  logger = LoggerService();
  // LogFile.init();
  return logger;
}

class LoggerService {
  static List<String> _logs = [];
  Logger log({Level? level, required message}) {
    final Logger logger = Logger('SarbazLog');
    level == null ? logger.log(Level.ALL, message) : logger.log(level, message);
    return logger;
  }

  static void setup() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec) async {
      var log =
          // '${_getPlatformNameAndVersion()}: ${rec.level.name}: ${rec.time.year}-${rec.time.month}-${rec.time.day} ${rec.time.hour}:${rec.time.minute}:${rec.time.second} : ${rec.loggerName} => ${rec.message}'),
          '${rec.level.name}: ${rec.time.year}-${rec.time.month}-${rec.time.day} ${rec.time.hour}:${rec.time.minute}:${rec.time.second} : ${rec.loggerName} => ${rec.message}';
      print(log);
      _logs.add(log);
    });
    // .onDone(() {
    //   try {
    //     for (var element in _logs) {
    //       LogFile.writeLog(element);
    //     }
    //   } catch (e) {}
    // });
    _setLogger()
        .log(level: Level.INFO, message: "Logger service is started...");
  }
}

class LogFile {
  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static void init() async {
    final path = await _localPath;
    _logFile = File('$path${PlatformConfigs.pathSeparator()}soldier_log.txt');
  }

  Future<String> readLogs() async {
    try {
      return await _logFile.readAsString();
    } catch (e) {
      return "Noting in file.";
    }
  }

  static void writeLog(String log) {
    _logFile.writeAsString(log, mode: FileMode.append);
  }
}
