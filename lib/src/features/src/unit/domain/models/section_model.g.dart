// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) => SectionModel(
      id: json['id'] as int?,
      locationName: json['locationName'] as String,
      sectionCode: json['sectionCode'] as String?,
      sectionName: json['sectionName'] as String?,
      sectionNameAbbr: json['sectionNameAbbr'] as String?,
      soldiers: (json['soldiers'] as List<dynamic>?)
          ?.map((e) => SoldierModel.fromJson(e))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SectionModelToJson(SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationName': instance.locationName,
      'sectionCode': instance.sectionCode,
      'sectionName': instance.sectionName,
      'sectionNameAbbr': instance.sectionNameAbbr,
      'soldiers': instance.soldiers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
