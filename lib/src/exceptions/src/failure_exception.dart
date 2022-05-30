// ignore_for_file: constant_identifier_names


import '../../config/config.dart';
import 'exceptions_type.dart';

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
      logger.error(
          "${exception.runtimeType} with an error => ${exception.toString()}");
    } else if (exception is ExceptionType) {
      if (exception == ExceptionType.NOT_FOUND) {
        logger.info(message ?? "Your object is null or not found!");
      } else if (exception == ExceptionType.IGNORE) {
        logger.info(message ?? "Your object ignored.");
      }
    }
  }
}
