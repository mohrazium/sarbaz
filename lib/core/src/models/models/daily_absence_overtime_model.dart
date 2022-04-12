part of models;

@JsonSerializable()
class DailyAbsenceOvertimeModel {
  late final int? id;
  late final DateTime startDate;
  late final DateTime endDate;
  late final int absenceDays;
  late final bool isVacuum;
  late final int? overtime;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  DailyAbsenceOvertimeModel.empty();
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
    bool? isVacuum,
    int? overtime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DailyAbsenceOvertimeModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      absenceDays: absenceDays ?? this.absenceDays,
      isVacuum: isVacuum ?? this.isVacuum,
      overtime: overtime ?? this.overtime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
