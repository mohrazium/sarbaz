part of models;

@JsonSerializable()
class UnitPropertiesModel {
  late final int? id;
  late final String unitName;
  late final String? unitCode;
  late final String? unitCity;
  late final String? unitType;
  late final List<SectionModel> sections;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  UnitPropertiesModel.empty();
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
