// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthStatusModel _$HealthStatusModelFromJson(Map<String, dynamic> json) =>
    HealthStatusModel(
      id: json['id'] as int?,
      isHealthy: json['isHealthy'] as bool,
      accordingTo: json['accordingTo'] as String,
      isBGroup: json['isBGroup'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HealthStatusModelToJson(HealthStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHealthy': instance.isHealthy,
      'accordingTo': instance.accordingTo,
      'isBGroup': instance.isBGroup,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
