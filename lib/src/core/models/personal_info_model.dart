part of models;

@JsonSerializable()
class PersonalInfoModel {
  final int? id;
  final String nationalCode;
  final String? nationalIdentity;
  final String firstName;
  final String lastName;
  final String? fatherName;
  final DateTime? dateOfBirth;
  final String? placeOfBirth;
  final String? placeOfIssue;
  final FurtherInfoModel? furtherInfo;
  final ContactInfoModel? contactInfo;
  final EducationalInfoModel? educationalInfo;
  final SoldierModel? soldier;
  final DateTime? createdAt; 
  final DateTime? updatedAt;

  PersonalInfoModel({
    this.id,
    required this.nationalCode,
    this.nationalIdentity,
    required this.firstName,
    required this.lastName,
    this.fatherName,
    this.dateOfBirth,
    this.placeOfBirth,
    this.placeOfIssue,
    this.furtherInfo,
    this.contactInfo,
    this.educationalInfo,
    this.soldier,
    this.createdAt,
    this.updatedAt,
  });

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalInfoModelToJson(this);

  PersonalInfoModel copyWith({
    int? id,
    String? nationalCode,
    String? nationalIdentity,
    String? firstName,
    String? lastName,
    String? fatherName,
    DateTime? dateOfBirth,
    String? placeOfBirth,
    String? placeOfIssue,
    FurtherInfoModel? furtherInfo,
    ContactInfoModel? contactInfo,
    EducationalInfoModel? educationalInfo,
    SoldierModel? soldier,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PersonalInfoModel(
      id: id ?? this.id,
      nationalCode: nationalCode ?? this.nationalCode,
      nationalIdentity: nationalIdentity ?? this.nationalIdentity,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      fatherName: fatherName ?? this.fatherName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      placeOfIssue: placeOfIssue ?? this.placeOfIssue,
      furtherInfo: furtherInfo ?? this.furtherInfo,
      contactInfo: contactInfo ?? this.contactInfo,
      educationalInfo: educationalInfo ?? this.educationalInfo,
      soldier: soldier ?? this.soldier,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
