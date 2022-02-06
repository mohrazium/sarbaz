
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'hourly_vaccations_model.g.dart';

@JsonSerializable()
class HourlyVaccationsModel {
 final int? id;
  final DateTime startTime;
  final DateTime endTime;
 final int totalTime;
  final String vacctionType;
 final int soldierInfoId;
  HourlyVaccationsModel({
    this.id,
    required this.startTime,
    required this.endTime,
    required this.totalTime,
    required this.vacctionType,
    required this.soldierInfoId,
  });

  HourlyVaccationsModel copyWith({
    int? id,
    DateTime? startTime,
    DateTime? endTime,
    int? totalTime,
    String? vacctionType,
    int? soldierInfoId,
  }) {
    return HourlyVaccationsModel(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      vacctionType: vacctionType ?? this.vacctionType,
      soldierInfoId: soldierInfoId ?? this.soldierInfoId,
    );
  }

 
   factory HourlyVaccationsModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyVaccationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyVaccationsModelToJson(this);

  @override
  String toString() {
    return 'HourlyVaccationsModel(id: $id, startTime: $startTime, endTime: $endTime, totalTime: $totalTime, vacctionType: $vacctionType, soldierInfoId: $soldierInfoId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HourlyVaccationsModel &&
      other.id == id &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.totalTime == totalTime &&
      other.vacctionType == vacctionType &&
      other.soldierInfoId == soldierInfoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      totalTime.hashCode ^
      vacctionType.hashCode ^
      soldierInfoId.hashCode;
  }
}

// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
