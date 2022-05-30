// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_properties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitPropertiesModel _$UnitPropertiesModelFromJson(Map<String, dynamic> json) =>
    UnitPropertiesModel(
      id: json['id'] as int?,
      unitName: json['unitName'] as String,
      unitCode: json['unitCode'] as String?,
      unitCity: json['unitCity'] as String?,
      unitType: json['unitType'] as String?,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UnitPropertiesModelToJson(
        UnitPropertiesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitName': instance.unitName,
      'unitCode': instance.unitCode,
      'unitCity': instance.unitCity,
      'unitType': instance.unitType,
      'sections': instance.sections,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
