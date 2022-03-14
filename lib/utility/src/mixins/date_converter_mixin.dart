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

  DateTime toDateTimeFomString(String str) {
    str = persianTools.convertFaToEn(str);
    var splitDate = (str.split("/"));
    return toDateTime(
        year: int.parse(splitDate[0]),
        month: int.parse(splitDate[1]),
        day: int.parse(splitDate[2]));
  }
}
