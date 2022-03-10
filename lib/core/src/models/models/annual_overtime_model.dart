part of models;

@JsonSerializable()
class AnnualOvertimeModel {
  final int? id;
  final int overtime;
  final int? forgivenessOvertime;
  final int overtimeBalance;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AnnualOvertimeModel({
    this.id,
    required this.overtime,
    this.forgivenessOvertime,
    required this.overtimeBalance,
    this.createdAt,
    this.updatedAt,
  });
  factory AnnualOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnnualOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$AnnualOvertimeModelToJson(this);

  AnnualOvertimeModel copyWith({
    int? id,
    int? overtime,
    int? forgivenessOvertime,
    int? overtimeBalance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return AnnualOvertimeModel(
      id: id ?? this.id,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      overtimeBalance: overtimeBalance ?? this.overtimeBalance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
