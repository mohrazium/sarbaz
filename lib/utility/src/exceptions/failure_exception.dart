// ignore_for_file: constant_identifier_names

part of exceptions;

enum ExceptionsType {
  NOT_FOUND,
}

class FailureException  {
  late final String? message;
  final Object? exception;

  FailureException({this.exception = Exception, this.message}) {
    _handleException();
  }

  @override
  String toString() => message ?? "";

  void _handleException() {
    if (exception is Exception) {
      logger.log(
          level: Level.WARNING,
          message: "$exception with an error => ${exception.toString()}");
    } else if (exception is ExceptionsType) {
      if (exception == ExceptionsType.NOT_FOUND) {
        logger.log(message: message ?? "Your object is null or not found!");
      }
    }
  }
}
