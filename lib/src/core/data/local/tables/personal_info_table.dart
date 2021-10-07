import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';

import 'audit.dart';

@Entity(tableName: DbConstants.tblPersonalInfo)
class PersonalInfoTable extends Audit {
  @ColumnInfo(name: DbConstants.nationalIdentity)
  final String nationalIdentity;
  @ColumnInfo(name: DbConstants.nickName)
  final String? nickName;
  @ColumnInfo(name: DbConstants.firstName)
  final String firstName;
  @ColumnInfo(name: DbConstants.lastName)
  final String lastName;
  @ColumnInfo(name: DbConstants.fatherName)
  final String fatherName;
  @ColumnInfo(name: DbConstants.dateOfBirth)
  final String dateOfBirth;
  @ColumnInfo(name: DbConstants.maritalStatus)
  final String maritalStatus;
  @ColumnInfo(name: DbConstants.numberOfChildren)
  final int numberOfChildren = 0;
  @ColumnInfo(name: DbConstants.levelOfEducation)
  final String levelOfEducation;
  @ColumnInfo(name: DbConstants.filedOfStudy)
  final String? filedOfStudy;
  @ColumnInfo(name: DbConstants.mobileNumber)
  final String mobileNumber;
  @ColumnInfo(name: DbConstants.telephoneNumber)
  final String? telephoneNumber;
  @ColumnInfo(name: DbConstants.address)
  final String address;
  @ColumnInfo(name: DbConstants.distance)
  final int distance;

  PersonalInfoTable(
      {int? id,
      String? createTime,
      String? updateTime,
      required this.nationalIdentity,
      this.nickName,
      required this.firstName,
      required this.lastName,
      required this.fatherName,
      required this.dateOfBirth,
      required this.maritalStatus,
      required this.levelOfEducation,
       this.filedOfStudy,
      required this.mobileNumber,
      this.telephoneNumber,
      required this.address,
      required this.distance})
      : super(id: id, updateTime: updateTime, createTime: createTime);
}
