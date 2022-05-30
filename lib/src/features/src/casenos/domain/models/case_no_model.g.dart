// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_no_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseNoModel _$CaseNoModelFromJson(Map<String, dynamic> json) => CaseNoModel(
      id: json['id'] as int?,
      caseName: json['caseName'] as String?,
      caseCode: json['caseCode'] as String,
      isFull: json['isFull'] as bool? ?? false,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CaseNoModelToJson(CaseNoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseName': instance.caseName,
      'caseCode': instance.caseCode,
      'isFull': instance.isFull,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
