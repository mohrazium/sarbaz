// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankModel _$RankModelFromJson(Map<String, dynamic> json) => RankModel(
      id: json['id'] as int?,
      gradeCode: json['gradeCode'] as int,
      name: json['name'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RankModelToJson(RankModel instance) => <String, dynamic>{
      'id': instance.id,
      'gradeCode': instance.gradeCode,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
