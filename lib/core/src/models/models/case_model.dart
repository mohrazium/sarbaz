part of models;

@JsonSerializable()
class CaseModel {
  late final int? id;
  late final String caseName;
  late final String? caseCode;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  CaseModel.empty();
  CaseModel({
    this.id,
    required this.caseName,
    this.caseCode,
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CaseModel(
      id: id ?? this.id,
      caseName: caseName ?? this.caseName,
      caseCode: caseCode ?? this.caseCode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
