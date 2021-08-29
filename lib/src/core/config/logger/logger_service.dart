import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

@injectable
class LoggerService {
  Logger log(Level? logLevel, {required message}) {
    final Logger logger = Logger('SarbazLog');
    logLevel == null
        ? logger.log(Level.ALL, message)
        : logger.log(logLevel, message);
    return logger;
  }

  static void setup() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec) => print(
        '${_getPlatformNameAndVersion()}: ${rec.level.name}: ${rec.time.year}-${rec.time.month}-${rec.time.day} ${rec.time.hour}:${rec.time.minute}:${rec.time.second} : ${rec.loggerName} => ${rec.message}'));
    LoggerService lg = new LoggerService();
    lg.log(Level.INFO, message: "Logger service is started...");
  }

  static String _getPlatformNameAndVersion() {
    return "OS:${Platform.operatingSystem} ${Platform.operatingSystemVersion}";
  }
}
