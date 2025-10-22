import 'package:api_consume_and_persistence/model/user_id.dart';
import 'package:api_consume_and_persistence/model/user_name.dart';
import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dob.dart';
import 'location.dart';
import 'login.dart';
import 'picture.dart';
import 'registered.dart';

part 'random_user.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class RandomUser {
  @HiveField(0)
  @JsonKey(name: 'gender')
  final String gender;

  @HiveField(1)
  @JsonKey(name: 'name')
  final UserName name;

  @HiveField(2)
  @JsonKey(name: 'location')
  final Location location;

  @HiveField(3)
  @JsonKey(name: 'email')
  final String email;

  @HiveField(4)
  @JsonKey(name: 'login')
  final Login login;

  @HiveField(5)
  @JsonKey(name: 'dob')
  final Dob dob;

  @HiveField(6)
  @JsonKey(name: 'registered')
  final Registered registered;

  @HiveField(7)
  @JsonKey(name: 'phone')
  final String phone;

  @HiveField(8)
  @JsonKey(name: 'cell')
  final String cell;

  @HiveField(9)
  @JsonKey(name: 'id')
  final UserId id;

  @HiveField(10)
  @JsonKey(name: 'picture')
  final Picture picture;

  @HiveField(11)
  @JsonKey(name: 'nat')
  final String nat;

  RandomUser({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory RandomUser.fromJson(Map<String, dynamic> json) =>
      _$RandomUserFromJson(json);

  Map<String, dynamic> toJson() => _$RandomUserToJson(this);

  String get uuid => login.uuid;
}
