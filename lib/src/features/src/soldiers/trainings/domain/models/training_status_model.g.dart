// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainingStatusModel _$TrainingStatusModelFromJson(Map<String, dynamic> json) =>
    TrainingStatusModel(
      id: json['id'] as int?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      placeName: json['placeName'] as String,
      period: json['period'] as int?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TrainingStatusModelToJson(
        TrainingStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'placeName': instance.placeName,
      'period': instance.period,
      'status': instance.status,
      'type': instance.type,
      'endDate': instance.endDate?.toIso8601String(),
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
