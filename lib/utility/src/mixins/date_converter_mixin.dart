part of mixins;

mixin DateConverterMixin {
  String toShamsi(DateTime? dateTime) {
    if (dateTime != null) {
      shamsiDate.Jalali jalali = dateTime.toJalali();
      return persianTools
          .convertEnToFa("${jalali.year}/${jalali.month}/${jalali.day}");
    }
    return "";
  }

  DateTime toDateTime({
    required int year,
    required int month,
    required int day,
    int hour = 0,
    int minute = 0,
    int second = 0,
  }) {
    return Jalali(year, month, day, hour, minute, second).toDateTime();
  }
}
