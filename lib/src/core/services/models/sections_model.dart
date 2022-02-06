
import 'package:json_annotation/json_annotation.dart';

part 'sections_model.g.dart';

@JsonSerializable()
class SectionsModel {
  final int? id;
  final String locationName;
  final String? sectionName;
  final String? sectionNameAbbr;
  SectionsModel({
    this.id,
    required this.locationName,
    this.sectionName,
    this.sectionNameAbbr,
  });

  SectionsModel copyWith({
    int? id,
    String? locationName,
    String? sectionName,
    String? sectionNameAbbr,
  }) {
    return SectionsModel(
      id: id ?? this.id,
      locationName: locationName ?? this.locationName,
      sectionName: sectionName ?? this.sectionName,
      sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
    );
  }

  factory SectionsModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsModelFromJson(json);
  Map<String, dynamic> toJson() => _$SectionsModelToJson(this);

  @override
  String toString() {
    return 'SectionsModel(id: $id, locationName: $locationName, sectionName: $sectionName, sectionNameAbbr: $sectionNameAbbr)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SectionsModel &&
        other.id == id &&
        other.locationName == locationName &&
        other.sectionName == sectionName &&
        other.sectionNameAbbr == sectionNameAbbr;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        locationName.hashCode ^
        sectionName.hashCode ^
        sectionNameAbbr.hashCode;
  }
}
