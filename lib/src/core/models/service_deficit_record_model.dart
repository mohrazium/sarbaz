part of models;

@JsonSerializable()
class ServiceDeficitRecordModel {
  final int? id;
  final String? type;
  final int amount;
  ServiceDeficitRecordModel({
    this.id,
    this.type,
    required this.amount,
  });

  ServiceDeficitRecordModel copyWith({
    int? id,
    String? type,
    int? amount,
  }) {
    return ServiceDeficitRecordModel(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    );
  }

   factory ServiceDeficitRecordModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDeficitRecordModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDeficitRecordModelToJson(this);
}
