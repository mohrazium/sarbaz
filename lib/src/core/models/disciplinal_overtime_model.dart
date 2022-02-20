part of models;

@JsonSerializable()
class DisciplinalOvertimeModel {
  final int? id;
  final int calculatedOvertime;
  final List<ViolationsOvertimeModel>? violationsOvertimes;
  final List<DailyAbsenceOvertimeModel>? dailyAbsenceOvertimes;
  DisciplinalOvertimeModel({
    this.id,
    required this.calculatedOvertime,
    this.violationsOvertimes,
    this.dailyAbsenceOvertimes,
  });
  
  factory DisciplinalOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$DisciplinalOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$DisciplinalOvertimeModelToJson(this);

  DisciplinalOvertimeModel copyWith({
    int? id,
    int? calculatedOvertime,
    List<ViolationsOvertimeModel>? violationsOvertimes,
    List<DailyAbsenceOvertimeModel>? dailyAbsenceOvertimes,
  }) {
    return DisciplinalOvertimeModel(
      id: id ?? this.id,
      calculatedOvertime: calculatedOvertime ?? this.calculatedOvertime,
      violationsOvertimes: violationsOvertimes ?? this.violationsOvertimes,
      dailyAbsenceOvertimes: dailyAbsenceOvertimes ?? this.dailyAbsenceOvertimes,
    );
  }
}
