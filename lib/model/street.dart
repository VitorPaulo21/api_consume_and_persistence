import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'street.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class Street {
  @HiveField(0)
  @JsonKey(name: 'number')
  final int number;

  @HiveField(1)
  @JsonKey(name: 'name')
  final String name;

  Street({required this.number, required this.name});

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  Map<String, dynamic> toJson() => _$StreetToJson(this);
}
