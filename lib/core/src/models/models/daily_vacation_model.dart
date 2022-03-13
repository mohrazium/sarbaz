part of models;

@JsonSerializable()
class DailyVacationModel {
  late final int? id;
  late final DateTime startDate;
  late final DateTime endDate;
  late final int amount;
  late final String vacationType;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  DailyVacationModel.empty();
  DailyVacationModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.vacationType,
    this.createdAt,
    this.updatedAt,
  });

  factory DailyVacationModel.fromJson(Map<String, dynamic> json) =>
      _$DailyVacationModelFromJson(json);
  Map<String, dynamic> toJson() => _$DailyVacationModelToJson(this);

  DailyVacationModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? amount,
    String? vacationType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DailyVacationModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      amount: amount ?? this.amount,
      vacationType: vacationType ?? this.vacationType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
