part of models;

@JsonSerializable()
class DisciplinaryOvertimeModel {
  late final int? id;
  late final int calculatedOvertime;
  late final List<ViolationsOvertimeModel>? violationsOvertimes;
  late final List<DailyAbsenceOvertimeModel>? dailyAbsenceOvertimes;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  DisciplinaryOvertimeModel.empty();
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
      dailyAbsenceOvertimes:
          dailyAbsenceOvertimes ?? this.dailyAbsenceOvertimes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
