// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VacationsModel _$VacationsModelFromJson(Map<String, dynamic> json) =>
    VacationsModel(
      id: json['id'] as int?,
      eligibleTotal: (json['eligibleTotal'] as num?)?.toDouble(),
      eligibleBalance: (json['eligibleBalance'] as num).toDouble(),
      eligibleUsed: (json['eligibleUsed'] as num).toDouble(),
      eligibleValuePerMonth:
          (json['eligibleValuePerMonth'] as num?)?.toDouble(),
      sickTotal: (json['sickTotal'] as num?)?.toDouble(),
      sickBalance: (json['sickBalance'] as num).toDouble(),
      sickUsed: (json['sickUsed'] as num).toDouble(),
      sickValuePerMonth: (json['sickValuePerMonth'] as num?)?.toDouble(),
      incentiveTotal: (json['incentiveTotal'] as num?)?.toDouble(),
      incentiveBalance: (json['incentiveBalance'] as num?)?.toDouble(),
      incentiveUsed: (json['incentiveUsed'] as num?)?.toDouble(),
      incentiveValueLimit: (json['incentiveValueLimit'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$VacationsModelToJson(VacationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eligibleTotal': instance.eligibleTotal,
      'eligibleBalance': instance.eligibleBalance,
      'eligibleUsed': instance.eligibleUsed,
      'eligibleValuePerMonth': instance.eligibleValuePerMonth,
      'sickTotal': instance.sickTotal,
      'sickBalance': instance.sickBalance,
      'sickUsed': instance.sickUsed,
      'sickValuePerMonth': instance.sickValuePerMonth,
      'incentiveTotal': instance.incentiveTotal,
      'incentiveBalance': instance.incentiveBalance,
      'incentiveUsed': instance.incentiveUsed,
      'incentiveValueLimit': instance.incentiveValueLimit,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
