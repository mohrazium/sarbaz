part of models;

@JsonSerializable()
class SectionModel {
  final int? id;
  final String locationName;
  final String? sectionCode;
  final String? sectionName;
  final String? sectionNameAbbr;
  final SoldierModel? soldier;
  final DateTime? createdAt;
  final DateTime? updatedAt;

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
