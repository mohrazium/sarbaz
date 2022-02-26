part of models;

@JsonSerializable()
class ContactInfoModel {
  final int? id;
  final String? phoneNumber;
  final String mobileNumber;
  final String? province;
  final String? city;
  final String address;
  final int distance;
  ContactInfoModel({
    this.id,
    this.phoneNumber,
    required this.mobileNumber,
    this.province,
    this.city,
    required this.address,
    required this.distance,
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
    int? distance,
  }) {
    return ContactInfoModel(
      id: id ?? this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      province: province ?? this.province,
      city: city ?? this.city,
      address: address ?? this.address,
      distance: distance ?? this.distance,
    );
  }
}
