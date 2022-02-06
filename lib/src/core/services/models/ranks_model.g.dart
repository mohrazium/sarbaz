// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RanksModel _$RanksModelFromJson(Map<String, dynamic> json) => RanksModel(
      id: json['id'] as int?,
      rankNumber: json['rankNumber'] as int,
      rankName: json['rankName'] as String,
    );

Map<String, dynamic> _$RanksModelToJson(RanksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rankNumber': instance.rankNumber,
      'rankName': instance.rankName,
    };
