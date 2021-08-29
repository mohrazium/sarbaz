import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:sarbaz/src/core/data/local/tables/personal_info_table.dart';

class PersonalInfoModel implements Equatable {
  final int id;
  final String nickName;
  final String firstName;
  final String lastName;
  final String fatherName;
  final String dateOfBirth;
  final bool maritalStatus;
  final int numberOfChildren = 0;
  final String levelOfEducation;
  final String filedOfStudy;
  final String mobileNumber;
  final String telephoneNumber;
  final String address;
  final int distance;

  int get getId => this.id;

  String get getNickName => this.nickName;

  String get getFirstName => this.firstName;

  String get getLastName => this.lastName;

  String get getFatherName => this.fatherName;

  String get getDateOfBirth => this.dateOfBirth;

  bool get getMaritalStatus => this.maritalStatus;

  int get getNumberOfChildren => this.numberOfChildren;

  String get getLevelOfEducation => this.levelOfEducation;

  String get getFiledOfStudy => this.filedOfStudy;

  String get getMobileNumber => this.mobileNumber;

  String get getTelephoneNumber => this.telephoneNumber;

  String get getAddress => this.address;

  int get getDistance => this.distance;

  PersonalInfoModel(
    this.id,
    this.nickName,
    this.firstName,
    this.lastName,
    this.fatherName,
    this.dateOfBirth,
    this.maritalStatus,
    this.levelOfEducation,
    this.filedOfStudy,
    this.mobileNumber,
    this.telephoneNumber,
    this.address,
    this.distance,
  );

  factory PersonalInfoModel.fromJson(String source) =>
      PersonalInfoModel.fromMap(json.decode(source));

  factory PersonalInfoModel.fromMap(Map<String, dynamic> map) {
    return PersonalInfoModel(
      map['id'],
      map['nickName'],
      map['firstName'],
      map['lastName'],
      map['fatherName'],
      map['dateOfBirth'],
      map['maritalStatus'],
      map['levelOfEducation'],
      map['filedOfStudy'],
      map['mobileNumber'],
      map['telephoneNumber'],
      map['address'],
      map['distance'],
    );
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nickName.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        fatherName.hashCode ^
        dateOfBirth.hashCode ^
        maritalStatus.hashCode ^
        levelOfEducation.hashCode ^
        filedOfStudy.hashCode ^
        mobileNumber.hashCode ^
        telephoneNumber.hashCode ^
        address.hashCode ^
        distance.hashCode;
  }

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        fatherName,
        dateOfBirth,
        maritalStatus,
        levelOfEducation,
        filedOfStudy,
        mobileNumber,
        telephoneNumber,
        address,
        distance,
      ];

  @override
  bool? get stringify => true;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonalInfoModel &&
        other.id == id &&
        other.nickName == nickName &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.fatherName == fatherName &&
        other.dateOfBirth == dateOfBirth &&
        other.maritalStatus == maritalStatus &&
        other.levelOfEducation == levelOfEducation &&
        other.filedOfStudy == filedOfStudy &&
        other.mobileNumber == mobileNumber &&
        other.telephoneNumber == telephoneNumber &&
        other.address == address &&
        other.distance == distance;
  }

  PersonalInfoModel copyWith({
    int? id,
    String? nickName,
    String? firstName,
    String? lastName,
    String? fatherName,
    String? dateOfBirth,
    bool? maritalStatus,
    String? levelOfEducation,
    String? filedOfStudy,
    String? mobileNumber,
    String? telephoneNumber,
    String? address,
    int? distance,
  }) {
    return PersonalInfoModel(
      id ?? this.id,
      nickName ?? this.nickName,
      firstName ?? this.firstName,
      lastName ?? this.lastName,
      fatherName ?? this.fatherName,
      dateOfBirth ?? this.dateOfBirth,
      maritalStatus ?? this.maritalStatus,
      levelOfEducation ?? this.levelOfEducation,
      filedOfStudy ?? this.filedOfStudy,
      mobileNumber ?? this.mobileNumber,
      telephoneNumber ?? this.telephoneNumber,
      address ?? this.address,
      distance ?? this.distance,
    );
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nickName': nickName,
      'firstName': firstName,
      'lastName': lastName,
      'fatherName': fatherName,
      'dateOfBirth': dateOfBirth,
      'maritalStatus': maritalStatus,
      'levelOfEducation': levelOfEducation,
      'filedOfStudy': filedOfStudy,
      'mobileNumber': mobileNumber,
      'telephoneNumber': telephoneNumber,
      'address': address,
      'distance': distance,
    };
  }

  @override
  String toString() {
    return 'PersonalInfoModel(id: $id, nickName: $nickName, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, dateOfBirth: $dateOfBirth, maritalStatus: $maritalStatus, levelOfEducation: $levelOfEducation, filedOfStudy: $filedOfStudy, mobileNumber: $mobileNumber, telephoneNumber: $telephoneNumber, address: $address, distance: $distance)';
  }

  PersonalInfoTable toTable() {
    return PersonalInfoTable(
        id,
        nickName,
        firstName,
        lastName,
        fatherName,
        dateOfBirth,
        maritalStatus,
        levelOfEducation,
        filedOfStudy,
        mobileNumber,
        telephoneNumber,
        address,
        distance);
  }

  static PersonalInfoModel fromTable(PersonalInfoTable table) {
    return PersonalInfoModel(
        table.id,
        table.nickName,
        table.firstName,
        table.lastName,
        table.fatherName,
        table.dateOfBirth,
        table.maritalStatus,
        table.levelOfEducation,
        table.filedOfStudy,
        table.mobileNumber,
        table.telephoneNumber,
        table.address,
        table.distance);
  }
}
