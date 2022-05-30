import 'package:json_annotation/json_annotation.dart';
part 'training_status_model.g.dart';

@JsonSerializable()
class TrainingStatusModel {
  final int? id;
  final DateTime? startDate;
  final String placeName;
  final int? period;
  final String? status;
  final String? type;
  final DateTime? endDate;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory TrainingStatusModel.init() => TrainingStatusModel(placeName: "");

  TrainingStatusModel({
    this.id,
    this.startDate,
    required this.placeName,
    this.period,
    this.status,
    this.type,
    this.endDate,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory TrainingStatusModel.fromJson(Map<String, dynamic> json) => _$TrainingStatusModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrainingStatusModelToJson(this);

  TrainingStatusModel copyWith({
    int? id,
    DateTime? startDate,
    String? placeName,
    int? period,
    String? status,
    String? type,
    DateTime? endDate,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TrainingStatusModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      placeName: placeName ?? this.placeName,
      period: period ?? this.period,
      status: status ?? this.status,
      type: type ?? this.type,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'TrainingStatusModel(id: $id, startDate: $startDate, placeName: $placeName, period: $period, status: $status, type: $type, endDate: $endDate, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TrainingStatusModel &&
        other.id == id &&
        other.startDate == startDate &&
        other.placeName == placeName &&
        other.period == period &&
        other.status == status &&
        other.type == type &&
        other.endDate == endDate &&
        other.description == description &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        startDate.hashCode ^
        placeName.hashCode ^
        period.hashCode ^
        status.hashCode ^
        type.hashCode ^
        endDate.hashCode ^
        description.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
