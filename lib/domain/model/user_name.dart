import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_name.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class UserName {
  @HiveField(0)
  @JsonKey(name: 'title')
  final String title;

  @HiveField(1)
  @JsonKey(name: 'first')
  final String first;

  @HiveField(2)
  @JsonKey(name: 'last')
  final String last;

  UserName({required this.title, required this.first, required this.last});

  factory UserName.fromJson(Map<String, dynamic> json) =>
      _$UserNameFromJson(json);

  Map<String, dynamic> toJson() => _$UserNameToJson(this);
}
