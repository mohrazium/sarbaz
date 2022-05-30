// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annual_overtime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnualOvertimeModel _$AnnualOvertimeModelFromJson(Map<String, dynamic> json) =>
    AnnualOvertimeModel(
      id: json['id'] as int?,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int?,
      overtimeBalance: json['overtimeBalance'] as int,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AnnualOvertimeModelToJson(
        AnnualOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
      'overtimeBalance': instance.overtimeBalance,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
