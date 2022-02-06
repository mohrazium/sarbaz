// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_vaccations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyVaccationsModel _$HourlyVaccationsModelFromJson(
        Map<String, dynamic> json) =>
    HourlyVaccationsModel(
      id: json['id'] as int?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      totalTime: json['totalTime'] as int,
      vacctionType: json['vacctionType'] as String,
      soldierInfoId: json['soldierInfoId'] as int,
    );

Map<String, dynamic> _$HourlyVaccationsModelToJson(
        HourlyVaccationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'totalTime': instance.totalTime,
      'vacctionType': instance.vacctionType,
      'soldierInfoId': instance.soldierInfoId,
    };
