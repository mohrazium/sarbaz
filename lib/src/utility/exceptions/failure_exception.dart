part of exceptions;

class FailureException {
  final _logger = Get.find<LoggerService>();

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
