// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalInfoModel _$PersonalInfoModelFromJson(Map<String, dynamic> json) =>
    PersonalInfoModel(
      id: json['id'] as int?,
      nationalIdentity: json['nationalIdentity'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      suffixOfLastName: json['suffixOfLastName'] as String?,
      fatherName: json['fatherName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      maritalStatus: json['maritalStatus'] as String,
      numberOfChildren: json['numberOfChildren'] as int?,
      levelOfEducation: json['levelOfEducation'] as String,
      filedOfStudy: json['filedOfStudy'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      telephoneNumber: json['telephoneNumber'] as String?,
      address: json['address'] as String,
      distance: json['distance'] as int?,
    );

Map<String, dynamic> _$PersonalInfoModelToJson(PersonalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nationalIdentity': instance.nationalIdentity,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'suffixOfLastName': instance.suffixOfLastName,
      'fatherName': instance.fatherName,
      'dateOfBirth': instance.dateOfBirth,
      'maritalStatus': instance.maritalStatus,
      'numberOfChildren': instance.numberOfChildren,
      'levelOfEducation': instance.levelOfEducation,
      'filedOfStudy': instance.filedOfStudy,
      'mobileNumber': instance.mobileNumber,
      'telephoneNumber': instance.telephoneNumber,
      'address': instance.address,
      'distance': instance.distance,
    };
