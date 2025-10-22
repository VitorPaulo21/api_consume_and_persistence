import 'package:api_consume_and_persistence/domain/model/user_timezone.dart';
import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'coordinates.dart';
import 'street.dart';

part 'location.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class Location {
  @HiveField(0)
  @JsonKey(name: 'street')
  final Street street;

  @HiveField(1)
  @JsonKey(name: 'city')
  final String city;

  @HiveField(2)
  @JsonKey(name: 'state')
  final String state;

  @HiveField(3)
  @JsonKey(name: 'country')
  final String country;

  @HiveField(4)
  @JsonKey(name: 'postcode')
  final dynamic postcode;

  @HiveField(5)
  @JsonKey(name: 'coordinates')
  final Coordinates coordinates;

  @HiveField(6)
  @JsonKey(name: 'timezone')
  final UserTimezone timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
