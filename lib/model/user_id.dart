import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_id.g.dart';

@HiveType(typeId: 9)
@JsonSerializable()
class UserId {
  @HiveField(0)
  @JsonKey(name: 'name')
  final String name;

  @HiveField(1)
  @JsonKey(name: 'value')
  final String? value;

  UserId({required this.name, this.value});

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);

  Map<String, dynamic> toJson() => _$UserIdToJson(this);
}
