part of models;

@JsonSerializable()
class OperationalServiceDeficitRecordModel {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int durationOfPresence;
  final int? deficitAmount;
      final DateTime? createdAt;
  final DateTime? updatedAt;
  OperationalServiceDeficitRecordModel({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.durationOfPresence,
    this.deficitAmount,
    this.createdAt,
    this.updatedAt,
  });
  factory OperationalServiceDeficitRecordModel.fromJson(
          Map<String, dynamic> json) =>
      _$OperationalServiceDeficitRecordModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$OperationalServiceDeficitRecordModelToJson(this);

  OperationalServiceDeficitRecordModel copyWith({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    int? durationOfPresence,
    int? deficitAmount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return OperationalServiceDeficitRecordModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      durationOfPresence: durationOfPresence ?? this.durationOfPresence,
      deficitAmount: deficitAmount ?? this.deficitAmount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
