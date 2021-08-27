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
    Logger.root.onRecord.listen((rec) {
      print(
          '${rec.level.name}: ${rec.time}: ${rec.loggerName} => ${rec.message}');
    });
  }
}
