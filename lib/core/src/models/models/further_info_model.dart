part of models;

@JsonSerializable()
class FurtherInfoModel {
  final int? id;
  final String maritalState;
  final DateTime? dateOfMarriage;
  final int? numberOfChildren;
  final String? religion;
  final String? sect;
  final int? height;
  final double? weight;
  final String? hairColor;
  final String? eyesColor;
  final String? bloodType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
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
