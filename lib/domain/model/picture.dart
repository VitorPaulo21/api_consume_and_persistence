import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';

@HiveType(typeId: 10)
@JsonSerializable()
class Picture {
  @HiveField(0)
  @JsonKey(name: 'large')
  final String large;

  @HiveField(1)
  @JsonKey(name: 'medium')
  final String medium;

  @HiveField(2)
  @JsonKey(name: 'thumbnail')
  final String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}
