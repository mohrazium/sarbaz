part of models;

@JsonSerializable()
class UnitPropertiesModel {
  final int? id;
  final String unitName;
  final String? unitCode;
  final String? unitCity;
  final String? unitType;
  final List<SectionModel> sections;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  
  UnitPropertiesModel({
    this.id,
    required this.unitName,
    this.unitCode,
    this.unitCity,
    this.unitType,
    required this.sections,
    this.createdAt,
    this.updatedAt,
  });

  factory UnitPropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$UnitPropertiesModelFromJson(json);
  Map<String, dynamic> toJson() => _$UnitPropertiesModelToJson(this);

  UnitPropertiesModel copyWith({
    int? id,
    String? unitName,
    String? unitCode,
    String? unitCity,
    String? unitType,
    List<SectionModel>? sections,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UnitPropertiesModel(
      id: id ?? this.id,
      unitName: unitName ?? this.unitName,
      unitCode: unitCode ?? this.unitCode,
      unitCity: unitCity ?? this.unitCity,
      unitType: unitType ?? this.unitType,
      sections: sections ?? this.sections,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
