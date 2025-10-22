import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_timezone.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class UserTimezone {
  @HiveField(0)
  @JsonKey(name: 'offset')
  final String offset;

  @HiveField(1)
  @JsonKey(name: 'description')
  final String description;

  UserTimezone({required this.offset, required this.description});

  factory UserTimezone.fromJson(Map<String, dynamic> json) =>
      _$UserTimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$UserTimezoneToJson(this);
}
