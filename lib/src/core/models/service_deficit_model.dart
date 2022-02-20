part of models;

@JsonSerializable()
class ServiceDeficitModel {
  final int? id;
  final int? claculatedDeficitAmount;
  final List<ServiceDeficitRecordModel> records;
  ServiceDeficitModel({
    this.id,
    this.claculatedDeficitAmount,
    required this.records,
  });

  factory ServiceDeficitModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDeficitModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDeficitModelToJson(this);

  ServiceDeficitModel copyWith({
    int? id,
    int? claculatedDeficitAmount,
    List<ServiceDeficitRecordModel>? records,
  }) {
    return ServiceDeficitModel(
      id: id ?? this.id,
      claculatedDeficitAmount: claculatedDeficitAmount ?? this.claculatedDeficitAmount,
      records: records ?? this.records,
    );
  }
}
