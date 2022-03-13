part of models;

@JsonSerializable()
class TrainingStatusModel {
  late final int? id;
  late final DateTime? startDate;
  late final String placeName;
  late final int? period;
  late final String? status;
  late final String? type;
  late final DateTime? endDate;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  TrainingStatusModel.empty();
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
