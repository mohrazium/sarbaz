part of models;

@JsonSerializable()
class OvertimeModel {
  final int? id;
  final DisciplinaryOvertimeModel? disciplinaryOvertime;
  final AnnualOvertimeModel? annualOvertime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  OvertimeModel({
    this.id,
    this.disciplinaryOvertime,
    this.annualOvertime,
    this.createdAt,
    this.updatedAt,
  });

  factory OvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$OvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$OvertimeModelToJson(this);

  OvertimeModel copyWith({
    int? id,
    DisciplinaryOvertimeModel? disciplinaryOvertime,
    AnnualOvertimeModel? annualOvertime,
  }) {
    return OvertimeModel(
      id: id ?? this.id,
      disciplinaryOvertime: disciplinaryOvertime ?? this.disciplinaryOvertime,
      annualOvertime: annualOvertime ?? this.annualOvertime,
    );
  }
}
