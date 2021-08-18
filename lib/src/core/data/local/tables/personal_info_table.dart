import 'package:floor/floor.dart';

@Entity(tableName: "tbl_persons")
class PersonalInfoTable {
  @primaryKey
  final int id;
  @ColumnInfo(name: "first_name")
  final String firstName;
  @ColumnInfo(name: "last_name")
  final String lastName;
  @ColumnInfo(name: "father_name")
  final String fatherName;
  @ColumnInfo(name: "date_of_birth")
  final String dateOfBirth;
  @ColumnInfo(name: "marital_status")
  final bool maritalStatus;
  @ColumnInfo(name: "number_of_children")
  final int numberOfChildren = 0;
  @ColumnInfo(name: "level_of_education")
  final String levelOfEducation;
  @ColumnInfo(name: "filed_of_study")
  final String filedOfStudy;
  @ColumnInfo(name: "mobile_number")
  final String mobileNumber;
  @ColumnInfo(name: "telephone_number")
  final String telephoneNumber;
  @ColumnInfo(name: "address")
  final String address;
  @ColumnInfo(name: "distance")
  final int distance;

  PersonalInfoTable(
      this.id,
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
      this.distance);
}
