part of models;

@JsonSerializable()
class DailyAbsenceOvertimeModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int absenceDays;
  final bool isVaccum;
  final int? overtime;
  DailyAbsenceOvertimeModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.absenceDays,
    required this.isVaccum,
    this.overtime,
  });
  factory DailyAbsenceOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$DailyAbsenceOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$DailyAbsenceOvertimeModelToJson(this);

  DailyAbsenceOvertimeModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? absenceDays,
    bool? isVaccum,
    int? overtime,
  }) {
    return DailyAbsenceOvertimeModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      absenceDays: absenceDays ?? this.absenceDays,
      isVaccum: isVaccum ?? this.isVaccum,
      overtime: overtime ?? this.overtime,
    );
  }
}
