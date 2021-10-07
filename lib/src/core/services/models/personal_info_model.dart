
import 'package:sarbaz/src/core/data/local/tables/personal_info_table.dart';

class PersonalInfoModel {
  final int? id;
  final String nationalIdentity;
  final String? nickName;
  final String firstName;
  final String lastName;
  final String fatherName;
  final String dateOfBirth;
  final String maritalStatus;
  final int numberOfChildren;
  final String levelOfEducation;
  final String? filedOfStudy;
  final String mobileNumber;
  final String telephoneNumber;
  final String address;
  final int distance;
  final String? createTime;
  final String? updateTime;

  PersonalInfoModel({
    this.id,
    required this.nationalIdentity,
    this.nickName,
    required this.firstName,
    required this.lastName,
    required this.fatherName,
    required this.dateOfBirth,
    required this.maritalStatus,
    required this.numberOfChildren,
    required this.levelOfEducation,
    this.filedOfStudy,
    required this.mobileNumber,
    required this.telephoneNumber,
    required this.address,
    required this.distance,
    this.createTime,
    this.updateTime,
  });

  PersonalInfoTable toTable() {
    return PersonalInfoTable(
        nationalIdentity: nationalIdentity,
        firstName: firstName,
        lastName: lastName,
        fatherName: fatherName,
        dateOfBirth: dateOfBirth,
        maritalStatus: maritalStatus,
        levelOfEducation: levelOfEducation,
        filedOfStudy: filedOfStudy,
        mobileNumber: mobileNumber,
        address: address,
        distance: distance);
  }

  static PersonalInfoModel fromTable(PersonalInfoTable table) {
    return new PersonalInfoModel(
        id: table.id,
        nationalIdentity: table.nationalIdentity,
        firstName: table.firstName,
        lastName: table.lastName,
        nickName: table.nickName,
        fatherName: table.fatherName,
        dateOfBirth: table.dateOfBirth,
        maritalStatus: table.maritalStatus,
        numberOfChildren: table.numberOfChildren,
        levelOfEducation: table.levelOfEducation,
        filedOfStudy: table.filedOfStudy,
        mobileNumber: table.mobileNumber,
        telephoneNumber: table.telephoneNumber!,
        address: table.address,
        distance: table.distance);
  }

  @override
  String toString() {
    return 'PersonalInfoModel(id: ${id}, nationalIdentity: $nationalIdentity, nickName: $nickName, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, dateOfBirth: $dateOfBirth, maritalStatus: $maritalStatus, numberOfChildren: $numberOfChildren, levelOfEducation: $levelOfEducation, filedOfStudy: $filedOfStudy, mobileNumber: $mobileNumber, telephoneNumber: $telephoneNumber, address: $address, distance: $distance, createTime: $createTime, updateTime: $updateTime)';
  }
}
