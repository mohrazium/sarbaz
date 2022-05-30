// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relative_contacts_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelativeContactsInfoModel _$RelativeContactsInfoModelFromJson(
        Map<String, dynamic> json) =>
    RelativeContactsInfoModel(
      id: json['id'] as int?,
      nameAndFamily: json['nameAndFamily'] as String,
      phoneNumber: json['phoneNumber'] as String,
      workAddress: json['workAddress'] as String?,
      homeAddress: json['homeAddress'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RelativeContactsInfoModelToJson(
        RelativeContactsInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameAndFamily': instance.nameAndFamily,
      'phoneNumber': instance.phoneNumber,
      'workAddress': instance.workAddress,
      'homeAddress': instance.homeAddress,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
