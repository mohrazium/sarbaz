
import 'package:json_annotation/json_annotation.dart';

part 'daily_vaccations_model.g.dart';

@JsonSerializable()
class DailyVaccationsModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int totalDays;
  final String vacctionType;
  final int? soldierInfoId;
  DailyVaccationsModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.totalDays,
    required this.vacctionType,
    this.soldierInfoId,
  });

  DailyVaccationsModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? totalDays,
    String? vacctionType,
    int? soldierInfoId,
  }) {
    return DailyVaccationsModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      totalDays: totalDays ?? this.totalDays,
      vacctionType: vacctionType ?? this.vacctionType,
      soldierInfoId: soldierInfoId ?? this.soldierInfoId,
    );
  }

   factory DailyVaccationsModel.fromJson(Map<String, dynamic> json) =>
      _$DailyVaccationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$DailyVaccationsModelToJson(this);

  @override
  String toString() {
    return 'DailyVaccationsModel(id: $id, startDate: $startDate, endDate: $endDate, totalDays: $totalDays, vacctionType: $vacctionType, soldierInfoId: $soldierInfoId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DailyVaccationsModel &&
      other.id == id &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.totalDays == totalDays &&
      other.vacctionType == vacctionType &&
      other.soldierInfoId == soldierInfoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      totalDays.hashCode ^
      vacctionType.hashCode ^
      soldierInfoId.hashCode;
  }
}
