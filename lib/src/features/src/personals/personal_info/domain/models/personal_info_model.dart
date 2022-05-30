import 'package:json_annotation/json_annotation.dart';

import '../../../../soldiers/soldier.dart';
import '../../../contacts/domain.dart';
import '../../../educations/domain.dart';
import '../../../furthers/domain.dart';
part 'personal_info_model.g.dart';

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
  @JsonKey(ignore: true)
  final FurtherInfoModel? furtherInfo;
  @JsonKey(ignore: true)
  final ContactInfoModel? contactInfo;
  @JsonKey(ignore: true)
  final EducationalInfoModel? educationalInfo;
  @JsonKey(ignore: true)
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

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) => _$PersonalInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonalInfoModelToJson(this);

  factory PersonalInfoModel.init() {
    return PersonalInfoModel(nationalCode: "", firstName: "", lastName: "");
  }

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

  @override
  String toString() {
    return 'PersonalInfoModel(id: $id, nationalCode: $nationalCode, nationalIdentity: $nationalIdentity, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, placeOfIssue: $placeOfIssue, furtherInfo: $furtherInfo, contactInfo: $contactInfo, educationalInfo: $educationalInfo, soldier: $soldier, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonalInfoModel &&
        other.id == id &&
        other.nationalCode == nationalCode &&
        other.nationalIdentity == nationalIdentity &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.fatherName == fatherName &&
        other.dateOfBirth == dateOfBirth &&
        other.placeOfBirth == placeOfBirth &&
        other.placeOfIssue == placeOfIssue &&
        other.furtherInfo == furtherInfo &&
        other.contactInfo == contactInfo &&
        other.educationalInfo == educationalInfo &&
        other.soldier == soldier &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nationalCode.hashCode ^
        nationalIdentity.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        fatherName.hashCode ^
        dateOfBirth.hashCode ^
        placeOfBirth.hashCode ^
        placeOfIssue.hashCode ^
        furtherInfo.hashCode ^
        contactInfo.hashCode ^
        educationalInfo.hashCode ^
        soldier.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
