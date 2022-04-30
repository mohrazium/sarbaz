part of models;

@JsonSerializable()
class DailyVacationModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacationType;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory DailyVacationModel.init() => DailyVacationModel(
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      amount: 0,
      vacationType: "");

  DailyVacationModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.vacationType,
    this.description,
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
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DailyVacationModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      amount: amount ?? this.amount,
      vacationType: vacationType ?? this.vacationType,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'DailyVacationModel(id: $id, startDate: $startDate, endDate: $endDate, amount: $amount, vacationType: $vacationType, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DailyVacationModel &&
        other.id == id &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.amount == amount &&
        other.vacationType == vacationType &&
        other.description == description &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        startDate.hashCode ^
        endDate.hashCode ^
        amount.hashCode ^
        vacationType.hashCode ^
        description.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
