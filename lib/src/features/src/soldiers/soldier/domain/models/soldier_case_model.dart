import 'package:json_annotation/json_annotation.dart';

import '../../../../deficits/src/domain/domain.dart';
import '../../../../overtimes/domain.dart';
import '../../../../vacations/domain.dart';
import 'rank_model.dart';

part 'soldier_case_model.g.dart';

@JsonSerializable()
class SoldierCaseModel {
  final int? id;
  final String membershipType;
  final DateTime dispatchDate;
  final String dispatcher;
  final String serviceCategory;
  final DateTime startDateOfService;
  final DateTime endDateOfService;
  final int legalPeriodOfService;
  final DateTime introductionDate;
  final int? lastPeriodOfService;
  final int? amountOfService;
  final String? description;
  @JsonKey(ignore: true)
  final OvertimeModel? overtime;
  @JsonKey(ignore: true)
  final VacationsModel? vacations;
  @JsonKey(ignore: true)
  final ServiceDeficitModel? serviceDeficit;
  @JsonKey(ignore: true)
  final RankModel? rank;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SoldierCaseModel({
    this.id,
    required this.membershipType,
    required this.dispatchDate,
    required this.dispatcher,
    required this.serviceCategory,
    required this.startDateOfService,
    required this.endDateOfService,
    required this.legalPeriodOfService,
    required this.introductionDate,
    this.lastPeriodOfService,
    this.amountOfService,
    this.description,
    this.overtime,
    this.vacations,
    this.serviceDeficit,
    this.rank,
    this.createdAt,
    this.updatedAt,
  });

  factory SoldierCaseModel.init() => SoldierCaseModel(
        membershipType: "",
        dispatchDate: DateTime.now(),
        dispatcher: "",
        serviceCategory: "",
        startDateOfService: DateTime.now(),
        endDateOfService: DateTime.now(),
        legalPeriodOfService: 0,
        introductionDate: DateTime.now(),
      );

  factory SoldierCaseModel.fromJson(Map<String, dynamic> json) => _$SoldierCaseModelFromJson(json);
  Map<String, dynamic> toJson() {
    var mappedModel = _$SoldierCaseModelToJson(this);
    mappedModel['overtime'] = overtime?.id;
    mappedModel['vacations'] = vacations?.id;
    mappedModel['serviceDeficit'] = serviceDeficit?.id;
    mappedModel['rank'] = rank?.id;
    return mappedModel;
  }

  SoldierCaseModel copyWith({
    int? id,
    String? membershipType,
    DateTime? dispatchDate,
    String? dispatcher,
    String? serviceCategory,
    DateTime? startDateOfService,
    DateTime? endDateOfService,
    int? legalPeriodOfService,
    DateTime? introductionDate,
    int? lastPeriodOfService,
    int? amountOfService,
    String? description,
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
      dispatchDate: dispatchDate ?? this.dispatchDate,
      dispatcher: dispatcher ?? this.dispatcher,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      startDateOfService: startDateOfService ?? this.startDateOfService,
      endDateOfService: endDateOfService ?? this.endDateOfService,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      introductionDate: introductionDate ?? this.introductionDate,
      lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
      amountOfService: amountOfService ?? this.amountOfService,
      description: description ?? this.description,
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
    return 'SoldierCaseModel(id: $id, membershipType: $membershipType, dispatchDate: $dispatchDate, dispatcher: $dispatcher, serviceCategory: $serviceCategory, startDateOfService: $startDateOfService, endDateOfService: $endDateOfService, legalPeriodOfService: $legalPeriodOfService, introductionDate: $introductionDate, lastPeriodOfService: $lastPeriodOfService, amountOfService: $amountOfService, description: $description, overtime: $overtime, vacations: $vacations, serviceDeficit: $serviceDeficit, rank: $rank, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SoldierCaseModel &&
        other.id == id &&
        other.membershipType == membershipType &&
        other.dispatchDate == dispatchDate &&
        other.dispatcher == dispatcher &&
        other.serviceCategory == serviceCategory &&
        other.startDateOfService == startDateOfService &&
        other.endDateOfService == endDateOfService &&
        other.legalPeriodOfService == legalPeriodOfService &&
        other.introductionDate == introductionDate &&
        other.lastPeriodOfService == lastPeriodOfService &&
        other.amountOfService == amountOfService &&
        other.description == description &&
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
        dispatchDate.hashCode ^
        dispatcher.hashCode ^
        serviceCategory.hashCode ^
        startDateOfService.hashCode ^
        endDateOfService.hashCode ^
        legalPeriodOfService.hashCode ^
        introductionDate.hashCode ^
        lastPeriodOfService.hashCode ^
        amountOfService.hashCode ^
        description.hashCode ^
        overtime.hashCode ^
        vacations.hashCode ^
        serviceDeficit.hashCode ^
        rank.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
