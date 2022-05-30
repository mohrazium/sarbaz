// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalInfoModel _$PersonalInfoModelFromJson(Map<String, dynamic> json) =>
    PersonalInfoModel(
      id: json['id'] as int?,
      nationalCode: json['nationalCode'] as String,
      nationalIdentity: json['nationalIdentity'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      fatherName: json['fatherName'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      placeOfBirth: json['placeOfBirth'] as String?,
      placeOfIssue: json['placeOfIssue'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PersonalInfoModelToJson(PersonalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nationalCode': instance.nationalCode,
      'nationalIdentity': instance.nationalIdentity,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fatherName': instance.fatherName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'placeOfBirth': instance.placeOfBirth,
      'placeOfIssue': instance.placeOfIssue,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
