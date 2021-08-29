import 'package:flutter/material.dart';
import 'package:jalali_calendar/jalali_calendar.dart' as JalaliCalendar;
import 'package:persian_tools/persian_tools.dart' as PersianTools;

class DatePickerWidget {
  static Future<String> getPicker(BuildContext context) async {
    String? s = "";

   s= await JalaliCalendar.jalaliCalendarPicker(
      context: context,
      initialDatePickerMode: JalaliCalendar.DatePickerMode.year,
      selectedFormat: "yyyy/mm/dd",
      initialTime:
          TimeOfDay.fromDateTime(DateTime.now().add(Duration(days: -7300))),
    );
    return PersianTools.convertEnToFa(s!);
  }
}
