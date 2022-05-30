
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

  @override
  String toString() {
    return 'SoldiersDataCellModel(id: $id, caseNo: $caseNo, personnelCode: $personnelCode, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, nationalCode: $nationalCode, mobileNumber: $mobileNumber, soldierStatus: $soldierStatus, isSelected: $isSelected)';
  }
}
