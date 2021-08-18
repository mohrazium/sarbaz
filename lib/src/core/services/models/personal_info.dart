import 'package:equatable/equatable.dart';
import 'package:sarbaz/src/core/data/local/tables/personal_info_table.dart';

class PersonalInfoModel implements Equatable {
  final int id;
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

  PersonalInfoModel(this.id, this.firstName, this.lastName, this.fatherName, this.dateOfBirth, this.maritalStatus, this.levelOfEducation, this.filedOfStudy, this.mobileNumber, this.telephoneNumber, this.address, this.distance);

  PersonalInfoTable toTableModel() {
    return PersonalInfoTable(
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
        distance);
  }

  static PersonalInfoModel fromTableModel(PersonalInfoTable table) {
    return PersonalInfoModel(
        table.id,
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


  @override
  String toString() {
    return 'PersonalInfoModel{id: $id, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, dateOfBirth: $dateOfBirth, maritalStatus: $maritalStatus, numberOfChildren: $numberOfChildren, levelOfEducation: $levelOfEducation, filedOfStudy: $filedOfStudy, mobileNumber: $mobileNumber, telephoneNumber: $telephoneNumber, address: $address, distance: $distance}';
  }

  @override
  List<Object?> get props =>
      [
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

}
