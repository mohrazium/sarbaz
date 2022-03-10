part of models;

@JsonSerializable()
class HourlyVacationModel {
  final int? id;
  final DateTime startTime;
  final DateTime endTime;
  final int? totalTime;
  final int? overtimePerMonth;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  HourlyVacationModel({
    this.id,
    required this.startTime,
    required this.endTime,
    this.totalTime,
    this.overtimePerMonth,
    this.createdAt,
    this.updatedAt,
  });

  factory HourlyVacationModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyVacationModelFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyVacationModelToJson(this);

  HourlyVacationModel copyWith({
    int? id,
    DateTime? startTime,
    DateTime? endTime,
    int? totalTime,
    int? overtimePerMonth,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return HourlyVacationModel(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
