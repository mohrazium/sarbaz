part of models;

@JsonSerializable()
class VacationsModel {
  final int? id;
  final int? amountOfEligible;
  final int? amountOfSick;
  final int? amountOfIncentive;
  final int? eligibleUsed;
  final int? sickUsed;
  final int? incentiveUsed;
  final List<DailyVacationModel>? daily;
  final List<HourlyVacationModel>? hourly;
      final DateTime? createdAt;
  final DateTime? updatedAt;
  VacationsModel({
    this.id,
    this.amountOfEligible,
    this.amountOfSick,
    this.amountOfIncentive,
    this.eligibleUsed,
    this.sickUsed,
    this.incentiveUsed,
    this.daily,
    this.hourly,
    this.createdAt,
    this.updatedAt,
  });

   factory VacationsModel.fromJson(Map<String, dynamic> json) =>
      _$VacationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VacationsModelToJson(this);

  VacationsModel copyWith({
    int? id,
    int? amountOfEligible,
    int? amountOfSick,
    int? amountOfIncentive,
    int? eligibleUsed,
    int? sickUsed,
    int? incentiveUsed,
    List<DailyVacationModel>? daily,
    List<HourlyVacationModel>? hourly,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return VacationsModel(
      id: id ?? this.id,
      amountOfEligible: amountOfEligible ?? this.amountOfEligible,
      amountOfSick: amountOfSick ?? this.amountOfSick,
      amountOfIncentive: amountOfIncentive ?? this.amountOfIncentive,
      eligibleUsed: eligibleUsed ?? this.eligibleUsed,
      sickUsed: sickUsed ?? this.sickUsed,
      incentiveUsed: incentiveUsed ?? this.incentiveUsed,
      daily: daily ?? this.daily,
      hourly: hourly ?? this.hourly,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
