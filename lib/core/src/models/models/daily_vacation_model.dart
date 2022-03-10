part of models;

@JsonSerializable()
class DailyVacationModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacationType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
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
