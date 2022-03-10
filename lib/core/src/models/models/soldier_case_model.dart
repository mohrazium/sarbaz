part of models;

@JsonSerializable()
class SoldierCaseModel {
  final int? id;
  final String? fileNo;
  final String? archiveFileNo;
  final String? status;
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
