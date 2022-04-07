part of mixins;

mixin DateConverterMixin {
  String toShamsi(DateTime? dateTime) => _DateConverter.toShamsi(dateTime);

  DateTime toDateTime({
    required int year,
    required int month,
    required int day,
    int hour = 0,
    int minute = 0,
    int second = 0,
  }) =>
      _DateConverter.toDateTime(year: year, month: month, day: day);

  DateTime? toDateTimeFromString(String? str) =>
      _DateConverter.toDateTimeFromString(str);
}

class _DateConverter {
  static String toShamsi(DateTime? dateTime) {
    if (dateTime != null) {
      shamsiDate.Jalali jalali = dateTime.toJalali();
      return persianTools
          .convertEnToFa("${jalali.year}/${jalali.month}/${jalali.day}");
    }
    return "";
  }

  static DateTime toDateTime({
    required int year,
    required int month,
    required int day,
    int hour = 0,
    int minute = 0,
    int second = 0,
  }) {
    return Jalali(year, month, day, hour, minute, second).toDateTime();
  }

  static DateTime? toDateTimeFromString(String? str) {
    if (str != null && str.isNotEmpty) {
      str = persianTools.convertFaToEn(str);
      var splitDate = (str.split("/"));
      final y = int.parse(splitDate[0]);
      final m = int.parse(splitDate[1]);
      final d = int.parse(splitDate[2]);
      return toDateTime(
        year: y <= DateTime.now().toJalali().year - 50
            ? y
            : DateTime.now().toJalali().year - 50,
        month: m <= 12 ? m : 12,
        day: d <= 31 ? d : 30,
      );
    } else {
      return null;
    }
  }
}
