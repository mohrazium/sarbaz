part of models;

@JsonSerializable()
class RankModel {
  final int? id;
  final int gradeCode;
  final String name;

  RankModel({
    this.id,
    required this.gradeCode,
    required this.name,
  });

  factory RankModel.fromJson(Map<String, dynamic> json) =>
      _$RankModelFromJson(json);
  Map<String, dynamic> toJson() => _$RankModelToJson(this);

  RankModel copyWith({
    int? id,
    int? gradeCode,
    String? name,
  }) {
    return RankModel(
      id: id ?? this.id,
      gradeCode: gradeCode ?? this.gradeCode,
      name: name ?? this.name,
    );
  }
}
