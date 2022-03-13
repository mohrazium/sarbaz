part of models;

@JsonSerializable()
class ContactInfoModel {
late final int? id;
late final String? phoneNumber;
late final String mobileNumber;
late final String? province;
late final String? city;
late final String address;
late final String? postalCode;
late final int distance;
late final DateTime? createdAt;
late final DateTime? updatedAt;
ContactInfoModel.empty();
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
 

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);
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
}
