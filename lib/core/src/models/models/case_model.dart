part of models;

@JsonSerializable()
class CaseModel {
  final int? id;
  final String caseName;
  final String? caseCode;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  
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
