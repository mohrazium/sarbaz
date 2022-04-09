part of models;

@JsonSerializable()
class EducationalInfoModel {
  late final int? id;
  late final String levelOfEducation;
  late final String? fieldOfStudy;
  late final String? educationPlace;
  late final double? grade;
  late final String? skills;
  late final bool? permissionToStudy;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;

  factory EducationalInfoModel.init() {
    return EducationalInfoModel(levelOfEducation: "");
  }
  
  EducationalInfoModel({
    this.id,
    required this.levelOfEducation,
    this.fieldOfStudy,
    this.educationPlace,
    this.grade,
    this.skills,
    this.permissionToStudy,
    this.createdAt,
    this.updatedAt,
  });

  factory EducationalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$EducationalInfoModelToJson(this);

  EducationalInfoModel copyWith({
    int? id,
    String? levelOfEducation,
    String? fieldOfStudy,
    String? educationPlace,
    double? grade,
    String? skills,
    bool? permissionToStudy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return EducationalInfoModel(
      id: id ?? this.id,
      levelOfEducation: levelOfEducation ?? this.levelOfEducation,
      fieldOfStudy: fieldOfStudy ?? this.fieldOfStudy,
      educationPlace: educationPlace ?? this.educationPlace,
      grade: grade ?? this.grade,
      skills: skills ?? this.skills,
      permissionToStudy: permissionToStudy ?? this.permissionToStudy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
