part of models;

@JsonSerializable()
class HourlyVacationModel {
  late final int? id;
  late final DateTime startTime;
  late final DateTime endTime;
  late final int? totalTime;
  late final int? overtimePerMonth;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  HourlyVacationModel.empty();
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
