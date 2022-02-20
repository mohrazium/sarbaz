part of models;

@JsonSerializable()
class ViolationsOvertimeModel {
  final int? id;
  final String violationType;
  final int overtime;
  final int forgivenessOvertime;
  ViolationsOvertimeModel({
    this.id,
    required this.violationType,
    required this.overtime,
    required this.forgivenessOvertime,
  });

  factory ViolationsOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$ViolationsOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$ViolationsOvertimeModelToJson(this);

  ViolationsOvertimeModel copyWith({
    int? id,
    String? violationType,
    int? overtime,
    int? forgivenessOvertime,
  }) {
    return ViolationsOvertimeModel(
      id: id ?? this.id,
      violationType: violationType ?? this.violationType,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
    );
  }
}
