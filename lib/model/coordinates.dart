import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class Coordinates {
  @HiveField(0)
  @JsonKey(name: 'latitude')
  final String latitude;

  @HiveField(1)
  @JsonKey(name: 'longitude')
  final String longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}
