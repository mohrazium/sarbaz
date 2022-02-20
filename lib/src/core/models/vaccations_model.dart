part of models;

@JsonSerializable()
class VaccationsModel {
  final int? id;
  final int? amountOfEligibleVaccations;
  final int? amountOfSickVaccations;
  final int? amountOfIncentiveVaccations;
  final int? eligibleVaccationsUsed;
  final int? sickVaccationsUsed;
  final int? incentiveVaccationsUsed;
  final List<DailyVaccationModel>? dailyVaccations;
  final List<HourlyVaccationModel>? hourlyVaccations;
  VaccationsModel({
    this.id,
    this.amountOfEligibleVaccations,
    this.amountOfSickVaccations,
    this.amountOfIncentiveVaccations,
    this.eligibleVaccationsUsed,
    this.sickVaccationsUsed,
    this.incentiveVaccationsUsed,
    this.dailyVaccations,
    this.hourlyVaccations,
  });

   factory VaccationsModel.fromJson(Map<String, dynamic> json) =>
      _$VaccationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VaccationsModelToJson(this);

  VaccationsModel copyWith({
    int? id,
    int? amountOfEligibleVaccations,
    int? amountOfSickVaccations,
    int? amountOfIncentiveVaccations,
    int? eligibleVaccationsUsed,
    int? sickVaccationsUsed,
    int? incentiveVaccationsUsed,
    List<DailyVaccationModel>? dailyVaccations,
    List<HourlyVaccationModel>? hourlyVaccations,
  }) {
    return VaccationsModel(
      id: id ?? this.id,
      amountOfEligibleVaccations: amountOfEligibleVaccations ?? this.amountOfEligibleVaccations,
      amountOfSickVaccations: amountOfSickVaccations ?? this.amountOfSickVaccations,
      amountOfIncentiveVaccations: amountOfIncentiveVaccations ?? this.amountOfIncentiveVaccations,
      eligibleVaccationsUsed: eligibleVaccationsUsed ?? this.eligibleVaccationsUsed,
      sickVaccationsUsed: sickVaccationsUsed ?? this.sickVaccationsUsed,
      incentiveVaccationsUsed: incentiveVaccationsUsed ?? this.incentiveVaccationsUsed,
      dailyVaccations: dailyVaccations ?? this.dailyVaccations,
      hourlyVaccations: hourlyVaccations ?? this.hourlyVaccations,
    );
  }
}
