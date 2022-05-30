// GENERATED CODE - DO NOT MODIFY BY HAND

part of sarbaz.deficits.domain;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationalServiceDeficitRecordModel
    _$OperationalServiceDeficitRecordModelFromJson(Map<String, dynamic> json) =>
        OperationalServiceDeficitRecordModel(
          id: json['id'] as int?,
          startDate: DateTime.parse(json['startDate'] as String),
          endDate: DateTime.parse(json['endDate'] as String),
          durationOfPresence: json['durationOfPresence'] as int,
          deficitAmount: json['deficitAmount'] as int?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$OperationalServiceDeficitRecordModelToJson(
        OperationalServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'durationOfPresence': instance.durationOfPresence,
      'deficitAmount': instance.deficitAmount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ServiceDeficitModel _$ServiceDeficitModelFromJson(Map<String, dynamic> json) =>
    ServiceDeficitModel(
      id: json['id'] as int?,
      calculatedDeficitAmount: json['calculatedDeficitAmount'] as int?,
      records: (json['records'] as List<dynamic>?)
          ?.map((e) =>
              ServiceDeficitRecordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      operationalRecords: (json['operationalRecords'] as List<dynamic>?)
          ?.map((e) => OperationalServiceDeficitRecordModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ServiceDeficitModelToJson(
        ServiceDeficitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calculatedDeficitAmount': instance.calculatedDeficitAmount,
      'records': instance.records,
      'operationalRecords': instance.operationalRecords,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ServiceDeficitRecordModel _$ServiceDeficitRecordModelFromJson(
        Map<String, dynamic> json) =>
    ServiceDeficitRecordModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      amount: json['amount'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ServiceDeficitRecordModelToJson(
        ServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
