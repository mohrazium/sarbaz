// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disciplinary_overtime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisciplinaryOvertimeModel _$DisciplinaryOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DisciplinaryOvertimeModel(
      id: json['id'] as int?,
      calculatedOvertime: json['calculatedOvertime'] as int,
      violationsOvertimes: (json['violationsOvertimes'] as List<dynamic>?)
          ?.map((e) =>
              ViolationsOvertimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dailyAbsenceOvertimes: (json['dailyAbsenceOvertimes'] as List<dynamic>?)
          ?.map((e) =>
              DailyAbsenceOvertimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DisciplinaryOvertimeModelToJson(
        DisciplinaryOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calculatedOvertime': instance.calculatedOvertime,
      'violationsOvertimes': instance.violationsOvertimes,
      'dailyAbsenceOvertimes': instance.dailyAbsenceOvertimes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
