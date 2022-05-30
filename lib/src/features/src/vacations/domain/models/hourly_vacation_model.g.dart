// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_vacation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyVacationModel _$HourlyVacationModelFromJson(Map<String, dynamic> json) =>
    HourlyVacationModel(
      id: json['id'] as int?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      totalTime: json['totalTime'] as int?,
      overtimePerMonth: json['overtimePerMonth'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HourlyVacationModelToJson(
        HourlyVacationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'totalTime': instance.totalTime,
      'overtimePerMonth': instance.overtimePerMonth,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
