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
  final VaccationsModel? vaccations;
  final ServiceDeficitModel? serviceDeficit;
  final RankModel? rank;
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
    this.vaccations,
    this.serviceDeficit,
    this.rank,
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
    VaccationsModel? vaccations,
    ServiceDeficitModel? serviceDeficit,
    RankModel? rank,
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
      vaccations: vaccations ?? this.vaccations,
      serviceDeficit: serviceDeficit ?? this.serviceDeficit,
      rank: rank ?? this.rank,
    );
  }
}
