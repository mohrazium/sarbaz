// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionsModel _$SectionsModelFromJson(Map<String, dynamic> json) =>
    SectionsModel(
      id: json['id'] as int?,
      locationName: json['locationName'] as String,
      sectionName: json['sectionName'] as String?,
      sectionNameAbbr: json['sectionNameAbbr'] as String?,
    );

Map<String, dynamic> _$SectionsModelToJson(SectionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationName': instance.locationName,
      'sectionName': instance.sectionName,
      'sectionNameAbbr': instance.sectionNameAbbr,
    };
