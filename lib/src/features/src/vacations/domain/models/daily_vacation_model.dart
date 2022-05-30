import 'package:json_annotation/json_annotation.dart';

import 'vacations_model.dart';

part 'daily_vacation_model.g.dart';

@JsonSerializable()
class DailyVacationModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacationType;
  final String? description;
  @JsonKey(ignore: true)
  final VacationsModel? vacations;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory DailyVacationModel.init() =>
      DailyVacationModel(startDate: DateTime.now(), endDate: DateTime.now(), amount: 0, vacationType: "");

  DailyVacationModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.vacationType,
    this.vacations,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory DailyVacationModel.fromJson(Map<String, dynamic> json) => _$DailyVacationModelFromJson(json);

  Map<String, dynamic> toJson() {
    var mappedModel = _$DailyVacationModelToJson(this);
    mappedModel['vacations'] = vacations?.id;
    return mappedModel;
  }

  DailyVacationModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? amount,
    String? vacationType,
    String? description,
    VacationsModel? vacations,
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
      vacations: vacations ?? this.vacations,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'DailyVacationModel(id: $id, startDate: $startDate, endDate: $endDate, amount: $amount, vacationType: $vacationType, description: $description, vacations: $vacations, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
