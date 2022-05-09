part of mixins;

mixin DateConverterMixin {
  String shamsiNow() => _Date.toShamsi(DateTime.now());

  String toShamsi(DateTime? dateTime) => _Date.toShamsi(dateTime);

  DateTime toDateTime({
    int? year,
    int? month,
    int? day,
    int hour = 0,
    int minute = 0,
    int second = 0,
    String? shamsiDate,
    int? yearsBefore,
  }) {
    if (shamsiDate == null) {
      return _Date.toDateTime(year: year!, month: month!, day: day!);
    } else {
      return _Date.toDateTime(shamsiDate: shamsiDate);
    }
  }

  int differenceInDays(String startShamsiDate, String endShamsiDate) {
    final start = _Date.toDateTime(shamsiDate: startShamsiDate);
    final end = _Date.toDateTime(shamsiDate: endShamsiDate);
    return _Date.differenceInDays(start, end);
  }

  int differenceInHours(String startTime, String endTime) {
    final start = _Date.toDateTime(shamsiDate: startTime);
    final end = _Date.toDateTime(shamsiDate: endTime);
    return _Date.differenceInHours(start, end);
  }

  String calculateEndDate({
    required String startDate,
    required int months,
    required int pastDays,
  }) {
    final start = _Date.toDateTime(shamsiDate: startDate);
    final calculated = _Date.calculateEndDate(start, months, pastDays);
    return _Date.toShamsi(calculated);
  }
  
}

class _Date {
  static String toShamsi(DateTime? dateTime) {
    if (dateTime != null) {
      Jalali jalali = dateTime.toJalali();
      String month;
      String day;

      if (jalali.month < 10) {
        month = "0${jalali.month}";
      } else {
        month = jalali.month.toString();
      }

      if (jalali.day < 10) {
        day = "0${jalali.day}";
      } else {
        day = jalali.day.toString();
      }

      return persian_tools.convertEnToFa("${jalali.year}/$month/$day");
    }
    return "";
  }

  static DateTime toDateTime({
    int? year,
    int? month,
    int? day,
    int hour = 0,
    int minute = 0,
    int second = 0,
    String? shamsiDate,
    int? yearsBefore,
  }) {
    if (shamsiDate == null) {
      return Jalali(year!, month!, day!, hour, minute, second).toDateTime();
    } else {
      shamsiDate = persian_tools.convertFaToEn(shamsiDate);

      final splitDate = (shamsiDate.split("/"));
      final y = int.parse(splitDate[0]);
      final m = int.parse(splitDate[1]);
      final d = int.parse(splitDate[2]);

      if (yearsBefore != null) {
        return toDateTime(
          year: y <= (DateTime.now().toJalali().year - 50) ? y : DateTime.now().toJalali().year - 50,
          month: m <= 12 ? m : 12,
          day: d <= 31 ? d : 30,
        );
      } else {
        return toDateTime(year: y, month: m, day: d);
      }
    }
  }

  static int differenceInDays(DateTime start, DateTime end) {
    final days = end.difference(start).inDays + const Duration(days: 1).inDays;
    return days.isNegative ? 0 : days;
  }

  static int differenceInHours(DateTime start, DateTime end) {
    return end.difference(start).inHours;
  }

  static DateTime? calculateEndDate(DateTime startDate, int months, int pastDay) {
    final gregorian = Gregorian.fromDateTime(startDate);
    final endDate = gregorian.addMonths(months);
    final res = endDate.addDays(-(pastDay + 1));
    return res.toDateTime();
  }
}
