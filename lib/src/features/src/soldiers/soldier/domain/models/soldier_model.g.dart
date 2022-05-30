// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soldier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoldierModel _$SoldierModelFromJson(Map<String, dynamic> json) => SoldierModel(
      id: json['id'] as int?,
      imagePath: json['imagePath'] as String?,
      personnelCode: json['personnelCode'] as String?,
      latestStatus: json['latestStatus'] as String?,
      caseStatus: json['caseStatus'] as String,
      divisionStatus: json['divisionStatus'] as bool,
      isArchived: json['isArchived'] as bool,
      archiveCaseNo: json['archiveCaseNo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SoldierModelToJson(SoldierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'personnelCode': instance.personnelCode,
      'latestStatus': instance.latestStatus,
      'caseStatus': instance.caseStatus,
      'divisionStatus': instance.divisionStatus,
      'isArchived': instance.isArchived,
      'archiveCaseNo': instance.archiveCaseNo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
