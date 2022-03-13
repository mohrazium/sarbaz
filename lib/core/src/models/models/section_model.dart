part of models;

@JsonSerializable()
class SectionModel {
  late final int? id;
  late final String locationName;
  late final String? sectionCode;
  late final String? sectionName;
  late final String? sectionNameAbbr;
  late final SoldierModel? soldier;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  SectionModel.empty();
  SectionModel({
    this.id,
    required this.locationName,
    this.sectionCode,
    this.sectionName,
    this.sectionNameAbbr,
    this.soldier,
    this.createdAt,
    this.updatedAt,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);
  Map<String, dynamic> toJson() => _$SectionModelToJson(this);

  SectionModel copyWith({
    int? id,
    String? locationName,
    String? sectionCode,
    String? sectionName,
    String? sectionNameAbbr,
    SoldierModel? soldier,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SectionModel(
      id: id ?? this.id,
      locationName: locationName ?? this.locationName,
      sectionCode: sectionCode ?? this.sectionCode,
      sectionName: sectionName ?? this.sectionName,
      sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
      soldier: soldier ?? this.soldier,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
