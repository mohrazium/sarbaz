// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'further_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FurtherInfoModel _$FurtherInfoModelFromJson(Map<String, dynamic> json) =>
    FurtherInfoModel(
      id: json['id'] as int?,
      maritalState: json['maritalState'] as String,
      dateOfMarriage: json['dateOfMarriage'] == null
          ? null
          : DateTime.parse(json['dateOfMarriage'] as String),
      numberOfChildren: json['numberOfChildren'] as int?,
      religion: json['religion'] as String?,
      sect: json['sect'] as String?,
      height: json['height'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      hairColor: json['hairColor'] as String?,
      eyesColor: json['eyesColor'] as String?,
      bloodType: json['bloodType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FurtherInfoModelToJson(FurtherInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maritalState': instance.maritalState,
      'dateOfMarriage': instance.dateOfMarriage?.toIso8601String(),
      'numberOfChildren': instance.numberOfChildren,
      'religion': instance.religion,
      'sect': instance.sect,
      'height': instance.height,
      'weight': instance.weight,
      'hairColor': instance.hairColor,
      'eyesColor': instance.eyesColor,
      'bloodType': instance.bloodType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
