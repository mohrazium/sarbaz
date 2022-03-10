part of models;

@JsonSerializable()
class DisciplinaryOvertimeModel {
  final int? id;
  final int calculatedOvertime;
  final List<ViolationsOvertimeModel>? violationsOvertimes;
  final List<DailyAbsenceOvertimeModel>? dailyAbsenceOvertimes;
    final DateTime? createdAt;
  final DateTime? updatedAt;
  DisciplinaryOvertimeModel({
    this.id,
    required this.calculatedOvertime,
    this.violationsOvertimes,
    this.dailyAbsenceOvertimes,
    this.createdAt,
    this.updatedAt,
  });
  
  factory DisciplinaryOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$DisciplinaryOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$DisciplinaryOvertimeModelToJson(this);

  DisciplinaryOvertimeModel copyWith({
    int? id,
    int? calculatedOvertime,
    List<ViolationsOvertimeModel>? violationsOvertimes,
    List<DailyAbsenceOvertimeModel>? dailyAbsenceOvertimes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DisciplinaryOvertimeModel(
      id: id ?? this.id,
      calculatedOvertime: calculatedOvertime ?? this.calculatedOvertime,
      violationsOvertimes: violationsOvertimes ?? this.violationsOvertimes,
      dailyAbsenceOvertimes: dailyAbsenceOvertimes ?? this.dailyAbsenceOvertimes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
