import 'package:json_annotation/json_annotation.dart';

part 'personal_info_model.g.dart';

@JsonSerializable()
class PersonalInfoModel {
  final int? id;
  final String nationalIdentity;
  final String firstName;
  final String lastName;
  final String? suffixOfLastName;
  final String fatherName;
  final String dateOfBirth;
  final String maritalStatus;
  final int? numberOfChildren;
  final String levelOfEducation;
  final String? filedOfStudy;
  final String? mobileNumber;
  final String? telephoneNumber;
  final String address;
  final int? distance;
  PersonalInfoModel({
    this.id,
    required this.nationalIdentity,
    required this.firstName,
    required this.lastName,
    this.suffixOfLastName,
    required this.fatherName,
    required this.dateOfBirth,
    required this.maritalStatus,
    this.numberOfChildren,
    required this.levelOfEducation,
    this.filedOfStudy,
    this.mobileNumber,
    this.telephoneNumber,
    required this.address,
    this.distance,
  });

  PersonalInfoModel copyWith({
    int? id,
    String? nationalIdentity,
    String? firstName,
    String? lastName,
    String? suffixOfLastName,
    String? fatherName,
    String? dateOfBirth,
    String? maritalStatus,
    int? numberOfChildren,
    String? levelOfEducation,
    String? filedOfStudy,
    String? mobileNumber,
    String? telephoneNumber,
    String? address,
    int? distance,
  }) {
    return PersonalInfoModel(
      id: id ?? this.id,
      nationalIdentity: nationalIdentity ?? this.nationalIdentity,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      suffixOfLastName: suffixOfLastName ?? this.suffixOfLastName,
      fatherName: fatherName ?? this.fatherName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      numberOfChildren: numberOfChildren ?? this.numberOfChildren,
      levelOfEducation: levelOfEducation ?? this.levelOfEducation,
      filedOfStudy: filedOfStudy ?? this.filedOfStudy,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      telephoneNumber: telephoneNumber ?? this.telephoneNumber,
      address: address ?? this.address,
      distance: distance ?? this.distance,
    );
  }

 factory PersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalInfoModelToJson(this);

  @override
  String toString() {
    return 'PersonalInfoModel(id: $id, nationalIdentity: $nationalIdentity, firstName: $firstName, lastName: $lastName, suffixOfLastName: $suffixOfLastName, fatherName: $fatherName, dateOfBirth: $dateOfBirth, maritalStatus: $maritalStatus, numberOfChildren: $numberOfChildren, levelOfEducation: $levelOfEducation, filedOfStudy: $filedOfStudy, mobileNumber: $mobileNumber, telephoneNumber: $telephoneNumber, address: $address, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonalInfoModel &&
        other.id == id &&
        other.nationalIdentity == nationalIdentity &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.suffixOfLastName == suffixOfLastName &&
        other.fatherName == fatherName &&
        other.dateOfBirth == dateOfBirth &&
        other.maritalStatus == maritalStatus &&
        other.numberOfChildren == numberOfChildren &&
        other.levelOfEducation == levelOfEducation &&
        other.filedOfStudy == filedOfStudy &&
        other.mobileNumber == mobileNumber &&
        other.telephoneNumber == telephoneNumber &&
        other.address == address &&
        other.distance == distance;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nationalIdentity.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        suffixOfLastName.hashCode ^
        fatherName.hashCode ^
        dateOfBirth.hashCode ^
        maritalStatus.hashCode ^
        numberOfChildren.hashCode ^
        levelOfEducation.hashCode ^
        filedOfStudy.hashCode ^
        mobileNumber.hashCode ^
        telephoneNumber.hashCode ^
        address.hashCode ^
        distance.hashCode;
  }
}
