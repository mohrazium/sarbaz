part of models;

@JsonSerializable()
class SoldierModel {
  final int? id;
  final String? imagePath;
  final String? personnelCode;
  final String? latestStatus;
  final bool? divisionStatus;
  final SectionModel? section;
  final TrainigStatusModel? trainigStatus;
  final HealthStatusModel? healthStatus;
  final SoldierCaseModel? soldierCase;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierModel({
    this.id,
    this.imagePath,
    this.personnelCode,
    this.latestStatus,
    this.divisionStatus,
    this.section,
    this.trainigStatus,
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
    TrainigStatusModel? trainigStatus,
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
      trainigStatus: trainigStatus ?? this.trainigStatus,
      healthStatus: healthStatus ?? this.healthStatus,
      soldierCase: soldierCase ?? this.soldierCase,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
