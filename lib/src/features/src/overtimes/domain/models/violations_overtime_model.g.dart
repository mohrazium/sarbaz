// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violations_overtime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViolationsOvertimeModel _$ViolationsOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    ViolationsOvertimeModel(
      id: json['id'] as int?,
      violationType: json['violationType'] as String,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ViolationsOvertimeModelToJson(
        ViolationsOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'violationType': instance.violationType,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
