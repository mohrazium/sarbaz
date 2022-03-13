part of models;

@JsonSerializable()
class AnnualOvertimeModel {
 late final int? id;
 late final int overtime;
 late final int? forgivenessOvertime;
 late final int overtimeBalance;
 late final DateTime? createdAt;
 late final DateTime? updatedAt;
AnnualOvertimeModel.empty();
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
