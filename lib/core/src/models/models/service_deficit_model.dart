part of models;

@JsonSerializable()
class ServiceDeficitModel {
  late final int? id;
  late final int? calculatedDeficitAmount;
  late final List<ServiceDeficitRecordModel>? records;
  late final List<OperationalServiceDeficitRecordModel>? operationalRecords;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  ServiceDeficitModel.empty();
  ServiceDeficitModel({
    this.id,
    this.calculatedDeficitAmount,
    required this.records,
    this.operationalRecords,
    this.createdAt,
    this.updatedAt,
  });

  factory ServiceDeficitModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDeficitModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDeficitModelToJson(this);

  ServiceDeficitModel copyWith({
    int? id,
    int? calculatedDeficitAmount,
    List<ServiceDeficitRecordModel>? records,
    List<OperationalServiceDeficitRecordModel>? operationalRecords,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ServiceDeficitModel(
      id: id ?? this.id,
      calculatedDeficitAmount:
          calculatedDeficitAmount ?? this.calculatedDeficitAmount,
      records: records ?? this.records,
      operationalRecords: operationalRecords ?? this.operationalRecords,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
