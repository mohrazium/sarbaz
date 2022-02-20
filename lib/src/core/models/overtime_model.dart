part of models;

@JsonSerializable()
class OvertimeModel {
  final int? id;
  final DisciplinalOvertimeModel? disciplinalOvertime;
  final AnnualOvertimeModel? annualOvertime;
  OvertimeModel({
    this.id,
    this.disciplinalOvertime,
    this.annualOvertime,
  });


   factory OvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$OvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$OvertimeModelToJson(this);

  OvertimeModel copyWith({
    int? id,
    DisciplinalOvertimeModel? disciplinalOvertime,
    AnnualOvertimeModel? annualOvertime,
  }) {
    return OvertimeModel(
      id: id ?? this.id,
      disciplinalOvertime: disciplinalOvertime ?? this.disciplinalOvertime,
      annualOvertime: annualOvertime ?? this.annualOvertime,
    );
  }
}
