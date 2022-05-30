import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'daily_vacation_model.dart';
import 'hourly_vacation_model.dart';

part 'vacations_model.g.dart';

@JsonSerializable()
class VacationsModel {
  final int? id;
  final double? eligibleTotal;
  final double eligibleBalance;
  final double eligibleUsed;
  final double? eligibleValuePerMonth;
  final double? sickTotal;
  final double sickBalance;
  final double sickUsed;
  final double? sickValuePerMonth;
  final double? incentiveTotal;
  final double? incentiveBalance;
  final double? incentiveUsed;
  final double? incentiveValueLimit;
  @JsonKey(ignore: true)
  final List<DailyVacationModel>? daily;
  @JsonKey(ignore: true)
  final List<HourlyVacationModel>? hourly;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory VacationsModel.init() => VacationsModel(
        eligibleBalance: 0.0,
        eligibleUsed: 0.0,
        sickBalance: 0.0,
        sickUsed: 0.0,
      );

  VacationsModel({
    this.id,
    this.eligibleTotal,
    required this.eligibleBalance,
    required this.eligibleUsed,
    this.eligibleValuePerMonth,
    this.sickTotal,
    required this.sickBalance,
    required this.sickUsed,
    this.sickValuePerMonth,
    this.incentiveTotal,
    this.incentiveBalance,
    this.incentiveUsed,
    this.incentiveValueLimit,
    this.daily,
    this.hourly,
    this.createdAt,
    this.updatedAt,
  });

  factory VacationsModel.fromJson(Map<String, dynamic> json) => _$VacationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VacationsModelToJson(this);

  VacationsModel copyWith({
    int? id,
    double? eligibleTotal,
    double? eligibleBalance,
    double? eligibleUsed,
    double? eligibleValuePerMonth,
    double? sickTotal,
    double? sickBalance,
    double? sickUsed,
    double? sickValuePerMonth,
    double? incentiveTotal,
    double? incentiveBalance,
    double? incentiveUsed,
    double? incentiveValueLimit,
    List<DailyVacationModel>? daily,
    List<HourlyVacationModel>? hourly,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return VacationsModel(
      id: id ?? this.id,
      eligibleTotal: eligibleTotal ?? this.eligibleTotal,
      eligibleBalance: eligibleBalance ?? this.eligibleBalance,
      eligibleUsed: eligibleUsed ?? this.eligibleUsed,
      eligibleValuePerMonth: eligibleValuePerMonth ?? this.eligibleValuePerMonth,
      sickTotal: sickTotal ?? this.sickTotal,
      sickBalance: sickBalance ?? this.sickBalance,
      sickUsed: sickUsed ?? this.sickUsed,
      sickValuePerMonth: sickValuePerMonth ?? this.sickValuePerMonth,
      incentiveTotal: incentiveTotal ?? this.incentiveTotal,
      incentiveBalance: incentiveBalance ?? this.incentiveBalance,
      incentiveUsed: incentiveUsed ?? this.incentiveUsed,
      incentiveValueLimit: incentiveValueLimit ?? this.incentiveValueLimit,
      daily: daily ?? this.daily,
      hourly: hourly ?? this.hourly,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'VacationsModel(id: $id, eligibleTotal: $eligibleTotal, eligibleBalance: $eligibleBalance, eligibleUsed: $eligibleUsed, eligibleValuePerMonth: $eligibleValuePerMonth, sickTotal: $sickTotal, sickBalance: $sickBalance, sickUsed: $sickUsed, sickValuePerMonth: $sickValuePerMonth, incentiveTotal: $incentiveTotal, incentiveBalance: $incentiveBalance, incentiveUsed: $incentiveUsed, incentiveValueLimit: $incentiveValueLimit, daily: $daily, hourly: $hourly, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VacationsModel &&
        other.id == id &&
        other.eligibleTotal == eligibleTotal &&
        other.eligibleBalance == eligibleBalance &&
        other.eligibleUsed == eligibleUsed &&
        other.eligibleValuePerMonth == eligibleValuePerMonth &&
        other.sickTotal == sickTotal &&
        other.sickBalance == sickBalance &&
        other.sickUsed == sickUsed &&
        other.sickValuePerMonth == sickValuePerMonth &&
        other.incentiveTotal == incentiveTotal &&
        other.incentiveBalance == incentiveBalance &&
        other.incentiveUsed == incentiveUsed &&
        other.incentiveValueLimit == incentiveValueLimit &&
        listEquals(other.daily, daily) &&
        listEquals(other.hourly, hourly) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        eligibleTotal.hashCode ^
        eligibleBalance.hashCode ^
        eligibleUsed.hashCode ^
        eligibleValuePerMonth.hashCode ^
        sickTotal.hashCode ^
        sickBalance.hashCode ^
        sickUsed.hashCode ^
        sickValuePerMonth.hashCode ^
        incentiveTotal.hashCode ^
        incentiveBalance.hashCode ^
        incentiveUsed.hashCode ^
        incentiveValueLimit.hashCode ^
        daily.hashCode ^
        hourly.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
