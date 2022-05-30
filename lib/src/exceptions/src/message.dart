
import '../../config/config.dart';
import 'exceptions_type.dart';

class Message {
  late final String? message;
  final ExceptionType type;

  Message(this.message, {this.type = ExceptionType.WARNING}) {
    _handle();
  }

  @override
  String toString() => message ?? "";

  void _handle() {
    logger.info("${type.name} message was throw with content : $message");
  }
}

class Messages {
  static const String noEnoughEligibleBalance = "مانده مرخصی  استحقاقی صفر و یا کمتر از مرخصی درخواستی است";
  static const String noEnoughIncentiveBalance = "مانده مرخصی تشویقی صفر و یا کمتر از مرخصی درخواستی است";
  static const String noEnoughSickBalance = "مانده مرخصی  استعلاجی صفر و یا کمتر از مرخصی درخواستی است";

  static const String vacationDuplicated="در این تاریخ قبلا مرخصی ثبت شده است";
}
