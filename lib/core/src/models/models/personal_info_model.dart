part of models;

@JsonSerializable(anyMap: true)
class PersonalInfoModel {
  late final int? id;
  late final String nationalCode;
  late final String? nationalIdentity;
  late final String firstName;
  late final String lastName;
  late final String? fatherName;
  late final DateTime? dateOfBirth;
  late final String? placeOfBirth;
  late final String? placeOfIssue;
  late final FurtherInfoModel? furtherInfo;
  late final ContactInfoModel? contactInfo;
  late final EducationalInfoModel? educationalInfo;
  late final SoldierModel? soldier;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  PersonalInfoModel.empty();
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
