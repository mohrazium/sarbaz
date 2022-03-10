part of models;

@JsonSerializable()
class DailyAbsenceOvertimeModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int absenceDays;
  final bool isVacuum;
  final int? overtime;
    final DateTime? createdAt;
  final DateTime? updatedAt;
  
  DailyAbsenceOvertimeModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.absenceDays,
    required this.isVacuum,
    this.overtime,
    this.createdAt,
    this.updatedAt,
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DailyAbsenceOvertimeModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      absenceDays: absenceDays ?? this.absenceDays,
      isVacuum: isVaccum ?? this.isVacuum,
      overtime: overtime ?? this.overtime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
