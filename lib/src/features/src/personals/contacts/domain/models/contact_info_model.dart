import 'package:json_annotation/json_annotation.dart';
part 'contact_info_model.g.dart';

@JsonSerializable()
class ContactInfoModel {
  final int? id;
  final String? phoneNumber;
  final String mobileNumber;
  final String? province;
  final String? city;
  final String address;
  final String? postalCode;
  final int distance;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory ContactInfoModel.init() => ContactInfoModel(mobileNumber: "", address: "", distance: 0);

  ContactInfoModel({
    this.id,
    this.phoneNumber,
    required this.mobileNumber,
    this.province,
    this.city,
    required this.address,
    this.postalCode,
    required this.distance,
    this.createdAt,
    this.updatedAt,
  });

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) => _$ContactInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContactInfoModelToJson(this);

  ContactInfoModel copyWith({
    int? id,
    String? phoneNumber,
    String? mobileNumber,
    String? province,
    String? city,
    String? address,
    String? postalCode,
    int? distance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ContactInfoModel(
      id: id ?? this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      province: province ?? this.province,
      city: city ?? this.city,
      address: address ?? this.address,
      postalCode: postalCode ?? this.postalCode,
      distance: distance ?? this.distance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'ContactInfoModel(id: $id, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, province: $province, city: $city, address: $address, postalCode: $postalCode, distance: $distance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactInfoModel &&
        other.id == id &&
        other.phoneNumber == phoneNumber &&
        other.mobileNumber == mobileNumber &&
        other.province == province &&
        other.city == city &&
        other.address == address &&
        other.postalCode == postalCode &&
        other.distance == distance &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        phoneNumber.hashCode ^
        mobileNumber.hashCode ^
        province.hashCode ^
        city.hashCode ^
        address.hashCode ^
        postalCode.hashCode ^
        distance.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
