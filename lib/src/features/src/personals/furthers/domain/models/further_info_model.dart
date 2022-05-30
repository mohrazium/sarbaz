import 'package:json_annotation/json_annotation.dart';
part 'further_info_model.g.dart';

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
  factory FurtherInfoModel.init() {
    return FurtherInfoModel(
      id: null,
      maritalState: "",
      dateOfMarriage: null,
      numberOfChildren: null,
      religion: null,
      sect: null,
      height: null,
      weight: null,
      hairColor: null,
      eyesColor: null,
      bloodType: null,
      createdAt: null,
      updatedAt: null,
    );
  }
  FurtherInfoModel({
    this.id,
    required this.maritalState,
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
  });
  factory FurtherInfoModel.fromJson(Map<String, dynamic> json) => _$FurtherInfoModelFromJson(json);
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
      id: id ?? this.id,
      maritalState: maritalState ?? this.maritalState,
      dateOfMarriage: dateOfMarriage ?? this.dateOfMarriage,
      numberOfChildren: numberOfChildren ?? this.numberOfChildren,
      religion: religion ?? this.religion,
      sect: sect ?? this.sect,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      hairColor: hairColor ?? this.hairColor,
      eyesColor: eyesColor ?? this.eyesColor,
      bloodType: bloodType ?? this.bloodType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'FurtherInfoModel(id: $id, maritalState: $maritalState, dateOfMarriage: $dateOfMarriage, numberOfChildren: $numberOfChildren, religion: $religion, sect: $sect, height: $height, weight: $weight, hairColor: $hairColor, eyesColor: $eyesColor, bloodType: $bloodType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
