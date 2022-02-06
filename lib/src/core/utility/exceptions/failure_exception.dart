import 'package:logging/logging.dart';
import 'package:sarbaz/src/core/config/config.dart';

class FailureException {
  final _logger = Injector.resolve<LoggerService>();

  late final String message;
  final Object exception;

  FailureException({required this.exception,required this.message}) {
    _logger.log(Level.ALL,
        message: "Exception: ${exception} with an error => ${exception.toString()}");
    _handleException();
  }

  @override
  String toString() => message;

  void _handleException() {
    if (exception is Exception) {
      
    }
  }
}
