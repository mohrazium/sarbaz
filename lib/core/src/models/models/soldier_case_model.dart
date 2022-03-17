part of models;

@JsonSerializable()
class SoldierCaseModel {
  late final int? id;
  late final String membershipType;
  late final String dispatchField;
  late final String serviceCategory;
  late final String? archiveFileNo;
  late final String? status;
  late final DateTime startDateOfService;
  late final DateTime endDateOfService;
  late final int legalPeriodOfService;
  late final DateTime introductionDate;
  late final int? lastPeriodOfService;
  late final int? amountOfService;
  late final OvertimeModel? overtime;
  late final VacationsModel? vacations;
  late final ServiceDeficitModel? serviceDeficit;
  late final RankModel? rank;
  late final CaseModel? caseNo;

  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  SoldierCaseModel.empty();
  SoldierCaseModel({
    this.id,
    required this.membershipType,
    required this.dispatchField,
    required this.serviceCategory,
    this.archiveFileNo,
    this.status,
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
    this.caseNo,
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierCaseModel.fromJson(Map<String, dynamic> json) =>
      _$SoldierCaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SoldierCaseModelToJson(this);

  SoldierCaseModel copyWith({
    int? id,
    String? membershipType,
    String? dispatchField,
    String? serviceCategory,
    String? archiveFileNo,
    String? status,
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
    CaseModel? caseNo,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SoldierCaseModel(
      id: id ?? this.id,
      membershipType: membershipType ?? this.membershipType,
      dispatchField: dispatchField ?? this.dispatchField,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      archiveFileNo: archiveFileNo ?? this.archiveFileNo,
      status: status ?? this.status,
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
      caseNo: caseNo ?? this.caseNo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
