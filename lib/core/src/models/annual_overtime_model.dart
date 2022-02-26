part of models;

@JsonSerializable()
class AnnualOvertimeModel {
  final int? id;
  final int overtime;
  final int? forgivenessOvertime;
  final int overtimeBalance;
  AnnualOvertimeModel({
    this.id,
    required this.overtime,
    this.forgivenessOvertime,
    required this.overtimeBalance,
  });
    factory AnnualOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnnualOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$AnnualOvertimeModelToJson(this);

  AnnualOvertimeModel copyWith({
    int? id,
    int? overtime,
    int? forgivenessOvertime,
    int? overtimeBalance,
  }) {
    return AnnualOvertimeModel(
      id: id ?? this.id,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      overtimeBalance: overtimeBalance ?? this.overtimeBalance,
    );
  }
}
