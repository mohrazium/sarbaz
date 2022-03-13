part of models;

@JsonSerializable()
class SoldierCaseModel {
  late final int? id;
  late final String? fileNo;
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
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  SoldierCaseModel.empty();
  SoldierCaseModel({
    this.id,
    this.fileNo,
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
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierCaseModel.fromJson(Map<String, dynamic> json) =>
      _$SoldierCaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SoldierCaseModelToJson(this);

  SoldierCaseModel copyWith({
    int? id,
    String? fileNo,
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SoldierCaseModel(
      id: id ?? this.id,
      fileNo: fileNo ?? this.fileNo,
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
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
