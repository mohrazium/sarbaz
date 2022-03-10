part of data;

@DriftAccessor(tables: [HourlyVacationTable])
class HourlyVacationDAO extends DatabaseAccessor<SoldierDatabase>
    with _$HourlyVacationDAOMixin {
  HourlyVacationDAO(SoldierDatabase db) : super(db);
}
// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
