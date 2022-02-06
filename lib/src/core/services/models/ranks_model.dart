import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'ranks_model.g.dart';

@JsonSerializable()
class RanksModel {
  final int? id;
  final int rankNumber;
  final String rankName;
  RanksModel({
    this.id,
    required this.rankNumber,
    required this.rankName,
  });

  RanksModel copyWith({
    int? id,
    int? rankNumber,
    String? rankName,
  }) {
    return RanksModel(
      id: id ?? this.id,
      rankNumber: rankNumber ?? this.rankNumber,
      rankName: rankName ?? this.rankName,
    );
  }
  factory RanksModel.fromJson(Map<String, dynamic> json) =>
      _$RanksModelFromJson(json);
  Map<String, dynamic> toJson() => _$RanksModelToJson(this);

  @override
  String toString() => 'RanksModel(id: $id, rankNumber: $rankNumber, rankName: $rankName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RanksModel &&
      other.id == id &&
      other.rankNumber == rankNumber &&
      other.rankName == rankName;
  }

  @override
  int get hashCode => id.hashCode ^ rankNumber.hashCode ^ rankName.hashCode;
}
