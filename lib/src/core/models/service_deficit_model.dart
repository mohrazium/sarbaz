part of models;

@JsonSerializable()
class ServiceDeficitModel {
  final int? id;
  final int? claculatedDeficitAmount;
  final List<ServiceDeficitRecordModel>? records;
  final List<OperationalServiceDeficitRecordModel>? operationalRecords;
  ServiceDeficitModel({
    this.id,
    this.claculatedDeficitAmount,
    required this.records,
    this.operationalRecords,
  });

  factory ServiceDeficitModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDeficitModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDeficitModelToJson(this);

  ServiceDeficitModel copyWith({
    int? id,
    int? claculatedDeficitAmount,
    List<ServiceDeficitRecordModel>? records,
    List<OperationalServiceDeficitRecordModel>? operationalRecords,
  }) {
    return ServiceDeficitModel(
      id: id ?? this.id,
      claculatedDeficitAmount: claculatedDeficitAmount ?? this.claculatedDeficitAmount,
      records: records ?? this.records,
      operationalRecords: operationalRecords ?? this.operationalRecords,
    );
  }
}
