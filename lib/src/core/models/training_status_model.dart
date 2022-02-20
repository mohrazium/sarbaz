part of models;

@JsonSerializable()
class TrainigStatusModel {
  final int? id;
  final DateTime? startDate;
  final String placeName;
  final int? period;
  final String? status;
  final String? type;
  final DateTime? endDate;
  
  TrainigStatusModel({
    this.id,
    this.startDate,
    required this.placeName,
    this.period,
    this.status,
    this.type,
    this.endDate,
  });

  factory TrainigStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TrainigStatusModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrainigStatusModelToJson(this);

  TrainigStatusModel copyWith({
    int? id,
    DateTime? startDate,
    String? placeName,
    int? period,
    String? status,
    String? type,
    DateTime? endDate,
  }) {
    return TrainigStatusModel(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      placeName: placeName ?? this.placeName,
      period: period ?? this.period,
      status: status ?? this.status,
      type: type ?? this.type,
      endDate: endDate ?? this.endDate,
    );
  }
}
