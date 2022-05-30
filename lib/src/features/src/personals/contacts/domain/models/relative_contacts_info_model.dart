
import 'package:json_annotation/json_annotation.dart';

import 'contact_info_model.dart';
part 'relative_contacts_info_model.g.dart';

@JsonSerializable()
class RelativeContactsInfoModel {
  final int? id;
  final String nameAndFamily;
  final String phoneNumber;
  final String? workAddress;
  final String? homeAddress;
  final String? description;
  @JsonKey(ignore: true)
  final ContactInfoModel? contactInfo;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  RelativeContactsInfoModel({
    this.id,
    required this.nameAndFamily,
    required this.phoneNumber,
    this.workAddress,
    this.homeAddress,
    this.description,
    this.contactInfo,
    this.createdAt,
    this.updatedAt,
  });

  factory RelativeContactsInfoModel.fromJson(Map<String, dynamic> json) {
    return _$RelativeContactsInfoModelFromJson(json);
  }
  
  Map<String, dynamic> toJson() => _$RelativeContactsInfoModelToJson(this);

  factory RelativeContactsInfoModel.init() {
    return RelativeContactsInfoModel(nameAndFamily: "", phoneNumber: "");
  }

  RelativeContactsInfoModel copyWith({
    int? id,
    String? nameAndFamily,
    String? phoneNumber,
    String? workAddress,
    String? homeAddress,
    String? description,
    ContactInfoModel? contactInfo,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return RelativeContactsInfoModel(
      id: id ?? this.id,
      nameAndFamily: nameAndFamily ?? this.nameAndFamily,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      workAddress: workAddress ?? this.workAddress,
      homeAddress: homeAddress ?? this.homeAddress,
      description: description ?? this.description,
      contactInfo: contactInfo ?? this.contactInfo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'RelativeContactsInfoModel(id: $id, nameAndFamily: $nameAndFamily, phoneNumber: $phoneNumber, workAddress: $workAddress, homeAddress: $homeAddress, description: $description, contactInfo: $contactInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RelativeContactsInfoModel &&
      other.id == id &&
      other.nameAndFamily == nameAndFamily &&
      other.phoneNumber == phoneNumber &&
      other.workAddress == workAddress &&
      other.homeAddress == homeAddress &&
      other.description == description &&
      other.contactInfo == contactInfo &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nameAndFamily.hashCode ^
      phoneNumber.hashCode ^
      workAddress.hashCode ^
      homeAddress.hashCode ^
      description.hashCode ^
      contactInfo.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }

}
