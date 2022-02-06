import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'soldier_info_model.g.dart';

@JsonSerializable()
class SoldierInfoModel {
  final int? id;
  final String fileNo;
  final DateTime dateOfDispatch;
  final int? rankId;
  final bool healthState;
  final bool bGroup;
  final bool legalPeriodOfService;
  final int overtime;
  final bool divisionStatus;
  final int sectionId;
  final int personalInfoId;
  SoldierInfoModel({
    this.id,
    required this.fileNo,
    required this.dateOfDispatch,
    this.rankId,
    required this.healthState,
    required this.bGroup,
    required this.legalPeriodOfService,
    required this.overtime,
    required this.divisionStatus,
    required this.sectionId,
    required this.personalInfoId,
  });

  
  SoldierInfoModel copyWith({
    int? id,
    String? fileNo,
    DateTime? dateOfDispatch,
    int? rankId,
    bool? healthState,
    bool? bGroup,
    bool? legalPeriodOfService,
    int? overtime,
    bool? divisionStatus,
    int? sectionId,
    int? personalInfoId,
  }) {
    return SoldierInfoModel(
      id: id ?? this.id,
      fileNo: fileNo ?? this.fileNo,
      dateOfDispatch: dateOfDispatch ?? this.dateOfDispatch,
      rankId: rankId ?? this.rankId,
      healthState: healthState ?? this.healthState,
      bGroup: bGroup ?? this.bGroup,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      overtime: overtime ?? this.overtime,
      divisionStatus: divisionStatus ?? this.divisionStatus,
      sectionId: sectionId ?? this.sectionId,
      personalInfoId: personalInfoId ?? this.personalInfoId,
    );
  }
factory SoldierInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SoldierInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$SoldierInfoModelToJson(this);

  @override
  String toString() {
    return 'SoldierInfoModel(id: $id, fileNo: $fileNo, dateOfDispatch: $dateOfDispatch, rankId: $rankId, healthState: $healthState, bGroup: $bGroup, legalPeriodOfService: $legalPeriodOfService, overtime: $overtime, divisionStatus: $divisionStatus, sectionId: $sectionId, personalInfoId: $personalInfoId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SoldierInfoModel &&
      other.id == id &&
      other.fileNo == fileNo &&
      other.dateOfDispatch == dateOfDispatch &&
      other.rankId == rankId &&
      other.healthState == healthState &&
      other.bGroup == bGroup &&
      other.legalPeriodOfService == legalPeriodOfService &&
      other.overtime == overtime &&
      other.divisionStatus == divisionStatus &&
      other.sectionId == sectionId &&
      other.personalInfoId == personalInfoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      fileNo.hashCode ^
      dateOfDispatch.hashCode ^
      rankId.hashCode ^
      healthState.hashCode ^
      bGroup.hashCode ^
      legalPeriodOfService.hashCode ^
      overtime.hashCode ^
      divisionStatus.hashCode ^
      sectionId.hashCode ^
      personalInfoId.hashCode;
  }
}
