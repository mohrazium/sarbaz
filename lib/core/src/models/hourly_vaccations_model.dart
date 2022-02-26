part of models;

@JsonSerializable()
class HourlyVaccationModel {
  final int? id;
  final DateTime startTime;
  final DateTime endTime;
  final int? totalTime;
  final int? overtimePerMonth;
  HourlyVaccationModel({
    this.id,
    required this.startTime,
    required this.endTime,
    this.totalTime,
    this.overtimePerMonth,
  });

  factory HourlyVaccationModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyVaccationModelFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyVaccationModelToJson(this);

  HourlyVaccationModel copyWith({
    int? id,
    DateTime? startTime,
    DateTime? endTime,
    int? totalTime,
    int? overtimePerMonth,
    String? vacctionType,
  }) {
    return HourlyVaccationModel(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
    );
  }
}

// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
