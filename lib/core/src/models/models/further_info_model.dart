part of models;

@JsonSerializable()
class FurtherInfoModel {
  late final int? id;
  late final String maritalState;
  late final DateTime? dateOfMarriage;
  late final int? numberOfChildren;
  late final String? religion;
  late final String? sect;
  late final int? height;
  late final double? weight;
  late final String? hairColor;
  late final String? eyesColor;
  late final String? bloodType;
  late final DateTime? createdAt;
  late final DateTime? updatedAt;
  FurtherInfoModel.empty();
  FurtherInfoModel(
    this.id,
    this.maritalState,
    this.dateOfMarriage,
    this.numberOfChildren,
    this.religion,
    this.sect,
    this.height,
    this.weight,
    this.hairColor,
    this.eyesColor,
    this.bloodType,
    this.createdAt,
    this.updatedAt,
  );
  factory FurtherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$FurtherInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$FurtherInfoModelToJson(this);

  FurtherInfoModel copyWith({
    int? id,
    String? maritalState,
    DateTime? dateOfMarriage,
    int? numberOfChildren,
    String? religion,
    String? sect,
    int? height,
    double? weight,
    String? hairColor,
    String? eyesColor,
    String? bloodType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return FurtherInfoModel(
      id ?? this.id,
      maritalState ?? this.maritalState,
      dateOfMarriage ?? this.dateOfMarriage,
      numberOfChildren ?? this.numberOfChildren,
      religion ?? this.religion,
      sect ?? this.sect,
      height ?? this.height,
      weight ?? this.weight,
      hairColor ?? this.hairColor,
      eyesColor ?? this.eyesColor,
      bloodType ?? this.bloodType,
      createdAt ?? this.createdAt,
      updatedAt ?? this.updatedAt,
    );
  }
}
