part of models;

@JsonSerializable()
class RankModel {
  final int? id;
  final int gradeCode;
  final String name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  RankModel({
    this.id,
    required this.gradeCode,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory RankModel.fromJson(Map<String, dynamic> json) =>
      _$RankModelFromJson(json);
  Map<String, dynamic> toJson() => _$RankModelToJson(this);

  RankModel copyWith({
    int? id,
    int? gradeCode,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return RankModel(
      id: id ?? this.id,
      gradeCode: gradeCode ?? this.gradeCode,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
