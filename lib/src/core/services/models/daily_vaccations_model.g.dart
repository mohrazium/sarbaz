// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_vaccations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyVaccationsModel _$DailyVaccationsModelFromJson(
        Map<String, dynamic> json) =>
    DailyVaccationsModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      totalDays: json['totalDays'] as int,
      vacctionType: json['vacctionType'] as String,
      soldierInfoId: json['soldierInfoId'] as int?,
    );

Map<String, dynamic> _$DailyVaccationsModelToJson(
        DailyVaccationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'totalDays': instance.totalDays,
      'vacctionType': instance.vacctionType,
      'soldierInfoId': instance.soldierInfoId,
    };
