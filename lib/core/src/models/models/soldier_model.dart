part of models;

enum CaseStatus { available, archived, trashed }

@JsonSerializable()
class SoldierModel {
  final int? id;
  final String? imagePath;
  final String? personnelCode;
  final String? latestStatus;
  final String caseStatus;
  final bool divisionStatus;
  final bool isArchived;
  final String? archiveCaseNo;
  @JsonKey(ignore: true)
  final CaseNoModel? caseNo;
  @JsonKey(ignore: true)
  final SectionModel? section;
  @JsonKey(ignore: true)
  final TrainingStatusModel? trainingStatus;
  @JsonKey(ignore: true)
  final HealthStatusModel? healthStatus;
  @JsonKey(ignore: true)
  final SoldierCaseModel? soldierCase;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierModel({
    this.id,
    this.imagePath,
    this.personnelCode,
    this.latestStatus,
    required this.caseStatus,
    required this.divisionStatus,
    required this.isArchived,
    this.archiveCaseNo,
    this.caseNo,
    this.section,
    this.trainingStatus,
    this.healthStatus,
    this.soldierCase,
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierModel.init() => SoldierModel(
      caseStatus: "",
      divisionStatus: false,
      isArchived: false,
      caseNo: CaseNoModel.init());

  factory SoldierModel.fromJson(json) => _$SoldierModelFromJson(json);

  Map<String, dynamic> toJson() {
    var mappedModel = _$SoldierModelToJson(this);
    mappedModel['caseNo'] = caseNo!.id;
    return mappedModel;
  }

  SoldierModel copyWith({
    int? id,
    String? imagePath,
    String? personnelCode,
    String? latestStatus,
    String? caseStatus,
    bool? divisionStatus,
    bool? isArchived,
    String? archiveCaseNo,
    CaseNoModel? caseNo,
    SectionModel? section,
    TrainingStatusModel? trainingStatus,
    HealthStatusModel? healthStatus,
    SoldierCaseModel? soldierCase,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SoldierModel(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      personnelCode: personnelCode ?? this.personnelCode,
      latestStatus: latestStatus ?? this.latestStatus,
      caseStatus: caseStatus ?? this.caseStatus,
      divisionStatus: divisionStatus ?? this.divisionStatus,
      isArchived: isArchived ?? this.isArchived,
      archiveCaseNo: archiveCaseNo ?? this.archiveCaseNo,
      caseNo: caseNo ?? this.caseNo,
      section: section ?? this.section,
      trainingStatus: trainingStatus ?? this.trainingStatus,
      healthStatus: healthStatus ?? this.healthStatus,
      soldierCase: soldierCase ?? this.soldierCase,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'SoldierModel(id: $id, imagePath: $imagePath, personnelCode: $personnelCode, latestStatus: $latestStatus, caseStatus: $caseStatus, divisionStatus: $divisionStatus, isArchived: $isArchived, archiveCaseNo: $archiveCaseNo, caseNo: $caseNo, section: $section, trainingStatus: $trainingStatus, healthStatus: $healthStatus, soldierCase: $soldierCase, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SoldierModel &&
        other.id == id &&
        other.imagePath == imagePath &&
        other.personnelCode == personnelCode &&
        other.latestStatus == latestStatus &&
        other.caseStatus == caseStatus &&
        other.divisionStatus == divisionStatus &&
        other.isArchived == isArchived &&
        other.archiveCaseNo == archiveCaseNo &&
        other.caseNo == caseNo &&
        other.section == section &&
        other.trainingStatus == trainingStatus &&
        other.healthStatus == healthStatus &&
        other.soldierCase == soldierCase &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        imagePath.hashCode ^
        personnelCode.hashCode ^
        latestStatus.hashCode ^
        caseStatus.hashCode ^
        divisionStatus.hashCode ^
        isArchived.hashCode ^
        archiveCaseNo.hashCode ^
        caseNo.hashCode ^
        section.hashCode ^
        trainingStatus.hashCode ^
        healthStatus.hashCode ^
        soldierCase.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
