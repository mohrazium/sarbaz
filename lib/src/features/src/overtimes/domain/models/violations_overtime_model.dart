

import 'package:json_annotation/json_annotation.dart';
part 'violations_overtime_model.g.dart';

@JsonSerializable()
class ViolationsOvertimeModel {
  late final int? id;
  late final String violationType;
  late final int overtime;
  late final int forgivenessOvertime;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  ViolationsOvertimeModel.empty();
  ViolationsOvertimeModel({
    this.id,
    required this.violationType,
    required this.overtime,
    required this.forgivenessOvertime,
    this.createdAt,
    this.updatedAt,
  });

  factory ViolationsOvertimeModel.fromJson(Map<String, dynamic> json) =>
      _$ViolationsOvertimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$ViolationsOvertimeModelToJson(this);

  ViolationsOvertimeModel copyWith({
    int? id,
    String? violationType,
    int? overtime,
    int? forgivenessOvertime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ViolationsOvertimeModel(
      id: id ?? this.id,
      violationType: violationType ?? this.violationType,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
