// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    ContactInfoModel(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      mobileNumber: json['mobileNumber'] as String,
      province: json['province'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String,
      postalCode: json['postalCode'] as String?,
      distance: json['distance'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ContactInfoModelToJson(ContactInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'mobileNumber': instance.mobileNumber,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'distance': instance.distance,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
