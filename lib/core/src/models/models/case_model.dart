part of models;

@JsonSerializable()
class CaseModel {
  late final int? id;
  late final String? caseName;
  late final String caseCode;
  late final bool isFull;
  late final String? description;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  CaseModel.empty();
  CaseModel({
    this.id,
    this.caseName,
    required this.caseCode,
    this.isFull = false,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory CaseModel.fromJson(Map<String, dynamic> json) =>
      _$CaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$CaseModelToJson(this);

  CaseModel copyWith({
    int? id,
    String? caseName,
    String? caseCode,
    bool? isFull,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CaseModel(
      id: id ?? this.id,
      caseName: caseName ?? this.caseName,
      caseCode: caseCode ?? this.caseCode,
      isFull: isFull ?? this.isFull,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
