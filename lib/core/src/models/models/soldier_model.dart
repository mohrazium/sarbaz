part of models;

@JsonSerializable()
class SoldierModel {
  late final int? id;
  late final String? imagePath;
  late final String? personnelCode;
  late final String? latestStatus;
  late final bool? divisionStatus;
  late final SectionModel? section;
  late final TrainingStatusModel? trainingStatus;
  late final HealthStatusModel? healthStatus;
  late final SoldierCaseModel? soldierCase;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  SoldierModel.empty();
  SoldierModel({
    this.id,
    this.imagePath,
    this.personnelCode,
    this.latestStatus,
    this.divisionStatus,
    this.section,
    this.trainingStatus,
    this.healthStatus,
    this.soldierCase,
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierModel.fromJson(Map<String, dynamic> json) =>
      _$SoldierModelFromJson(json);
  Map<String, dynamic> toJson() => _$SoldierModelToJson(this);

  SoldierModel copyWith({
    int? id,
    String? imagePath,
    String? personnelCode,
    String? latestStatus,
    bool? divisionStatus,
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
      divisionStatus: divisionStatus ?? this.divisionStatus,
      section: section ?? this.section,
      trainingStatus: trainingStatus ?? this.trainingStatus,
      healthStatus: healthStatus ?? this.healthStatus,
      soldierCase: soldierCase ?? this.soldierCase,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
