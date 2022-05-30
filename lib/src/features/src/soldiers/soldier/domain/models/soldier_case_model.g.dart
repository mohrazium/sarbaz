// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soldier_case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoldierCaseModel _$SoldierCaseModelFromJson(Map<String, dynamic> json) =>
    SoldierCaseModel(
      id: json['id'] as int?,
      membershipType: json['membershipType'] as String,
      dispatchDate: DateTime.parse(json['dispatchDate'] as String),
      dispatcher: json['dispatcher'] as String,
      serviceCategory: json['serviceCategory'] as String,
      startDateOfService: DateTime.parse(json['startDateOfService'] as String),
      endDateOfService: DateTime.parse(json['endDateOfService'] as String),
      legalPeriodOfService: json['legalPeriodOfService'] as int,
      introductionDate: DateTime.parse(json['introductionDate'] as String),
      lastPeriodOfService: json['lastPeriodOfService'] as int?,
      amountOfService: json['amountOfService'] as int?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SoldierCaseModelToJson(SoldierCaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membershipType': instance.membershipType,
      'dispatchDate': instance.dispatchDate.toIso8601String(),
      'dispatcher': instance.dispatcher,
      'serviceCategory': instance.serviceCategory,
      'startDateOfService': instance.startDateOfService.toIso8601String(),
      'endDateOfService': instance.endDateOfService.toIso8601String(),
      'legalPeriodOfService': instance.legalPeriodOfService,
      'introductionDate': instance.introductionDate.toIso8601String(),
      'lastPeriodOfService': instance.lastPeriodOfService,
      'amountOfService': instance.amountOfService,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
