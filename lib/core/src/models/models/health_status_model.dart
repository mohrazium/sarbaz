part of models;

@JsonSerializable()
class HealthStatusModel {
  late final int? id;
  late final bool isHealthy;
  late final String accordingTo;
  late final bool isBGroup;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  HealthStatusModel.empty();
  HealthStatusModel({
    this.id,
    required this.isHealthy,
    required this.accordingTo,
    required this.isBGroup,
    this.createdAt,
    this.updatedAt,
  });

  factory HealthStatusModel.fromJson(Map<String, dynamic> json) =>
      _$HealthStatusModelFromJson(json);
  Map<String, dynamic> toJson() => _$HealthStatusModelToJson(this);

  HealthStatusModel copyWith({
    int? id,
    bool? isHealthy,
    String? accordingTo,
    bool? isBGroup,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return HealthStatusModel(
      id: id ?? this.id,
      isHealthy: isHealthy ?? this.isHealthy,
      accordingTo: accordingTo ?? this.accordingTo,
      isBGroup: isBGroup ?? this.isBGroup,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
