// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'educational_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationalInfoModel _$EducationalInfoModelFromJson(
        Map<String, dynamic> json) =>
    EducationalInfoModel(
      id: json['id'] as int?,
      levelOfEducation: json['levelOfEducation'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      educationPlace: json['educationPlace'] as String?,
      grade: (json['grade'] as num?)?.toDouble(),
      skills: json['skills'] as String?,
      permissionToStudy: json['permissionToStudy'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$EducationalInfoModelToJson(
        EducationalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'levelOfEducation': instance.levelOfEducation,
      'fieldOfStudy': instance.fieldOfStudy,
      'educationPlace': instance.educationPlace,
      'grade': instance.grade,
      'skills': instance.skills,
      'permissionToStudy': instance.permissionToStudy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
