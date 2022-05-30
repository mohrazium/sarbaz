// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_vacation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyVacationModel _$DailyVacationModelFromJson(Map<String, dynamic> json) =>
    DailyVacationModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      amount: json['amount'] as int,
      vacationType: json['vacationType'] as String,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DailyVacationModelToJson(DailyVacationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'amount': instance.amount,
      'vacationType': instance.vacationType,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
