// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soldier_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoldierInfoModel _$SoldierInfoModelFromJson(Map<String, dynamic> json) =>
    SoldierInfoModel(
      id: json['id'] as int?,
      fileNo: json['fileNo'] as String,
      dateOfDispatch: DateTime.parse(json['dateOfDispatch'] as String),
      rankId: json['rankId'] as int?,
      healthState: json['healthState'] as bool,
      bGroup: json['bGroup'] as bool,
      legalPeriodOfService: json['legalPeriodOfService'] as bool,
      overtime: json['overtime'] as int,
      divisionStatus: json['divisionStatus'] as bool,
      sectionId: json['sectionId'] as int,
      personalInfoId: json['personalInfoId'] as int,
    );

Map<String, dynamic> _$SoldierInfoModelToJson(SoldierInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileNo': instance.fileNo,
      'dateOfDispatch': instance.dateOfDispatch.toIso8601String(),
      'rankId': instance.rankId,
      'healthState': instance.healthState,
      'bGroup': instance.bGroup,
      'legalPeriodOfService': instance.legalPeriodOfService,
      'overtime': instance.overtime,
      'divisionStatus': instance.divisionStatus,
      'sectionId': instance.sectionId,
      'personalInfoId': instance.personalInfoId,
    };
