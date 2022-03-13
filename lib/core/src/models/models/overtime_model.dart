part of models;

@JsonSerializable()
class OvertimeModel {
  late final int? id;
  late final DisciplinaryOvertimeModel? disciplinaryOvertime;
  late final AnnualOvertimeModel? annualOvertime;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  OvertimeModel.empty();
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
