// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OvertimeModel _$OvertimeModelFromJson(Map<String, dynamic> json) =>
    OvertimeModel(
      id: json['id'] as int?,
      disciplinaryOvertime: json['disciplinaryOvertime'] == null
          ? null
          : DisciplinaryOvertimeModel.fromJson(
              json['disciplinaryOvertime'] as Map<String, dynamic>),
      annualOvertime: json['annualOvertime'] == null
          ? null
          : AnnualOvertimeModel.fromJson(
              json['annualOvertime'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OvertimeModelToJson(OvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplinaryOvertime': instance.disciplinaryOvertime,
      'annualOvertime': instance.annualOvertime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
