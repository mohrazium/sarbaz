part of models;

@JsonSerializable()
class SoldierCaseModel {
  final int? id;
  final String membershipType;
  final DateTime dispatchField;
  final String dispatcher;
  final String serviceCategory;
  final DateTime startDateOfService;
  final DateTime endDateOfService;
  final int legalPeriodOfService;
  final DateTime introductionDate;
  final int? lastPeriodOfService;
  final int? amountOfService;
  final OvertimeModel? overtime;
  final VacationsModel? vacations;
  final ServiceDeficitModel? serviceDeficit;
  final RankModel? rank;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SoldierCaseModel({
    this.id,
    required this.membershipType,
    required this.dispatchField,
    required this.dispatcher,
    required this.serviceCategory,
    required this.startDateOfService,
    required this.endDateOfService,
    required this.legalPeriodOfService,
    required this.introductionDate,
    this.lastPeriodOfService,
    this.amountOfService,
    this.overtime,
    this.vacations,
    this.serviceDeficit,
    this.rank,
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierCaseModel.init() => SoldierCaseModel(
        membershipType: "",
        dispatchField: DateTime.now(),
        dispatcher: "",
        serviceCategory: "",
        startDateOfService: DateTime.now(),
        endDateOfService: DateTime.now(),
        legalPeriodOfService: 0,
        introductionDate: DateTime.now(),
      );

  factory SoldierCaseModel.fromJson(Map<String, dynamic> json) =>
      _$SoldierCaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SoldierCaseModelToJson(this);

  SoldierCaseModel copyWith({
    int? id,
    String? membershipType,
    DateTime? dispatchField,
    String? dispatcher,
    String? serviceCategory,
    DateTime? startDateOfService,
    DateTime? endDateOfService,
    int? legalPeriodOfService,
    DateTime? introductionDate,
    int? lastPeriodOfService,
    int? amountOfService,
    OvertimeModel? overtime,
    VacationsModel? vacations,
    ServiceDeficitModel? serviceDeficit,
    RankModel? rank,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SoldierCaseModel(
      id: id ?? this.id,
      membershipType: membershipType ?? this.membershipType,
      dispatchField: dispatchField ?? this.dispatchField,
      dispatcher: dispatcher ?? this.dispatcher,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      startDateOfService: startDateOfService ?? this.startDateOfService,
      endDateOfService: endDateOfService ?? this.endDateOfService,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      introductionDate: introductionDate ?? this.introductionDate,
      lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
      amountOfService: amountOfService ?? this.amountOfService,
      overtime: overtime ?? this.overtime,
      vacations: vacations ?? this.vacations,
      serviceDeficit: serviceDeficit ?? this.serviceDeficit,
      rank: rank ?? this.rank,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'SoldierCaseModel(id: $id, membershipType: $membershipType, dispatchField: $dispatchField, dispatcher: $dispatcher, serviceCategory: $serviceCategory, startDateOfService: $startDateOfService, endDateOfService: $endDateOfService, legalPeriodOfService: $legalPeriodOfService, introductionDate: $introductionDate, lastPeriodOfService: $lastPeriodOfService, amountOfService: $amountOfService, overtime: $overtime, vacations: $vacations, serviceDeficit: $serviceDeficit, rank: $rank, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SoldierCaseModel &&
      other.id == id &&
      other.membershipType == membershipType &&
      other.dispatchField == dispatchField &&
      other.dispatcher == dispatcher &&
      other.serviceCategory == serviceCategory &&
      other.startDateOfService == startDateOfService &&
      other.endDateOfService == endDateOfService &&
      other.legalPeriodOfService == legalPeriodOfService &&
      other.introductionDate == introductionDate &&
      other.lastPeriodOfService == lastPeriodOfService &&
      other.amountOfService == amountOfService &&
      other.overtime == overtime &&
      other.vacations == vacations &&
      other.serviceDeficit == serviceDeficit &&
      other.rank == rank &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      membershipType.hashCode ^
      dispatchField.hashCode ^
      dispatcher.hashCode ^
      serviceCategory.hashCode ^
      startDateOfService.hashCode ^
      endDateOfService.hashCode ^
      legalPeriodOfService.hashCode ^
      introductionDate.hashCode ^
      lastPeriodOfService.hashCode ^
      amountOfService.hashCode ^
      overtime.hashCode ^
      vacations.hashCode ^
      serviceDeficit.hashCode ^
      rank.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
