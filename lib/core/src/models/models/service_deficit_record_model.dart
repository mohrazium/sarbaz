part of models;

@JsonSerializable()
class ServiceDeficitRecordModel {
  final int? id;
  final String? type;
  final int amount;
      final DateTime? createdAt;
  final DateTime? updatedAt;
  ServiceDeficitRecordModel({
    this.id,
    this.type,
    required this.amount,
    this.createdAt,
    this.updatedAt,
  });

  ServiceDeficitRecordModel copyWith({
    int? id,
    String? type,
    int? amount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ServiceDeficitRecordModel(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

   factory ServiceDeficitRecordModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDeficitRecordModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDeficitRecordModelToJson(this);
}
