part of models;

@JsonSerializable()
class TrainingStatusModel {
  final int? id;
  final DateTime? startDate;
  final String placeName;
  final int? period;
  final String? status;
  final String? type;
  final DateTime? endDate;
      final DateTime? createdAt;
  final DateTime? updatedAt;
  TrainingStatusModel({
    this.id,
    this.startDate,
    required this.placeName,
    this.period,
    this.status,
    this.type,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TrainingStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingStatusModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrainingStatusModelToJson(this);

  TrainingStatusModel copyWith({
    int? id,
    DateTime? startDate,
    String? placeName,
    int? period,
    String? status,
    String? type,
    DateTime? endDate,
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
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
