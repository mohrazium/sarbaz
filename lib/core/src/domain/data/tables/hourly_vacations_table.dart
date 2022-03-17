part of data;

class HourlyVacationTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();
  IntColumn get totalTime => integer().nullable()();
  IntColumn get overtimePerMonth => integer().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}

// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
