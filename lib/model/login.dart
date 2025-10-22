import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class Login {
  @HiveField(0)
  @JsonKey(name: 'uuid')
  final String uuid;

  @HiveField(1)
  @JsonKey(name: 'username')
  final String username;

  @HiveField(2)
  @JsonKey(name: 'password')
  final String password;

  @HiveField(3)
  @JsonKey(name: 'salt')
  final String salt;

  @HiveField(4)
  @JsonKey(name: 'md5')
  final String md5;

  @HiveField(5)
  @JsonKey(name: 'sha1')
  final String sha1;

  @HiveField(6)
  @JsonKey(name: 'sha256')
  final String sha256;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
