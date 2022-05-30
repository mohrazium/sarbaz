// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_absence_overtime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyAbsenceOvertimeModel _$DailyAbsenceOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DailyAbsenceOvertimeModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      absenceDays: json['absenceDays'] as int,
      isVacuum: json['isVacuum'] as bool,
      overtime: json['overtime'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DailyAbsenceOvertimeModelToJson(
        DailyAbsenceOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'absenceDays': instance.absenceDays,
      'isVacuum': instance.isVacuum,
      'overtime': instance.overtime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
