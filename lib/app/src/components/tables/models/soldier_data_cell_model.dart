part of components;

class SoldiersDataCellModel {
  int? id;
  String? caseNo;
  String? personnelCode;
  String? firstName;
  String? lastName;
  String? fatherName;
  String? nationalCode;
  String? mobileNumber;
  String? soldierStatus;
  bool isSelected;
  SoldiersDataCellModel({
    this.id,
    this.caseNo,
    this.personnelCode,
    this.firstName,
    this.lastName,
    this.fatherName,
    this.nationalCode,
    this.mobileNumber,
    this.soldierStatus,
    required this.isSelected,
  });
}
