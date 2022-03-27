// ignore_for_file: constant_identifier_names

part of exceptions;

enum ExceptionType {
  NOT_FOUND,
  IGNORE,
}

class FailureException {
  late final String? message;
  final Object? exception;

  FailureException(
    this.message, {
    this.exception = Exception,
  }) {
    _handleException();
  }

  @override
  String toString() => message ?? "";

  void _handleException() {
    if (exception is Exception) {
      logger.log(
          level: Level.WARNING,
          message:
              "${exception.runtimeType} with an error => ${exception.toString()}");
    } else if (exception is ExceptionType) {
      if (exception == ExceptionType.NOT_FOUND) {
        logger.log(message: message ?? "Your object is null or not found!");
      } else if (exception == ExceptionType.IGNORE) {
        logger.log(message: message ?? "Your object ignored.");
      }
    }
  }
}
