part of models;

class RelativeContactsInfoModel {
  late final int? id;
  late final String nameAndFamily;
  late final String phoneNumber;
  late final String? workAddress;
  late final String? homeAddress;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  RelativeContactsInfoModel.empty();
  RelativeContactsInfoModel({
    this.id,
    required this.nameAndFamily,
    required this.phoneNumber,
    this.workAddress,
    this.homeAddress,
    this.createdAt,
    this.updatedAt,
  });

  RelativeContactsInfoModel copyWith({
     int? id,
     String? nameAndFamily,
     String? phoneNumber,
     String? workAddress,
     String? homeAddress,
     DateTime? createdAt,
     DateTime? updatedAt,
  }) {
    return RelativeContactsInfoModel(
      id: id ?? this.id,
      nameAndFamily: nameAndFamily ?? this.nameAndFamily,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      workAddress: workAddress ?? this.workAddress,
      homeAddress: homeAddress ?? this.homeAddress,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
