part of models;

@JsonSerializable()
class CaseNoModel {
  final int? id;
  final String? caseName;
  final String caseCode;
  final bool isFull;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory CaseNoModel.init() => CaseNoModel(caseCode: "");

  CaseNoModel({
    this.id,
    this.caseName,
    required this.caseCode,
    this.isFull = false,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory CaseNoModel.fromJson(Map<String, dynamic> json) =>
      _$CaseNoModelFromJson(json);
  Map<String, dynamic> toJson() => _$CaseNoModelToJson(this);

  CaseNoModel copyWith({
    int? id,
    String? caseName,
    String? caseCode,
    bool? isFull,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CaseNoModel(
      id: id ?? this.id,
      caseName: caseName ?? this.caseName,
      caseCode: caseCode ?? this.caseCode,
      isFull: isFull ?? this.isFull,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'CaseNoModel(id: $id, caseName: $caseName, caseCode: $caseCode, isFull: $isFull, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CaseNoModel &&
      other.id == id &&
      other.caseName == caseName &&
      other.caseCode == caseCode &&
      other.isFull == isFull &&
      other.description == description &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      caseName.hashCode ^
      caseCode.hashCode ^
      isFull.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
