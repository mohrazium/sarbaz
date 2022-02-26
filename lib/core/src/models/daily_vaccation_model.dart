part of models;

@JsonSerializable()
class DailyVaccationModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacctionType;
  DailyVaccationModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.vacctionType,
  });

  factory DailyVaccationModel.fromJson(Map<String, dynamic> json) =>
      _$DailyVaccationModelFromJson(json);
  Map<String, dynamic> toJson() => _$DailyVaccationModelToJson(this);

  DailyVaccationModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? amount,
    String? vacctionType,
  }) {
    return DailyVaccationModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      amount: amount ?? this.amount,
      vacctionType: vacctionType ?? this.vacctionType,
    );
  }
}
